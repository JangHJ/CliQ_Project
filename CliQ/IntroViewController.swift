

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    

    @IBOutlet var slideScrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var okBtn: UIButton!
    
    //@IBOutlet var prac: UIImageView!
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden=false
        let image = UIImage(named: "logo_White")
        navigationItem.titleView = UIImageView(image: image)//네비게이션 바 타이틀 클리크 아이콘
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "navi_Back"),
                                                                style: UIBarButtonItem.Style.plain
            ,
                                                                target: self, action: #selector(backHome(sender:)))//네비게이션 바 왼쪽 버튼 아이콘
        
        slideScrollView.delegate=self
        let slides:[Slide]=createSlides()
        setupSlideScrollView(slides: slides)
        pageControl.numberOfPages=slides.count
        pageControl.currentPage=0
        
    }
    @objc func backHome(sender: UIBarButtonItem) {//홈으로 이동
          let ViewControllerHome = self.storyboard?.instantiateViewController(withIdentifier: "Home")
            self.navigationController?.pushViewController(ViewControllerHome!, animated: true)
           //self.navigationController?.popViewController(animated: true)
       }
   
    func createSlides() -> [Slide] { //슬라이드 번들 생성함수
        
        let slide1: Slide = Bundle.main.loadNibNamed("SlideView", owner: self, options: nil)?.first as! Slide
        slide1.cardIntroImage.image=UIImage(named:"card_Intro@1x.png")
        slide1.cardIntroLabel.text="자신의 몸에 대해서 얼마나 알고 계시나요?"+"\n"+"'성 지식'과 '행복'은 어떠한 관계일까요?"
        // 행간 설정
         let attrString = NSMutableAttributedString(string: slide1.cardIntroLabel.text!)
         let paragraphStyle = NSMutableParagraphStyle()
         paragraphStyle.lineSpacing = 6 //행간
         attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
         slide1.cardIntroLabel.attributedText = attrString
         slide1.cardIntroLabel.textAlignment = .center // 가운데정렬
        //slide1.cardIntroLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        let slide2: Slide = Bundle.main.loadNibNamed("SlideView", owner: self, options: nil)?.first as! Slide
               slide2.cardIntroImage.image=UIImage(named: "card_Intro@1x.png")
               slide2.cardIntroLabel.text="CliQ는"+"\n"+"여성이 자신의 성과 신체명칭에 대해\n올바르게 이해하는 것이"+"\n"+"기본적인 행복의 출발점이 된다고 믿습니다."
       
        // 행간 설정
         let attrString2 = NSMutableAttributedString(string: slide2.cardIntroLabel.text!)
         let paragraphStyle2 = NSMutableParagraphStyle()
         paragraphStyle2.lineSpacing = 6 //행간
         attrString2.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle2, range: NSMakeRange(0, attrString2.length))
        slide2.cardIntroLabel.attributedText = attrString2
        slide2.cardIntroLabel.textAlignment = .center // 가운데정렬
        //slide2.cardIntroLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
        let slide3: Slide = Bundle.main.loadNibNamed("SlideView", owner: self, options: nil)?.first as! Slide
               slide3.cardIntroImage.image=UIImage(named: "card_Intro@1x.png")
               slide3.cardIntroLabel.text="어디에서도 정확하게 알려주지 않았던 우리의 성,"+"\n"+"재미있는 퀴즈로 함께 행복을 찾아가 볼까요?"
        // 행간 설정
        let attrString3 = NSMutableAttributedString(string: slide3.cardIntroLabel.text!)
        let paragraphStyle3 = NSMutableParagraphStyle()
        paragraphStyle3.lineSpacing = 6 //행간
        attrString3.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle3, range: NSMakeRange(0, attrString3.length))
        slide3.cardIntroLabel.attributedText = attrString3
        slide3.cardIntroLabel.textAlignment = .center // 가운데정렬
        
        //slide3.cardIntroLabel.font = UIFont.boldSystemFont(ofSize: 18)
       
        
        
       return [slide1,slide2,slide3]
       
    }
    
    
    func setupSlideScrollView(slides : [Slide]) {//슬라이드 스크롤뷰 설정함수, 페이지컨트롤 넘기는 동작 인식 함수
        slideScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        slideScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count
            ), height: view.frame.height)
        slideScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)

            slideScrollView.addSubview(slides[i])
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {//페이지 컨트롤 관련, 세로 스크롤 막는 함수
        let pageIndex=round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage=Int(pageIndex)
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

