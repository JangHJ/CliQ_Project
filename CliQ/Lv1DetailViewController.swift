//
//  Lv1DetailViewController.swift
//  CliQ
//
//  Created by 홍승현 on 2020/05/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Lv1DetailViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet var lv1ScrollView: UIScrollView!
    @IBOutlet var lv1PageControl: UIPageControl!
    

    
    var lv1Label = ""
    var lv1Index = 0
    let lv1TextList = [
     ["젖꼭지라고도 불리며, 수컷에서는 흔적적이지만 \n암컷의 성체에서는 잘 발달되어 있다.\n유두 주위의 갈색의 둘러싸고 있는 부분을 유륜이라고 \n하며 유두는 양쪽 유륜의 정중앙에 위치해 있다.\n 여성의 유두는 약 10mm 정도로 돌출되어 있고,\n임신과 수유로 유두 크기가 증가하며 \n특히 임신 때 유두가 진하게 착색된다.\n","유두에서 흰색의 액체가 분비되는 경우 \n호르몬 불균형으로 인한 분비일 가능성이 많고,\n 맑은 물이나 갈색을 띄면 유방 내부의 병변을 \n의심해 볼 수 있다.\n", "출처 : 두산백과, 서울아산병원 인체정보\n"],
     ["사람의 골반 부위와 다리 사이, 항문 주위에 분포하는\n 털이다. 사춘기 전에 존재하던 솜털이 억센 털로 변하게 \n되어 눈에 띄게 자라 난다.\n 대개 눈썹과 비슷한 색깔이며 사람마다 다양하고, \n성기를 외부 충격으로부터 보호하는 역할을 한다.\n털이 자라나는 위치는 성별에 따라 차이가 있으며 \n전체적으로 개인차가 크다.\n", "출처 : 서울대학교병원 신체기관정보\n"],
     [ "소변과 정액을 배설하는 요도를 감싸고 있는 \n남성의 생식기관으로, 원통형의 긴 기둥과 \n확장된 말단부인 귀두로 구성되어 있다.\n발생적으로는 여성 외생식기의 음핵에 해당하며 \n구조적으로도 유사하다.\n 주된 기능은 발기를 통한 정자의 방출과\n 소변을 배출하는 것으로, 발기는 성적 흥분이 \n일어나면 조직에 동맥으로부터 온 혈액이 가득\n 채워짐에 따라 압력이 증가하여 나타나는 현상이다.\n", "출처 : 두산백과, 동물학백과, \n서울대학교병원 신체기관정보\n"],
     ["의학적 용어로는 '자궁'으로, 아들 자:子를 아이를 \n대표하는 보통명사로 사용했으며 '아이가 자라는 집'\n이라는 뜻이다. \n사전적 의미는 이러하지만 아들을 의미하는 한자로 인해 남아 선호 사상이 있다는 비판을 받고 있다. \n언어에 반영된 성 고정관념은 개인의 무의식과 통념의 \n기반이 되어 의식하지 않은 상황에 성차별과 고정관념을 강화하게 된다. \n이젠 자궁이 아닌 성중립적 대안언어로 \n아들:子 대신 세포:胞를 사용한 '포궁'이라고 말해야 한다.", "출처 :루나컵 '[월경_이야기] 자궁? 포궁? 어떤게 맞는 거지?' 포스트 참고\n"],
     ["자위는 스스로 自(자) 자에 위로할 慰(위) 자를 쓰는, \n자신의 마음을 스스로 위안한다는 뜻으로,\n수음(手淫)을 다르게 이르는 말이다. \n손이나 다른 물건으로 자신의 성기를 자극하여 \n성적(性的) 쾌감을 얻는 행위이다.\n", "여성의 음핵 자위\n : 대음순, 소음순, 음핵(클리토리스) 순서대로 여성기의 겉부분을 자극하는 방식. \n음핵 자극을 할 때, 오일이나 로션 등의 윤활액을 사용하면 더욱 부드럽고 안전하게 감각을 느낄 수 있다. \n성기나 음핵은 절대로 위아래로 자극시키지 않고, \n좌우로 천천히 왕복하며 만지는 것이 좋다.\n빠른 자극보다는 부드러운 자극을, 강한 압박보다는 \n돌려주는 유연한 자극이 쾌감을 높이고 올바르게 하는\n 방법이다.\n", "출처 : '우선순위성교육'/저자: 이충민\n"],
     ["성교시 피임이나 성병예방의 목적으로 \n남성의 음경에 씌워 사용하는 고무제품\n\n사용하는 과정에서 찢어지는 경우도 있으니 \n사용 후 물을 채워 새는지 확인하는 것이 좋다.\n일반형 콘돔은 성인용품으로 분류되어 있지 않아서 \n청소년도 구매할 수 있다.\n", "사용법\n1. 포장지를 조심히 까서 콘돔을 꺼낸다. \n2. 콘돔 끝부분을 비틀어 공기를 빼낸다. \n3. 콘돔을 발기한 음경에 씌운다. \n4. 사용한 콘돔을 벗겨낸다. \n5. 사용한 콘돔을 쓰레기통에 버린다. \n\n구매처\n 약국, 편의점, 대형마트, 할인매장, 성인용품점 등\n","출처 : 스무 살 전에 알아야 할 이야기\n저자: 앤 마를레네 헤닝, 티나 브레머 올제브스키\n"]
     ]
    
    // Level1TableView에서 변수를 받아오기 위한 함수
    func receiveLabel(_ name: String){
        lv1Label = name
    }
    @objc func backList(sender: UIBarButtonItem) {//홈으로 이동
             let ViewControllerList = self.storyboard?.instantiateViewController(withIdentifier: "lv1table")
               self.navigationController?.pushViewController(ViewControllerList!, animated: true)

              //self.navigationController?.popViewController(animated: true)
          }
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        super.viewDidLoad()
        self.view.bringSubviewToFront(lv1ScrollView)
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Pnavi_Back"),
                                                            style: UIBarButtonItem.Style.plain
        ,
                                                            target: self, action: #selector(backList(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        leftBarButtonItem.tintColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem

        if lv1Label == "유두" {
            lv1Index = 0
        }
        else if lv1Label == "음모" {
            lv1Index = 1
        }
        else if lv1Label == "음경" {
            lv1Index = 2
        }
        else if lv1Label == "포궁" {
            lv1Index = 3
        }
        else if lv1Label == "자위" {
            lv1Index = 4
        }
        else {
            lv1Index = 5
        }
        
        let lv1_name = lv1Label
        let lv1_text = lv1TextList[lv1Index]

        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)
        // Do any additional setup after loading the view.
        lv1ScrollView.delegate = self
        
        if lv1_text.count == 1 {
            let lv1slides:[InfoView]=createSlides1(q_name: lv1_name, q_text: lv1_text)

            setupSlideScrollView(slides: lv1slides)
            lv1PageControl.numberOfPages=lv1slides.count
            lv1PageControl.currentPage=0
            }
        else if lv1_text.count == 2 {
            let lv1slides:[InfoView]=createSlides2(q_name: lv1_name, q_text: lv1_text)

            setupSlideScrollView(slides: lv1slides)
            lv1PageControl.numberOfPages=lv1slides.count
            lv1PageControl.currentPage=0
                }
        else if lv1_text.count == 3 {
            let lv1slides:[InfoView]=createSlides3(q_name: lv1_name, q_text: lv1_text)

            setupSlideScrollView(slides: lv1slides)
            lv1PageControl.numberOfPages=lv1slides.count
            lv1PageControl.currentPage=0
        }
    }
                
        func createSlides1(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
            
            let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?[0] as! InfoView
            slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            slide1.infoViewTitle.text=q_name
            slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide1.infoViewLabel.numberOfLines = 14
            slide1.infoViewLabel.text=q_text[0] as? String

            
            
           return [slide1]
           
        }
        
        func createSlides2(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
            
            let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
            slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            slide1.infoViewTitle.text=q_name
            slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide1.infoViewLabel.numberOfLines = 14
            slide1.infoViewLabel.text=q_text[0] as? String
            
            let slide2: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
            slide2.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            slide2.infoViewTitle.text=q_name
            slide2.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide2.infoViewLabel.numberOfLines = 14
            slide2.infoViewLabel.text=q_text[1] as? String
            let attributedString = NSMutableAttributedString(string:slide2.infoViewLabel.text!)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1), range:NSMakeRange(0, attributedString.length))
            slide2.infoViewLabel.attributedText = attributedString
            return [slide1, slide2]
           
        }
        
        func createSlides3(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
            
            let slide1: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
            slide1.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            
            slide1.infoViewTitle.text=q_name
            slide1.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide1.infoViewLabel.numberOfLines = 14
            slide1.infoViewLabel.text=q_text[0] as? String
            
            

            let slide2: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
            slide2.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            slide2.infoViewTitle.text=q_name
            slide2.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide2.infoViewLabel.numberOfLines = 14
            slide2.infoViewLabel.text=q_text[1] as? String
            
            let slide3: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
            slide3.infoViewImage.image=UIImage(named:"card_Info@1x.png")
            slide3.infoViewTitle.text=q_name
            slide3.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
            slide3.infoViewLabel.numberOfLines = 14
            slide3.infoViewLabel.text=q_text[2] as? String
            let attributedString2 = NSMutableAttributedString(string:slide3.infoViewLabel.text!)
            attributedString2.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1), range:NSMakeRange(0, attributedString2.length))
            slide3.infoViewLabel.attributedText = attributedString2
           return [slide1, slide2, slide3]
           
        }
        
        func setupSlideScrollView(slides : [InfoView]) {//슬라이드 스크롤뷰 설정함수, 페이지컨트롤 넘기는 동작 인식 함수
            lv1ScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
            lv1ScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count
                ), height: view.frame.height)
            lv1ScrollView.isPagingEnabled = true
            
            for i in 0 ..< slides.count {
                slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
                self.lv1ScrollView.addSubview(slides[i])
            }
        }
        func scrollViewDidScroll(_ scrollView: UIScrollView) {//페이지 컨트롤 관련, 세로 스크롤 막는 함수
            let pageIndex=round(scrollView.contentOffset.x/view.frame.width)
            lv1PageControl.currentPage=Int(pageIndex)
            if scrollView.contentOffset.y>0 || scrollView.contentOffset.y<0{
                scrollView.contentOffset.y=0
            }
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


