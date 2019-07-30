package point1;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;
import java.util.Collections;

public class RecentFileListTest {
    @Test
    public final void whenTheProgramRunForTheFirstTimeTheListIsEmpty() {
        if(RecentFileList.firstTime) {
            assertTrue(RecentFileList.fileList.isEmpty());
        };
    }

    @Test
    public final void whenAFileIsOpenedItIsAddedToTheList() {
        RecentFileList.openFile("file.txt");
        Assert.assertEquals(1,RecentFileList.fileList.size());
    }

    @Test
    public final void ifAnOpenedFileAlreadyExistsInTheListIsBumpedToTheTop() {
        RecentFileList.openFile("file.txt");
        assertTrue(Collections.frequency(RecentFileList.fileList,"file.txt") == 1);
    }

    @Test
    public final void ifTheListGetsFullTheOldestIsRemoved() {
        for (int i=0; i<20; i++){
            RecentFileList.openFile("file" + i + ".txt");
        }
        assertTrue(RecentFileList.fileList.size()<=15);
    }
}