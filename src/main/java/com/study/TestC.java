package com.study;





import org.junit.Test;

import java.util.Random;

/**
 * Created by 18710 on 2017/10/10.
 */
public class TestC {
    @Test
    public void t1(){
        int schoolrandom[]= new int[4] ;
      schoolrandom= bijiao(schoolrandom,10);
       for (int i=0;i>schoolrandom.length;i++){
           System.out.println(schoolrandom[i]);
       }
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
