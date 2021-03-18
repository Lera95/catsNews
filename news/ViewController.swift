//
//  ViewController.swift
//  news
//
//  Created by Valeriia Shcherbakova on 05.03.2021.
//
import UIKit

class ViewController: UIViewController {
  
  var tableView: UITableView = UITableView()
  private var tableData = [
    NewsObject(nameOfSource: "Cat love", image: UIImage(named: "im1"), title: "Cat killed by hunting dogs and thrown over fence", text: "A cat owner has been left in shock after hounds from a hunting group killed her pet.Carly Jose's rescue tortoiseshell, Mini, was killed outside her home in west Cornwall on Saturday by dogs being exercised, and the body was then thrown over a fence by a member of the hunt.Ms Jose said she was offered money but no amount can bring my baby back.The Western Hunt said it had contacted Ms Jose to apologise unreservedly for the distress and informed police.Ms Jose, 39, said she let Mini, who she had owned since November 2016 and thought to be about 14 years old, out in what she said was a safe street.After the mauling, the cat's body was seen being thrown over the fence at the side of her home, in Madron, near Penzance, by a neighbour who videoed the scene.", shortText: "A cat owner has been left in shock after hounds from a hunting group killed her pet.Carly Jose's rescue tortoiseshell, Mini.", avatar: UIImage(named: "im1"), postDate:"2021-01-10" , like: "8"),
    NewsObject(nameOfSource: "Cat life",image: UIImage(named: "im1"), title:"Thai navy rescue four cats from burning ship", text:  "A group of Thai sailors has taken in four cats after rescuing them from a burning ship.The navy sailors had been sent to inspect the sinking ship when they spotted the trapped felines and decided to enact a daring rescue.Safely back on shore, the sailors got to know their new friends.", shortText: "A group of Thai sailors has taken in four cats after rescuing them from a burning ship", avatar: UIImage(named: "im3"), postDate:"2021-02-10" , like: "10"),
    NewsObject(nameOfSource: "Daily Cat life", image: UIImage(named: "im3"), title:"Cat-astrophe averted for train-surfing puss", text:  "The human crew had already been evacuated, but the navy soon discovered a few forgotten members when they were sent to check the site for oil spills.A sailor swam out to the capsized boat, before putting the cats on his back to take them to safety.Reportedly, the felines suffered no injuries and are healthy.They are now being cared for by their rescuers at their command post, said Reuters news agency.", shortText: "The human crew had already been evacuated, but the navy soon discovered a few forgotten members when they were sent to check the site for oil spills.", avatar: UIImage(named: "im3"), postDate:"2021-03-06" , like: "8"),
    NewsObject(nameOfSource: "Cats of Instagrame",image: UIImage(named: "im4"), title: "Missing cat rescued from half-way down chimney", text: "The mischievous moggy, called Fluffy, fell down the flue after climbing on to the roof of a house in New Ferry, Wirral on Sunday.Firefighters could not see the cat from either end of the chimney so decided to knock a brick out of a wall inside the property.Fluffy's owner completed the dramatic rescue by enticing him out of the hole.The adventurous feline had been missing for five days before he was spotted on the roof of the house in Grove Square.But when a neighbour used a ladder to try to rescue him from the roof, Fluffy fell down the chimney, said an RSPCA inspector.", shortText: "The mischievous moggy, called Fluffy, fell down the flue after climbing on to the roof of a house in New Ferry", avatar: UIImage(named: "im4"), postDate:"2021-03-08" , like: "9"),
    NewsObject(nameOfSource: "Times with cat", image: nil, title: "Cat-astrophe averted for train-surfing puss", text: "The tabby was seen on an Avanti West Coast train at London Euston, about half an hour before it was due to leave for Manchester at 21:00 GMT on Tuesday.Passengers were transferred to a replacement train as station staff coaxed the cat from the Pendolino, which travels at speeds up to 125mph.It took two and a half hours for the cat to move from its perilous perch.The stand-off came to an end after a bin was pulled up beside the carriage, giving the moggy its own special disembarkation platform", shortText:"The tabby was seen on an Avanti West Coast train at London Euston", avatar: UIImage(named: "im5"), postDate:"2021-03-15" , like: "4"),
  NewsObject(nameOfSource: "Cat Kitty",image: UIImage(named: "im5"), title: "Evicted farmer's plea to rehome feral cats", text:  "A farmer facing eviction has received dozens of offers to rehome 30 feral cats after a Facebook post attracted huge interest.Graham Garmston, 57, has been a tenant on a farm in Myddle, near Shrewsbury, Shropshire since he was born.In March, Mr Garmston was given 12 months notice by Shropshire Council of their plans to evict him.He asked a cat rehoming charity for help with the 30 cats that have formed a colony on the farm.Shropshire Street Cats said thousands had seen the post with many offering to take in the felines.Jane Jones, from the group, said: I think it is nearly 150,000 [views] so far... so let us hope that translates into some good accommodation for the cats.", shortText:    "A farmer facing eviction has received dozens of offers to rehome 30 feral cats after a Facebook post attracted huge interest", avatar: UIImage(named: "im5"), postDate:"2021-03-17" , like: "3"),
  NewsObject(nameOfSource: "7 Lifes",image: UIImage(named: "im6"), title: "Blind kittens 'recovering well' after operation", text: "Two blind kitten brothers rescued from a builder's yard are recovering well after operations, the RSPCA has said.The cats, who have been named Gabriel and Arthur, were about 14 weeks old when they were discovered in Peterlee in December.It is believed they were part of a feral colony ravaged by cat flu, causing Gabriel to lose both eyes and Arthur one.An earlier RSPCA surgery fund appeal raised more than £1,000 in 24 hours.During the operation to stitch up their eye lids to prevent irritation and infection, it was discovered Arthur's remaining eye was prone to being damaged so it was removed as well.", shortText: "Two blind kitten brothers rescued from a builder's yard are recovering well after operations, the RSPCA has said.", avatar: UIImage(named: "im6"), postDate:"2021-03-20" , like: "3"),
    NewsObject(nameOfSource: "C-Cats",image: UIImage(named: "im7"), title: "Eleven cat deaths linked to 'antifreeze' poisoning", text: "An animal charity is investigating the possibility of antifreeze poisoning after 11 cats died in the same area.The RSPCA said it was trying to find out if the incidents, in Kessingland in Suffolk, were accidental or deliberate.Pet owner Andy Pollard said he had been left devastated when three of his cats were put down after ingesting a toxic substance.He said he had been alerted to eight other cat deaths locally.Mr Pollard, who lives in the Francis Road area, said his six-year-old called Felix became ill on 10 December when he would not eat and appeared lethargic.He was taken to the vets where blood tests indicated he could have ingested antifreeze, the RSPCA said.", shortText: "An animal charity is investigating the possibility of antifreeze poisoning after 11 cats died in the same area.", avatar: UIImage(named: "im7"), postDate:"2021-03-21" , like: "6")]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      setupSubviews()
      tableView.frame = view.frame
      tableView.delegate = self
      tableView.dataSource = self
      tableView.register(FirstCell.self, forCellReuseIdentifier: FirstCell.reuseIdentifier)
      tableView.register(SecondCell.self, forCellReuseIdentifier: SecondCell.reuseIdentifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    var cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: FirstCell.reuseIdentifier, for: indexPath)
    (cell as! FirstCell).setData(with: tableData[indexPath.row])
  
       if indexPath.row % 2 == 0 {
           return cell
       }
       else if indexPath.row % 2 != 0 {
        cell = tableView.dequeueReusableCell(withIdentifier: SecondCell.reuseIdentifier, for: indexPath)
        (cell as! SecondCell).setData(with: tableData[indexPath.row])
           return cell
       }
    return cell
   }
  
  private func setupSubviews() {
    view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9568627451, blue: 0.9647058824, alpha: 1)
    
    tableView.add(to: view).do {
      $0.contentMode = .scaleToFill
    }
  }
}
