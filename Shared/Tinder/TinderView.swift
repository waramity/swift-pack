//
//  TinderView.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI


extension AnyTransition {
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom))
        )
    }
    
    static var leadingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .leading).combined(with: .move(edge: .bottom))
        )
    }
}


struct TinderView: View {
    
    @State private var removalTransition = AnyTransition.trailingBottom
    
    private let dragThreshold: CGFloat = 80.0
    
    enum DragState {
        case inactive
        case pressing
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive, .pressing:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }
        
        var isDragging: Bool {
            switch self {
            case .dragging:
                return true
            case .pressing, .inactive:
                return false
            }
        }
        
        var isPressing: Bool {
            switch self {
            case .pressing, .dragging:
                return true
            case .inactive:
                return false
            }
        }
    }
    
    @GestureState private var dragState = DragState.inactive
    
    
    @State private var lastIndex = 1
    
    @State var cardViews: [TinderCardView] = {
        
        var views = [TinderCardView]()
        
        for index in 0..<2 {
            views.append(TinderCardView(title: tinder_profiles[index].title, image: tinder_profiles[index].image))
        }
        
        return views
    }()
    
    var body: some View {
        VStack {
            TinderTopBarMenu()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                        .overlay(
                            ZStack {
                                Image(systemName: "x.circle")
                                    .foregroundColor(.red)
                                    .font(.system(size: 100))
                                    .opacity(self.dragState.translation.width < -self.dragThreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0)
                                
                                Image(systemName: "heart.circle")
                                    .foregroundColor(.green)
                                    .font(.system(size: 100))
                                    .opacity(self.dragState.translation.width > self.dragThreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0)
                            }
                        )
                    
                    
                        .offset(x: self.isTopCard(cardView: cardView) ? self.dragState.translation.width : 0, y: self.isTopCard(cardView: cardView) ? self.dragState.translation.height : 0)
                        .scaleEffect(self.dragState.isDragging && self.isTopCard(cardView: cardView) ? 0.95 : 1.0)
                        .rotationEffect(Angle(degrees: self.isTopCard(cardView: cardView) ? Double(self.dragState.translation.width / 10) : 0))
                        .animation(.interpolatingSpring(stiffness: 180, damping: 100))
                        .transition(self.removalTransition)
                        .gesture(LongPressGesture(minimumDuration: 0.01)
                            .sequenced(before: DragGesture())
                            .updating(self.$dragState, body: { (value, state, transaction) in
                                switch value {
                                case .first(true):
                                    state = .pressing
                                case .second(true, let drag):
                                    state = .dragging(translation: drag?.translation ?? .zero)
                                default:
                                    break
                                }
                            })
                                .onChanged({ (value) in
                                    guard case .second(true, let drag?) = value else {
                                        return
                                    }
                                    if drag.translation.width < -self.dragThreshold {
                                        self.removalTransition = .leadingBottom
                                    }
                                    
                                    if drag.translation.width > self.dragThreshold {
                                        self.removalTransition = .trailingBottom
                                    }
                                })
                                 
                                    .onEnded({ (value) in
                                        guard case .second(true, let drag?) = value else {
                                            return
                                        }
                                        if drag.translation.width < -self.dragThreshold || drag.translation.width > self.dragThreshold {
                                            self.moveCard()
                                        }
                                    })
                        )
                }
            }
            
            Spacer(minLength: 20)
            
            TinderBottomBarMenu()
                .opacity(dragState.isDragging ? 0.0 : 1.0)
                .animation(.default)
        }
    }
    
    private func isTopCard(cardView: TinderCardView) -> Bool {
         guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {
             return false
         }
         return index == 0
     }
     
     private func moveCard() {
         cardViews.removeFirst()
         
         self.lastIndex += 1
         let profile = tinder_profiles[lastIndex % tinder_profiles.count]
         
         let newCardView = TinderCardView(title: profile.title, image: profile.image)
         
         cardViews.append(newCardView)
     }
}

struct TinderView_Previews: PreviewProvider {
    static var previews: some View {
        TinderView()
    }
}
