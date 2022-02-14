package com.javaEdu.board.vo;

public class CrawlingVO {
   private  String brand;
   private String ff;
   private String desert;
   private String milk;
   private String hamberger;
   private String sandwich;
   private String skimbap;
   private String kimbap;
   private String bread;
   private String dosirak;
   
   public String getBrand() {
      return brand;
   }
   public void setBrand(String brand) {
      this.brand = brand;
   }
   public String getFf() {
      return ff;
   }
   public void setFf(String ff) {
      this.ff = ff;
   }
   public String getDesert() {
      return desert;
   }
   public void setDesert(String desert) {
      this.desert = desert;
   }
   public String getMilk() {
      return milk;
   }
   public void setMilk(String milk) {
      this.milk = milk;
   }
   public String getHamberger() {
      return hamberger;
   }
   public void setHamberger(String hamberger) {
      this.hamberger = hamberger;
   }
   public String getSandwich() {
      return sandwich;
   }
   public void setSandwich(String sandwich) {
      this.sandwich = sandwich;
   }
   public String getSkimbap() {
      return skimbap;
   }
   public void setSkimbap(String skimbap) {
      this.skimbap = skimbap;
   }
   public String getKimbap() {
      return kimbap;
   }
   public void setKimbap(String kimbap) {
      this.kimbap = kimbap;
   }
   public String getBread() {
      return bread;
   }
   public void setBread(String bread) {
      this.bread = bread;
   }
   public String getDosirak() {
      return dosirak;
   }
   public void setDosirak(String dosirak) {
      this.dosirak = dosirak;
   }
   @Override
   public String toString() {
      return "CrawlingVO [brand=" + brand + ", ff=" + ff + ", desert=" + desert + ", milk=" + milk + ", hamberger="
            + hamberger + ", sandwich=" + sandwich + ", skimbap=" + skimbap + ", kimbap=" + kimbap + ", bread="
            + bread + ", dosirak=" + dosirak + "]";
   }
   
}