package point2;

import java.util.ArrayList;

public class Blog {
    private static ArrayList<Entry> entry;
    private static RecentEntries recentEntries;

    public Blog(RecentEntries recent) {
        this.recentEntries = recent;
        this.entry = new ArrayList<Entry>();
    }

    public boolean newEntry(Entry post) {
        System.out.println("Your entry has been posted!");
        return recentEntries.addEntry(post);
    }

    public boolean deleteEntry(Entry post) {
        System.out.println("The post has been deleted!");
        return recentEntries.deleteEntry(post);
    }

    public ArrayList<Entry> showTenEntries() {
        System.out.println("Showing ten recent entries...");
        return recentEntries.recentEntries();
    }
}