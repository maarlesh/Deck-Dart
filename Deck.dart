import 'dart:core';
class Card{
  //Two things needed for a card
  //1. Rank - Int/String
  //2. Category - String
  String suit;
  String rank;
  Card({required this.suit, required this.rank});
  toString(){
    return '$rank $suit';
  }
}
class Deck{
  //Collection of cards
  List<Card> cards = [];
  Deck(){
    var ranks = ['Ace','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King'];
    var suits = ['Spade','Clover','Heart','Diamond'];
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(
          suit:suit,
          rank:rank
        );
        this.cards.add(card);
      }
    }
  }
  printCards(){

  }
  toString(){
    //whenever print is called that particular objects toString() will be called
    return this.cards.toString();
  }
  shuffle(){
    cards.shuffle();
  }
  cardWithSuit(String suit){
    return this.cards.where((x) => x.suit == suit);
  }
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards =cards.sublist(handSize); //optional second arguement as end of list
    return hand;
  }
  removeCard(String suit, String rank){
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}
void main(){
  var deck = new Deck();
  print(deck);
  // deck.shuffle();
  print(deck.deal(20));
  print(deck);
}