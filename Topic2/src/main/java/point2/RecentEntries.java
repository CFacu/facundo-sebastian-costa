package point2;

import java.util.ArrayList;

public interface RecentEntries {
    boolean addEntry(Entry entry);
    boolean deleteEntry(Entry entry);
    ArrayList<Entry> recentEntries();
}
