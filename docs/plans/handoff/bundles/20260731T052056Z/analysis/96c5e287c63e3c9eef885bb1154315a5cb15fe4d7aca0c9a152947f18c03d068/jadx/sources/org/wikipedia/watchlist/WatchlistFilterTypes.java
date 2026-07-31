package org.wikipedia.watchlist;

import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import org.wikipedia.R;
import org.wikipedia.model.EnumCode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistFilterTypes implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WatchlistFilterTypes[] $VALUES;
    public static final WatchlistFilterTypes ALL_CHANGES;
    public static final WatchlistFilterTypes ALL_EDITORS;
    public static final WatchlistFilterTypes ALL_EDITS;
    public static final WatchlistFilterTypes ALL_USERS;
    public static final WatchlistFilterTypes BOT;
    private static final List<WatchlistFilterTypes> BOT_EDITS_GROUP;
    public static final WatchlistFilterTypes CATEGORY_CHANGES;
    public static final Companion Companion;
    private static final Set<WatchlistFilterTypes> DEFAULT_FILTER_OTHERS;
    private static final Set<WatchlistFilterTypes> DEFAULT_FILTER_TYPE_OF_CHANGES;
    private static final Set<WatchlistFilterTypes> DEFAULT_FILTER_TYPE_SET;
    public static final WatchlistFilterTypes HUMAN;
    public static final WatchlistFilterTypes LATEST_REVISION;
    private static final List<WatchlistFilterTypes> LATEST_REVISIONS_GROUP;
    public static final WatchlistFilterTypes LOGGED_ACTIONS;
    public static final WatchlistFilterTypes MINOR_EDITS;
    private static final List<WatchlistFilterTypes> MINOR_EDITS_GROUP;
    public static final WatchlistFilterTypes NON_MINOR_EDITS;
    public static final WatchlistFilterTypes NOT_LATEST_REVISION;
    public static final WatchlistFilterTypes PAGE_CREATIONS;
    public static final WatchlistFilterTypes PAGE_EDITS;
    public static final WatchlistFilterTypes REGISTERED;
    public static final WatchlistFilterTypes SEEN_CHANGES;
    private static final List<WatchlistFilterTypes> TYPE_OF_CHANGES_GROUP;
    public static final WatchlistFilterTypes UNREGISTERED;
    public static final WatchlistFilterTypes UNSEEN_CHANGES;
    private static final List<WatchlistFilterTypes> UNSEEN_CHANGES_GROUP;
    private static final List<WatchlistFilterTypes> USER_STATUS_GROUP;
    public static final WatchlistFilterTypes WIKIDATA_EDITS;
    private final String id;
    private final int title;
    private final String value;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static WatchlistFilterTypes find(String str) {
            Object obj;
            str.getClass();
            Iterator<E> it = WatchlistFilterTypes.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                WatchlistFilterTypes watchlistFilterTypes = (WatchlistFilterTypes) obj;
                if (str.equals(watchlistFilterTypes.getId()) || StringsKt__StringsJVMKt.startsWith(str, watchlistFilterTypes.getId(), false)) {
                    break;
                }
            }
            WatchlistFilterTypes watchlistFilterTypes2 = (WatchlistFilterTypes) obj;
            return watchlistFilterTypes2 == null ? (WatchlistFilterTypes) ((EnumEntriesList) WatchlistFilterTypes.getEntries()).get(0) : watchlistFilterTypes2;
        }
    }

    static {
        WatchlistFilterTypes watchlistFilterTypes = new WatchlistFilterTypes(0, R.string.watchlist_filter_type_of_change_page_edits, "PAGE_EDITS", "pageEdits", "edit");
        PAGE_EDITS = watchlistFilterTypes;
        WatchlistFilterTypes watchlistFilterTypes2 = new WatchlistFilterTypes(1, R.string.watchlist_filter_type_of_change_page_creations, "PAGE_CREATIONS", "pageCreations", "new");
        PAGE_CREATIONS = watchlistFilterTypes2;
        WatchlistFilterTypes watchlistFilterTypes3 = new WatchlistFilterTypes(2, R.string.watchlist_filter_type_of_change_category_changes, "CATEGORY_CHANGES", "categoryChanges", "categorize");
        CATEGORY_CHANGES = watchlistFilterTypes3;
        WatchlistFilterTypes watchlistFilterTypes4 = new WatchlistFilterTypes(3, R.string.watchlist_filter_type_of_change_wikidata_edits, "WIKIDATA_EDITS", "wikidataEdits", "external");
        WIKIDATA_EDITS = watchlistFilterTypes4;
        WatchlistFilterTypes watchlistFilterTypes5 = new WatchlistFilterTypes(4, R.string.watchlist_filter_type_of_change_logged_actions, "LOGGED_ACTIONS", "loggedActions", "log");
        LOGGED_ACTIONS = watchlistFilterTypes5;
        WatchlistFilterTypes watchlistFilterTypes6 = new WatchlistFilterTypes(5, R.string.watchlist_filter_all_text, "ALL_EDITS", "allEdits", "");
        ALL_EDITS = watchlistFilterTypes6;
        WatchlistFilterTypes watchlistFilterTypes7 = new WatchlistFilterTypes(6, R.string.watchlist_filter_significance_minor, "MINOR_EDITS", "minorEdits", "minor");
        MINOR_EDITS = watchlistFilterTypes7;
        WatchlistFilterTypes watchlistFilterTypes8 = new WatchlistFilterTypes(7, R.string.watchlist_filter_significance_edits, "NON_MINOR_EDITS", "nonMinorEdits", "!minor");
        NON_MINOR_EDITS = watchlistFilterTypes8;
        WatchlistFilterTypes watchlistFilterTypes9 = new WatchlistFilterTypes(8, R.string.watchlist_filter_all_text, "ALL_EDITORS", "allEditors", "");
        ALL_EDITORS = watchlistFilterTypes9;
        WatchlistFilterTypes watchlistFilterTypes10 = new WatchlistFilterTypes(9, R.string.watchlist_filter_automated_contributions_bot, "BOT", "bot", "bot");
        BOT = watchlistFilterTypes10;
        WatchlistFilterTypes watchlistFilterTypes11 = new WatchlistFilterTypes(10, R.string.watchlist_filter_automated_contributions_human, "HUMAN", "human", "!bot");
        HUMAN = watchlistFilterTypes11;
        WatchlistFilterTypes watchlistFilterTypes12 = new WatchlistFilterTypes(11, R.string.watchlist_filter_all_text, "ALL_CHANGES", "allChanges", "");
        ALL_CHANGES = watchlistFilterTypes12;
        WatchlistFilterTypes watchlistFilterTypes13 = new WatchlistFilterTypes(12, R.string.watchlist_filter_watchlist_activity_unseen, "UNSEEN_CHANGES", "unseenChanges", "unread");
        UNSEEN_CHANGES = watchlistFilterTypes13;
        WatchlistFilterTypes watchlistFilterTypes14 = new WatchlistFilterTypes(13, R.string.watchlist_filter_watchlist_activity_seen, "SEEN_CHANGES", "seenChanges", "!unread");
        SEEN_CHANGES = watchlistFilterTypes14;
        WatchlistFilterTypes watchlistFilterTypes15 = new WatchlistFilterTypes(14, R.string.watchlist_filter_latest_revisions_latest_revision, "LATEST_REVISION", "latestRevision", "");
        LATEST_REVISION = watchlistFilterTypes15;
        WatchlistFilterTypes watchlistFilterTypes16 = new WatchlistFilterTypes(15, R.string.watchlist_filter_latest_revisions_not_latest_revision, "NOT_LATEST_REVISION", "notLatestRevision", "1");
        NOT_LATEST_REVISION = watchlistFilterTypes16;
        WatchlistFilterTypes watchlistFilterTypes17 = new WatchlistFilterTypes(16, R.string.watchlist_filter_all_text, "ALL_USERS", "allUsers", "");
        ALL_USERS = watchlistFilterTypes17;
        WatchlistFilterTypes watchlistFilterTypes18 = new WatchlistFilterTypes(17, R.string.watchlist_filter_user_status_unregistered, "UNREGISTERED", "unregistered", "anon");
        UNREGISTERED = watchlistFilterTypes18;
        WatchlistFilterTypes watchlistFilterTypes19 = new WatchlistFilterTypes(18, R.string.watchlist_filter_user_status_registered, "REGISTERED", "registered", "!anon");
        REGISTERED = watchlistFilterTypes19;
        WatchlistFilterTypes[] watchlistFilterTypesArr = {watchlistFilterTypes, watchlistFilterTypes2, watchlistFilterTypes3, watchlistFilterTypes4, watchlistFilterTypes5, watchlistFilterTypes6, watchlistFilterTypes7, watchlistFilterTypes8, watchlistFilterTypes9, watchlistFilterTypes10, watchlistFilterTypes11, watchlistFilterTypes12, watchlistFilterTypes13, watchlistFilterTypes14, watchlistFilterTypes15, watchlistFilterTypes16, watchlistFilterTypes17, watchlistFilterTypes18, watchlistFilterTypes19};
        $VALUES = watchlistFilterTypesArr;
        $ENTRIES = new EnumEntriesList(watchlistFilterTypesArr);
        Companion = new Companion();
        TYPE_OF_CHANGES_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes, watchlistFilterTypes2, watchlistFilterTypes3, watchlistFilterTypes4, watchlistFilterTypes5});
        MINOR_EDITS_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes6, watchlistFilterTypes7, watchlistFilterTypes8});
        BOT_EDITS_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes9, watchlistFilterTypes10, watchlistFilterTypes11});
        UNSEEN_CHANGES_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes12, watchlistFilterTypes13, watchlistFilterTypes14});
        LATEST_REVISIONS_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes15, watchlistFilterTypes16});
        USER_STATUS_GROUP = Room.listOf((Object[]) new WatchlistFilterTypes[]{watchlistFilterTypes17, watchlistFilterTypes18, watchlistFilterTypes19});
        Set<WatchlistFilterTypes> set = ArraysKt___ArraysKt.toSet(new WatchlistFilterTypes[]{watchlistFilterTypes, watchlistFilterTypes2, watchlistFilterTypes5});
        DEFAULT_FILTER_TYPE_OF_CHANGES = set;
        Set<WatchlistFilterTypes> set2 = ArraysKt___ArraysKt.toSet(new WatchlistFilterTypes[]{watchlistFilterTypes6, watchlistFilterTypes12, watchlistFilterTypes15, watchlistFilterTypes9, watchlistFilterTypes17});
        DEFAULT_FILTER_OTHERS = set2;
        DEFAULT_FILTER_TYPE_SET = UuidKt.plus((Set) set2, (Iterable) set);
    }

    public WatchlistFilterTypes(int i, int i2, String str, String str2, String str3) {
        this.id = str2;
        this.title = i2;
        this.value = str3;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static WatchlistFilterTypes valueOf(String str) {
        return (WatchlistFilterTypes) Enum.valueOf(WatchlistFilterTypes.class, str);
    }

    public static WatchlistFilterTypes[] values() {
        return (WatchlistFilterTypes[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return ordinal();
    }

    public final String getId() {
        return this.id;
    }

    public final int getTitle() {
        return this.title;
    }

    public final String getValue() {
        return this.value;
    }
}
