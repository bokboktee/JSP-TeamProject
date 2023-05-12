package model.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Crawling {
   final static int MAX_CNT = 16;

   public static void sample() {
   ArrayList<String> urls = makeUrls(); // 배열리스트 urls에 makeUrls에서 리턴한 배열리스트 저장
   ArrayList<String> category = new ArrayList<String>(); // 카테고리를 저장할 배열리스트
   category.add("food"); // 0
   category.add("treat"); // 1
   category.add("sand"); // 2
   
   ProductDAO pdao = new ProductDAO();

   for (int a = 0; a < category.size(); a++) { // 카테고리 수 만큼 반복
      for (int i = a * MAX_CNT; i < MAX_CNT * (a + 1); i++) { // 각 상품에 맞는 카테고리를 넣어주기
         Document doc = null;
         try {
            doc = Jsoup.connect(urls.get(i)).get(); // i 번째 url 연결
         } catch (IOException e) {
            e.printStackTrace();
         }
         Element ele1 = doc.getElementById("viewName"); // 상품명
         Element ele2 = doc.getElementById("photo_detail"); // 대표사진
         Element ele3 = doc.getElementById("goods_desc_img"); // 상세사진
         Element ele4 = doc.getElementById("cart_total_price_pc"); // 가격
         Elements eles2 = doc.select("#content_view_desc > dl:nth-child(1) > dt"); // 원산지 vs 상세설명
         String detail = " ";  // 상세 설명을 저장할 변수
         if (eles2.text().equals("상품설명")) {
            detail = doc.select("#content_view_desc > dl:nth-child(1) > dd").text(); // 상세 설명
         }

         String priceString = ele4.text(); // 가격을 저장할 변수
         int price = Integer.parseInt(priceString.replaceAll("\\W", "")); // , 제외하고 가격만 저장

  ProductVO data = new ProductVO();
  data.setpName(ele1.text());
  data.setCategory(category.get(a));
  data.setPrice(price);
  data.setpAmt(new Random().nextInt(100) + 5);
  data.setpDetail(detail);
  data.setpImgUrl(ele2.attr("src"));
  data.setpImgUrl2(ele3.attr("src"));
  pdao.insert(data);
         //System.out.println(i + "  크롤링 로그 : " + data.getpName() + data.getCategory());
      }

   }
}

// 크롤링
   public static ArrayList<String> makeUrls() {
      ArrayList<String> categoryUrls = new ArrayList<String>(); // 카테고리별 페이지 URL을 담을 배열리스트
      categoryUrls.add("https://www.catpang.com/shop/goods/goods_list.php?category=001001"
                     + "&searchOption%5B%5D=25&searchOption%5B%5D=7&scroll=0");// 사료
      categoryUrls.add("https://www.catpang.com/shop/goods/goods_list.php?category=001002&scroll=0"); // 간식
      categoryUrls.add("https://www.catpang.com/shop/goods/goods_list.php?category=001003"); // 모래

      String url = null;
      ArrayList<String> urlDatas = new ArrayList<String>(); // 카테고리별 상품들의 URL을 담을 배열리스트

      for (int i = 0; i < categoryUrls.size(); i++) { // 카테고리 URL 개수만큼 반복
         url = categoryUrls.get(i); // 카테고리별 페이지 URL을 변수 url에 저장
         Document doc = null;
         try {
            doc = Jsoup.connect(url).get();
         } catch (IOException e) {
            e.printStackTrace();
         }
         Elements eles = doc.select("#contents > div.list-container > div> div > div > a");
         // 상품 상세 페이지로 들어가는 링크의 태그
         for (int j = 0; j < MAX_CNT; j++) { // 카테고리별로 16개의 상품 링크를 가져오기 위해 반복
            urlDatas.add("https://www.catpang.com" + eles.get(j).getElementsByAttribute("href").attr("href"));
         }
      }
      return urlDatas;
   }
   
   
   
   /*
    * public static void main(String[] args) { sample(); }
    */

}