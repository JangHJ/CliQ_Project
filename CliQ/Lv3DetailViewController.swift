//
//  Lv3DetailViewController.swift
//  CliQ
//
//  Created by 홍승현 on 2020/05/30.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Lv3DetailViewController: UIViewController, UIScrollViewDelegate  {
    @IBOutlet var lv3ScrollView: UIScrollView!
    @IBOutlet var lv3PageControl: UIPageControl!
    
    func receiveLabel(_ name: String){
        lv3Label = name
    }
    
    var lv3Label = ""
    var lv3Index = 0
    let lv3TextList = [
    ["입술, 혀, 입 등 구강기관으로 여성의 성기를 애무하는 \n행위 / 구강성교( Oral sex )의 일종이다.\n여성의 오르가즘을 위한 방법 중 가장 효과적인 방법으로 ‘커닐링구스’를 꼽을 수 있다.\n음부는 자칫하면 쉽게 다칠 수 있는 예민한 부위로 \n너무 강한 자극은 좋지 않다.\n","여성의 질액을 쉽게 잘 분비시킬 수 있는\n 전희 단계이며 여성이 오르가즘에 도달할 수 있는 \n가장 효과적인 방법이기 때문에 피스톤 삽입보다 \n더욱 더 큰 만족감을 느낄 수 있다.\n모든 성접촉은 성병 감염의 위험이 있고 커닐링구스 또한 이에 포함되므로, 청결과 보호가 필수이다.\n", "출처 : 저작권 2002 Sinclair Intimacy Institute\n"],
    ["질이나 자궁경부의 염증, 혹은 비감염성 원인에 의해 \n생기는 질 분비물.\n냉은 여성에게 나타나는 정상적인 생리적 현상이며,\n 개인에 따라 다르게 나타난다.\n질 분비물 증상만으로는 어떠한 질병인지 \n진단하기 힘들다.\n","질이나 자궁경부에 염증이 있는 경우에 많이 생기고,\n세균에 의한 질염의 경우 질 분비물은 누런 색이나 \n회색을 띠고 생선 냄새가 나는 경우가 많다.\n냉(질분비물)의 색이 누렇게 변하거나 \n가려움증이 동반되거나 기분 나쁜 냄새가 나는 경우에는 \n세균 감염이나 성병의 증상일 수 있으므로 \n의사를 방문하여 진단을 받고, 원인 질환에 맞는 치료를 받을 필요가 있다.\n", "출처 : 서울대학교병원 의학정보\n"],
    ["여성외부생식기의 양측 대음순 사이에 있는 \n한 쌍의 피부 조직.\n소음순은 대음순의 안쪽에 있으며 음핵에서 회음부까지 요도와 질 구멍을 보호하는 역할을 한다.\n 수많은 작은 혈관과 신경을 포함하고 있어 \n여성의 성감대 중 하나이다\n.","\n소음의 모양, 크기, 색깔 등은 여성에 따라 \n다르게 나타난다.\n사람에 따라 색깔이나 모양, 크기는 제각각이며,\n 성기의 색깔은 멜라닌 색소 세포의 양, 호르몬의 변화에 따라 결정되기 떄문에 성관계의 횟수에 따라 \n색깔과 크기가 다르다는 추측은 잘못된 성지식이다.\n", "출처 : 서울대학교병원 신체기관정보\n"],
    ["여성의 질에 손가락을 삽입할 때(애무 시) \n손가락에 끼워 사용하는 콘돔과 비슷한 도구\n\n사용 이유\n : 질 내부 점막은 윤활액이 분비되지 않아 건조해져\n 마찰력이 증가하고, 날카로운 손톱이나 손톱 밑의 \n지저분한 위생 상태에 노출되면 상처나 감염에 \n취약해지기 때문에 사용한다.\n", "출처 : 문화일보 ‘여성외음부 애무시 손가락에 콘돔을’\n미스러브여성비뇨기과원장\n"],
    ["질막이란 질입구 둘레 조직의 명칭으로, 질의 아래에 있는 주름 또는 막 모양의 탄력성 있는 조직이다. \n여성 외부 성기의 일부로 소음순보다 안쪽에 있다. \n소음순을 바깥쪽으로 젖히면 요도와 질 입구가 보이는데, 그 질 입구를 부분적으로 막고 있는 것이 질막이다.\n", "의학적 용어로는 '처녀막'이라고 하지만, \n'처녀막'은 처녀성과 무관함에도 성경험 여부를 감별하여\n여성을 이분화하려는 남성집단의 욕망이 들어간 \n인권침해 여지가 많은 단어이기에, 현재에는\n생물학적으로 직관적이고 남성중심적 가치 판단을\n배제한 용어인 '질막(질둘레막)'이라고 칭한다.\n", "질막은 왜 있는 걸까?\n사춘기 이전에는 질 조직을 유연하고 두텁게 만드는\n 에스트로겐이 분비되지 않기 때문에 상처와 감염에 몹시 취약하다. 성숙하기 전까지 외부 물질로부터 연약한 조직을 보호할 수 있도록 질막이 존재한다.\n\n질막이 순결을 증명하나?\n질막은 개인마다 막의 두께, 모양, 탄력성의 차이가 있기 때문에 가벼운 운동이나 일상생활 중에서도 파열 가능성이 있는가 하면, 반면에 여러 차례의 성관계 시에도 \n뛰어난 탄력성으로 아무런 손상이 없이 완전한 상태로 \n있는 경우도 있다.\n", "출처 : 여성신문 [처녀막? NO! 여성 억압 용어 거부한다]\n월경컵 정보 블로그 '테라' 포스트 참고\n"],
    ["성교시 피임이나 성병예방의 목적으로 \n여성의 질에 삽입하여 사용하는 제품.\n\n국내에서 쉽게 구하기 힘들어 \n해외 직구를 이용하는 경우가 많다. \n","사용법\n1. 안쪽 링을 엄지와 검지로 잡아서 길고 좁은 모양으로 \n만들어 삽입하게 쉽게 한다.\n2. 손가락으로 안쪽 링을 잡은 채로 페미돔을 최대한 질 깊숙이 삽입한다.\n3. 중지를 페미돔 안으로 넣고 안쪽 링을 질까지 최대한 밀어넣는다. (치골 바로 위에 위치하도록 해야 한다)\n4. 사정 후, 바깥쪽 링을 비틀어 정자가 새지 않도록\n조심하며 뺀다.\n", "출처 : 블로그 똑디\n https://blog.naver.com/ddockbody\n" ],
    ["아랫배나 팔, 엉덩이 등에 붙이는 피임용 패치.\n가슴에는 절대 붙여선 안된다. \n처음 일주일 정도는 다른 피임법도 병행해야 한다.\n2일 내에 떨어졌다면 쓰던 걸 다시 붙여도 되지만,\n 떨어진 채로 2일이 지났다면 새 패치를 붙이고 \n새 패치를 붙인 요일마다 매주 패치를 교체한다.\n\n구매처 : 처방 후 약국", "사용법\n1. 로션이나 오일, 파우더 등을 바르지 않은 깨끗하고 건조한 피부에 패치를 붙인다.\n2. 일주일에 한 번 새것으로 교체한다.\n(매주 같은 날 패치를 교체해야한다)\n","출처 : 바디 액츄얼리 1/온스타일 바디 액츄얼리 제작팀\n"],
    ["팔 상완(어깨에서 팔꿈치까지의 부분) 피부 안쪽에\n 길이 4cm정도의 임플라논 막대를 삽입하는 피임법. \n","산부인과 진료 후 시술하고,\n생리시작 1일에서 5일 사이에 시행한다.\n과체중이거나 특정 약물 복용 시 시술이 불가능할 수 \n있다. 성병 예방에 효과가 없다.\n", "출처 : 바디 액츄얼리 1/온스타일 바디 액츄얼리 제작팀\n"]
    
    ]
    

    @objc func backList(sender: UIBarButtonItem) {//홈으로 이동
             let ViewControllerList = self.storyboard?.instantiateViewController(withIdentifier: "lv3table")
               self.navigationController?.pushViewController(ViewControllerList!, animated: true)

              //self.navigationController?.popViewController(animated: true)
          }
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        super.viewDidLoad()
        self.view.bringSubviewToFront(lv3ScrollView)
        
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Pnavi_Back"),
                                                            style: UIBarButtonItem.Style.plain
        ,
                                                            target: self, action: #selector(backList(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        leftBarButtonItem.tintColor = UIColor(red: 153/255, green: 108/255, blue: 228/255, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem

        if lv3Label == "커닐링구스" {
            lv3Index = 0
        }
        else if lv3Label == "냉" {
            lv3Index = 1
        }
        else if lv3Label == "소음순" {
            lv3Index = 2
        }
        else if lv3Label == "핑거돔" {
            lv3Index = 3
        }
        else if lv3Label == "질막" {
            lv3Index = 4
        }
        else if lv3Label == "페미돔" {
            lv3Index = 5
        }
        else if lv3Label == "피임패치" {
            lv3Index = 6
        }
        else {
            lv3Index = 7
        }
        
        let lv3_name = lv3Label
        let lv3_text = lv3TextList[lv3Index]
        
        let image = UIImage(named: "logo_Purple")
        navigationItem.titleView = UIImageView(image: image)

        lv3ScrollView.delegate = self

        if lv3_text.count == 1 {
        let lv3slides:[InfoView]=createSlides1(q_name: lv3_name, q_text: lv3_text)

        setupSlideScrollView(slides: lv3slides)
        lv3PageControl.numberOfPages=lv3slides.count
        lv3PageControl.currentPage=0
        }
        else if lv3_text.count == 2 {
            let lv3slides:[InfoView]=createSlides2(q_name: lv3_name, q_text: lv3_text)

            setupSlideScrollView(slides: lv3slides)
            lv3PageControl.numberOfPages=lv3slides.count
            lv3PageControl.currentPage=0
        }
        else if lv3_text.count == 3 {
            let lv3slides:[InfoView]=createSlides3(q_name: lv3_name, q_text: lv3_text)

            setupSlideScrollView(slides: lv3slides)
            lv3PageControl.numberOfPages=lv3slides.count
            lv3PageControl.currentPage=0
        }
        else {
            let lv3slides:[InfoView]=createSlides4(q_name: lv3_name, q_text: lv3_text)

            setupSlideScrollView(slides: lv3slides)
            lv3PageControl.numberOfPages=lv3slides.count
            lv3PageControl.currentPage=0
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

    func createSlides4(q_name:String, q_text:Array<Any>) -> [InfoView] { //슬라이드 번들 생성함수
        
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
        
        let slide4: InfoView = Bundle.main.loadNibNamed("Info", owner: self, options: nil)?.first as! InfoView
        slide4.infoViewImage.image=UIImage(named:"card_Info@1x.png")
        slide4.infoViewTitle.text=q_name
        slide4.infoViewLabel.font = UIFont.boldSystemFont(ofSize: 15)
        slide4.infoViewLabel.numberOfLines = 14
        slide4.infoViewLabel.text=q_text[3] as? String
        let attributedString3 = NSMutableAttributedString(string:slide4.infoViewLabel.text!)
        attributedString3.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1), range:NSMakeRange(0, attributedString3.length))
        slide4.infoViewLabel.attributedText = attributedString3
       return [slide1, slide2, slide3, slide4]
       
    }
    func setupSlideScrollView(slides : [InfoView]) {//슬라이드 스크롤뷰 설정함수, 페이지컨트롤 넘기는 동작 인식 함수
        lv3ScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        lv3ScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count
            ), height: view.frame.height)
        lv3ScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            self.lv3ScrollView.addSubview(slides[i])
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {//페이지 컨트롤 관련, 세로 스크롤 막는 함수
        let pageIndex=round(scrollView.contentOffset.x/view.frame.width)
        lv3PageControl.currentPage=Int(pageIndex)
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
