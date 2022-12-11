public with sharing class HomeWork1 {

// 1.
// Insert in anonymous to test:
// System.debug( HomeWork1.findMinimalAndReturnResult(12,56,109) );
// System.debug( HomeWork1.findMinimalAndReturnResult(112,156,109) );
// ...
    public static String findMinimalAndReturnResult(Integer a, Integer b, Integer c){
        List<Integer> listToSort = new List<Integer>{
            a,
            b,
            c
        };

        listToSort.sort();
        Integer minValue = listToSort.get(0);

        return minValue > 100 ? 'Amazing achievement' : minValue >= 20 ? 'Good result' : 'Try next time'; 
    }

///////////////////////////////////////////////////////////////////////////////////////////////
// 2.
// Insert in anonymous to test:
// System.debug( HomeWork1.findAndReturnAvarage(1,3) );
// System.debug( HomeWork1.findAndReturnAvarage(5,8) );
// ...
    public static Decimal findAndReturnAvarage(Integer a, Integer b){
        Integer sum = 0;
        Integer minimum =  a >= b ? b : a;
        Integer maximum =  a >= b ? a : b;
        for (Integer i = minimum; i <= maximum; i++){
            sum += i;
        }
        return (Decimal) sum/(maximum - minimum + 1);
    }
///////////////////////////////////////////////////////////////////////////////////////////////
// 3.
// Insert in anonymous to test:
// System.debug( HomeWork1.isLeapYear(1992) );
// System.debug( HomeWork1.isLeapYear(2008) );
// System.debug( HomeWork1.isLeapYear(2010) );
// ...
    public static Boolean isLeapYear(Integer a){     
        return  
            Math.mod(a, 4) == 0 ? 
                (Math.mod(a, 100) == 0 ? 
                    (Math.mod(a, 400) == 0 ? true : false) 
                : true ) 
            : false;
    }
///////////////////////////////////////////////////////////////////////////////////////////////
// 4.
// Insert in anonymous to test:
// List<Integer> listToRevert = new List<Integer>{0,1,2,3,4,5};
// System.debug( HomeWork1.reverseAndReturnList(listToRevert) );
// ...
    public static List<Integer> reverseAndReturnList(List <Integer> paramsList){
        List <Integer> revertedList = new List<Integer>();
        for ( Integer i = paramsList.size() - 1; i >= 0; i--){
            revertedList.add(i);
        }
        return revertedList;
    }
///////////////////////////////////////////////////////////////////////////////////////////////
// 5.
// Insert in anonymous to test:
// System.debug( HomeWork1.hasPluralEnglishWord('asses in fire') );
// System.debug( HomeWork1.hasPluralEnglishWord('loss is single') );
// ...
    public static Boolean hasPluralEnglishWord(String param){
        return Pattern.matches('(^[a-zA-Z]+)([a-rt-zA-RT-Z]+)([Ss]$)', param);
    }
///////////////////////////////////////////////////////////////////////////////////////////////
// 6.
// List<String> listOfStrings = new List<String>{'str','String','Nostradamus','Astronaute','Bystritz','Boostr'};
// System.debug( HomeWork1.hasMatchInEveryRow(listOfStrings,'str') );
//
//List<String> listOfStrings = new List<String>{'str','String','Nostradamus','Astronaute','Bystritz','ABbstr'};
//System.debug( HomeWork1.hasMatchInEveryRow(listOfStrings,'ABb') );
// ...
    public static Boolean hasMatchInEveryRow(List <String> param1, String param2){
        Integer zeroIfMatchAll = 0;
        for ( String str : param1){
            zeroIfMatchAll += str.toUpperCase().contains(param2.toUpperCase()) == true ? 0 : 1;
            
        }
        System.debug(zeroIfMatchAll);
        return zeroIfMatchAll == 0 ? true : false;
    }

}