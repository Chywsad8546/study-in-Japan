package com.study;





import org.junit.Test;

import java.util.Random;

/**
 * Created by 18710 on 2017/10/10.
 */
public class TestC {
    @Test
    public void t1(){
       String i="aabbc";
       String ir=i.replaceAll("aa","nn");
        System.out.println(ir);
    }

    public int[] bijiao(int num[],int idcount){
        for (int i=0;i<num.length;i++){
            Random random=new Random();
            int rnum=random.nextInt(idcount)+1;
            if (num[i]==rnum){
                bijiao(num,idcount);
            }else if (num[i]==0){
                num[i]=rnum;
            }
        }
        return num;

    }
}
