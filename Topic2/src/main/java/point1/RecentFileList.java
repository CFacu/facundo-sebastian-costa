package point1;

import java.util.ArrayList;
import java.util.List;

public class RecentFileList {

    public static List<String> fileList = new ArrayList<String>();
    public static Boolean firstTime = true;

    public static void openFile(String file) {
        //If the file is not in the list, it's added
        if (!fileList.contains(file)) {
            //If the list is full, the oldest file is removed and the new file is added
            if (fileList.size()<15) {
                fileList.add(file);
            }
            else {
                fileList.remove(0);
                fileList.add(file);
            }
        }
        //If the file is in the list, it's bumped to the top
        else{
            fileList.remove(file);
            fileList.add(14,file);
        }
        firstTime = false;
    }
}