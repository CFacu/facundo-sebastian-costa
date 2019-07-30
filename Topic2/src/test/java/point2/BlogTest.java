package point2;

import org.junit.Test;
import org.mockito.Mock;

import java.util.ArrayList;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class BlogTest {

    //Mocking of the recent entries
    @Mock
    RecentEntries mockRecentEntries = mock(RecentEntries.class);


    @Test
    public final void postNewEntry() {
        Entry entry = new Entry();
        entry.setTitle("Test Title");
        entry.setBody("Test Text of Body");
        //When the addEntry method is called, return true
        when(mockRecentEntries.addEntry(entry)).thenReturn(true);

        Blog blog = new Blog(mockRecentEntries);
        assertTrue(blog.newEntry(entry));

        //Verify that the method was called once
        verify(mockRecentEntries).addEntry(entry);
    }

    @Test
    public final void deleteExistingEntry() {
        Entry entry = new Entry();
        entry.setTitle("Test Title");
        entry.setBody("Test Text of Body");
        //When the deleteEntry method is called, return true
        when(mockRecentEntries.deleteEntry(entry)).thenReturn(true);

        Blog blog = new Blog(mockRecentEntries);
        assertTrue(blog.deleteEntry(entry));

        //Verify that the method was called once
        verify(mockRecentEntries).deleteEntry(entry);
    }

    @Test
    public final void showTenRecentEntries() {
        ArrayList<Entry> recEntries = new ArrayList<Entry>();
        for (int i=0; i<10; i++) {
            Entry entry = new Entry();
            entry.setTitle("Title number "+ (i+1));
            entry.setBody("Body number "+ (i+1));
            recEntries.add(entry);
        }
        //When the recentEntries is called, return the recent entries
        when(mockRecentEntries.recentEntries()).thenReturn(recEntries);

        Blog blog = new Blog(mockRecentEntries);
        //Assert that the entries added are equal to the entries in the mocked RecentEntries
        assertEquals(recEntries,blog.showTenEntries());

        //Verify that the method was called once
        verify(mockRecentEntries).recentEntries();
    }
}