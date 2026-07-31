package org.wikipedia.navtab;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.feed.HomeFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.model.EnumCode;
import org.wikipedia.readinglist.ReadingListsFragment;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavTab implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NavTab[] $VALUES;
    public static final Companion Companion;
    public static final NavTab EDITS;
    public static final NavTab HOME;
    public static final NavTab MORE;
    public static final NavTab READING_LISTS;
    public static final NavTab SEARCH;
    private final int icon;
    private final int id;
    private final int text;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static NavTab of(int i) {
            return (NavTab) ((EnumEntriesList) NavTab.getEntries()).get(i);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EDITS extends NavTab {
        @Override // org.wikipedia.navtab.NavTab
        public final Fragment newInstance() {
            ActivityTabFragment activityTabFragment = new ActivityTabFragment();
            activityTabFragment.setArguments(new Bundle());
            return activityTabFragment;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HOME extends NavTab {
        @Override // org.wikipedia.navtab.NavTab
        public final Fragment newInstance() {
            return new HomeFragment();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MORE extends NavTab {
        @Override // org.wikipedia.navtab.NavTab
        public final Fragment newInstance() {
            return new Fragment();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class READING_LISTS extends NavTab {
        @Override // org.wikipedia.navtab.NavTab
        public final Fragment newInstance() {
            return new ReadingListsFragment();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SEARCH extends NavTab {
        @Override // org.wikipedia.navtab.NavTab
        public final Fragment newInstance() {
            return new HistoryFragment();
        }
    }

    static {
        HOME home = new HOME(0, R.string.home, R.id.nav_tab_home, R.drawable.ic_home_filled_24dp, "HOME");
        HOME = home;
        READING_LISTS reading_lists = new READING_LISTS(1, R.string.nav_item_saved, R.id.nav_tab_reading_lists, R.drawable.selector_nav_saved, "READING_LISTS");
        READING_LISTS = reading_lists;
        SEARCH search = new SEARCH(2, R.string.nav_item_search, R.id.nav_tab_search, R.drawable.selector_nav_search, "SEARCH");
        SEARCH = search;
        EDITS edits = new EDITS(3, R.string.nav_item_activity, R.id.nav_tab_edits, R.drawable.selector_nav_activity, "EDITS");
        EDITS = edits;
        MORE more = new MORE(4, R.string.nav_item_more, R.id.nav_tab_more, R.drawable.ic_menu_white_24dp, "MORE");
        MORE = more;
        NavTab[] navTabArr = {home, reading_lists, search, edits, more};
        $VALUES = navTabArr;
        $ENTRIES = new EnumEntriesList(navTabArr);
        Companion = new Companion();
    }

    public NavTab(int i, int i2, int i3, int i4, String str) {
        this.text = i2;
        this.id = i3;
        this.icon = i4;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static NavTab valueOf(String str) {
        return (NavTab) Enum.valueOf(NavTab.class, str);
    }

    public static NavTab[] values() {
        return (NavTab[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return ordinal();
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.id;
    }

    public final int getText() {
        return this.text;
    }

    public abstract Fragment newInstance();
}
