//
//  Lv2DetailViewController.swift
//  CliQ
//
//  Created by 홍승현 on 2020/05/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Lv2DetailViewController: UIViewController, UIScrollViewDelegate  {

    @IBOutlet var lv2ScrollView: UIScrollView!
    @IBOutlet var lv2PageControl: UIPageControl!
    
    var lv2Label = ""
    var lv2Index = 0
    let lv2TextList = [
        ["인간을 생물학적 차이로 구분되는 것을 \n성, 즉 섹스(Sex)라고 부른다. \n반면에, 사회문화적 차이로 구분되는 것을 \n성별, 젠더(Gender)라고 한다. \n섹스는 여성, 남성, 간성으로 이루어져있다.\n 젠더는 시대에 따른 성역할, 본인의 가치관에 의해\n 정해진다. 여기서 성역할이란 성별에 따라 적절하다고 \n기대되는 또는 규정된 행위와 문화적 기대치이다. \n세계적으로 젠더로 성을 구분하는 추세이지만, \n인간을 구분하는 방식에 있어서 어떤 방식이 \n옳은 것인지에 대해서는 논란이 있다.\n", " 출처 : 청소년동반자보수교육 청소년과 sexuality\n"],
        ["음핵은 클리토리스라고도 불린다. \n약 8000개의 신경 말단을 가진 장기로서, \n몸에서 쾌락만을 위해 존재하는 유일한 기관이다. \n음핵의 자극만으로도 오르가즘에 도달하는데, \n클리토리스의 크기와 성감은 무관하다.\n 쾌락만을 위한 기관이기에,\n 대부분의 여성들이 음핵의 자극으로 자위를 시작한다.\n", "출처 : 서울대학교병원 신체기관 정보\n"],
        ["생리, 월경, 달거리라고도 불린다. \n정혈은 자궁내막이 호르몬의 분비 주기에 반응하여 \n저절로 탈락하여 배출되는 현상이다. \n정혈은 숨기거나 부끄러워해야 하는 일이 아닌\n 자연스러운 몸의 현상이다.\n","정혈은 약 한달(28일) 주기를 가지며 3~7일 동안 약 20~200mL(최대 약 65ml의 야쿠르트 병 3개 정도의 양)정도의 양을 출혈한다. \n또한, 여성은 평생 동안 약 300~400회의 월경을 한다. 정혈은 PMS, 정혈통을 동반하기도 하는데, \nPMS란 PreMenstrual Syndrome의 약자인\n정혈전 증후군으로 정혈 시작 1주 전에 신체적, 정서적, 행동적 증상이 반복적, 주기적으로 발생하여 정혈 시작 전이나 그 직후에 소실되는 것을 말한다.\n", "출처 : 서울대학교병원 의학정보\n"],
        ["완경은 ‘폐경’이라고 불리며, \n여성에서 난소의 기능이 쇠퇴하여 정상적인 월경이 \n중지되는 현상 또는 시점이다.\n보통 ‘폐경’이라고도 하는데, 이는 폐경기 여성에게 \n우울감을 증대시킬 수 있는 단어로 폐경보다는 \n‘완경’이라고 표현하는 추세이다.\n","가임기에서 폐경기로 이행되는 시기를 \n갱년기라고 일컫는데, 갱년기 및 완경기의 증상으로는 \n안면 홍조, 비뇨 생식기계 증상, 성욕감퇴 및 무기력증, \n정신 및 인지기능 장애, 골다공증, 관절통과 같은 \n근 골격계 증상, 자궁 탈출증이 있다.\n", "출처 : 대학산부인과학회\n"],
        [" 남성과 여성이 성적 흥분기에 이어 \n최절정(climax)감을 느끼는 상태로, 여성의 오르가즘에 이르는 과정은 4단계로 나누어진다.\n\n흥분기\n : 질 속이 습윤해져 미끈미끈해지고 유방의 유두가 일어나는 등 생리적인 변화가 시작되는 단계\n\n고조기\n : 숨이 가빠지고 근육의 긴장이 강해지면서 질 주위의 조직이 부풀어 오르고, 클리토리스도 딱딱하게 일어나는 등 신체 생리적인 변화가 나타나는 단계\n", "절정기(오르가즘기)\n : 질의 근육이 강하게 수축하면서 페니스를 꽉 죄며 성적인 쾌감이 절정에 달하는 극치감을 경험하는 단계\n\n해소기\n : 몸 전체가 다시 오르가즘 전 단계로 회복되는 단계\n", "출처 : 性의 과학사전\n저자: 오영근\n"] ,
        ["주로 의료용 실리콘으로 만들어진 종 모양의 작은 컵으로, \n질 내에 삽입하여 정혈을 받아내는 방식의 정혈용품.\n","사용법\n1. 비누로 손을 씻는다.\n2. 온 몸에 긴장을 풀고 다양한 자세를 시도하며 \n편한 자세를 잡는다.\n3. 정혈컵을 접어 중간 부분을 단단히 잡는다.\n4. 정혈컵의 입구가 질 안에 완전히 들어갈 때까지 넣고, 포궁 경부까지 부드럽게 밀어준다.\n5. 정혈컵이 안에서 완전히 펼쳐지면 실링(진공)을\n 확인한다.\n", "출처 : 루나컵 ‘월경컵 입문자를 위한 월경컵 TMI’\n"],
        ["응급 피임약이라고도 하며 배란기에 피임이 제대로 \n되지 않았을 시 알약을 구강 복용하는 피임법. \n최대한 빨리 복용할수록 효력이 높아진다. \n전문 의약품으로 의사의 처방을 받아 약국에서 \n구매한다. (응급실에서도 처방이 가능하다)\n 투여되는 호르몬 양이 지나치게 많아져 부작용이 많다.\n\n노레보원정\n관계 후 72시간(3일) 내에 1회 1알 복용\n\n엘라원정\n120시간(5일)내에 1회 1알 복용\n","출처: 바디 액츄얼리 1/온스타일 바디 액츄얼리 제작팀\n,여성 몸 여성의 지혜\n 저자: 크리스티안 노스럽\n"],
        ["생리주기를 조정하거나 피임목적으로 복용하는 알약.\n\n 사용법\n21일간 1일 1정 복용 후 배란기 7일간 휴약한다.\n출처: 바디 액츄얼리 1/온스타일 바디 액츄얼리 제작팀\n,마이 버자이너\n저자:옐토 드렌스\n"]
    ]
    
    // Lv2TableView에서 변수를 받아오기 위한 함수
    func receiveLabel(_ name: String){
        lv2Label = name
    }
    // "젠더", "음핵", "정혈", "완경", "절정", "정혈컵", "사후피임약", "경구피임약"
    @objc func backList(sender: UIBarButtonItem) {//홈으로 이동
             let ViewControllerList = self.storyboard?.instantiateViewController(withIdentifier: "lv2table")
               self.navigationController?.pushViewController(ViewControllerList!, animated: true)

              //self.navigationController?.popViewController(animated: true)
          }
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        super.viewDidLoad()
        self.view.bringSubviewToFront(lv2ScrollView)
        
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Pnavi_Back"),
                                                            style: UIBarButtonItem.Style.plain
        ,
                                                            target: self, action: #selector(backList(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        leftBarButtonItem.tintColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem

        if lv2Label == "젠더" {
            lv2Index = 0
        }
        else if lv2Label == "음핵" {
            lv2Index = 1
        }
        else if lv2Label == "정혈" {
            lv2Index = 2
        }
        else if lv2Label == "완경" {
            lv2Index = 3
        }
        else if lv2Label == "절정" {
            lv2Index = 4
        }
        else if lv2Label == "정혈컵" {
            lv2Index = 5
        }
        else if lv2Label == "사후피임약" {
            lv2Index = 6
        }
        else {
            lv2Index = 7
        }
        
        let lv2_name = lv2Label
        let lv2_text = lv2TextList[lv2Index]
        
        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)
       
        lv2ScrollView.delegate = self
        
        
        if lv2_text.count == 1 {
            let lv2slides:[InfoView]=createSlides1(q_name: lv2_name, q_text: lv2_text)

            setupSlideScrollView(slides: lv2slides)
            lv2PageControl.numberOfPages=lv2slides.count
            lv2PageControl.currentPage=0
            }
        else if lv2_text.count == 2 {
            let lv2slides:[InfoView]=createSlides2(q_name: lv2_name, q_text: lv2_text)

            setupSlideScrollView(slides: lv2slides)
            lv2PageControl.numberOfPages=lv2slides.count
            lv2PageControl.currentPage=0
                }
        else if lv2_text.count == 3 {
            let lv2slides:[InfoView]=createSlides3(q_name: lv2_name, q_text: lv2_text)

            setupSlideScrollView(slides: lv2slides)
            lv2PageControl.numberOfPages=lv2slides.count
            lv2PageControl.currentPage=0
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
        lv2ScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        lv2ScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count
            ), height: view.frame.height)
        lv2ScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            self.lv2ScrollView.addSubview(slides[i])
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {//페이지 컨트롤 관련, 세로 스크롤 막는 함수
        let pageIndex=round(scrollView.contentOffset.x/view.frame.width)
        lv2PageControl.currentPage=Int(pageIndex)
        if scrollView.contentOffset.y>0 || scrollView.contentOffset.y<0{
            scrollView.contentOffset.y=0
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

}
