package org.wikipedia.settings.homefeed;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;
import org.wikipedia.compose.components.ToggleSettingItem;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CommunityModuleType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CommunityModuleType[] $VALUES;
    public static final Companion Companion;
    public static final CommunityModuleType DID_YOU_KNOW;
    public static final CommunityModuleType FEATURED_ARTICLE;
    public static final CommunityModuleType FEATURED_IMAGE;
    public static final CommunityModuleType NEWS;
    public static final CommunityModuleType ON_THIS_DAY;
    public static final CommunityModuleType TOP_READ;
    private final int subtitle;
    private final int title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static ArrayList entries() {
            EnumEntries entries = CommunityModuleType.getEntries();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries, 10));
            Iterator<E> it = entries.iterator();
            while (it.hasNext()) {
                arrayList.add(((CommunityModuleType) it.next()).toEntry());
            }
            return arrayList;
        }
    }

    static {
        CommunityModuleType communityModuleType = new CommunityModuleType(0, R.string.view_featured_article_card_title, R.string.explore_feed_featured_article_subtitle, "FEATURED_ARTICLE");
        FEATURED_ARTICLE = communityModuleType;
        CommunityModuleType communityModuleType2 = new CommunityModuleType(1, R.string.view_top_read_card_title, R.string.view_top_read_card_description, "TOP_READ");
        TOP_READ = communityModuleType2;
        CommunityModuleType communityModuleType3 = new CommunityModuleType(2, R.string.home_feed_did_you_know_title, R.string.home_feed_did_you_know_subtitle, "DID_YOU_KNOW");
        DID_YOU_KNOW = communityModuleType3;
        CommunityModuleType communityModuleType4 = new CommunityModuleType(3, R.string.view_card_news_title, R.string.explore_feed_in_the_news_subtitle, "NEWS");
        NEWS = communityModuleType4;
        CommunityModuleType communityModuleType5 = new CommunityModuleType(4, R.string.on_this_day_card_title, R.string.explore_feed_on_this_day_subtitle, "ON_THIS_DAY");
        ON_THIS_DAY = communityModuleType5;
        CommunityModuleType communityModuleType6 = new CommunityModuleType(5, R.string.view_featured_image_card_title, R.string.explore_feed_potd_subtitle, "FEATURED_IMAGE");
        FEATURED_IMAGE = communityModuleType6;
        CommunityModuleType[] communityModuleTypeArr = {communityModuleType, communityModuleType2, communityModuleType3, communityModuleType4, communityModuleType5, communityModuleType6};
        $VALUES = communityModuleTypeArr;
        $ENTRIES = new EnumEntriesList(communityModuleTypeArr);
        Companion = new Companion();
    }

    public CommunityModuleType(int i, int i2, int i3, String str) {
        this.title = i2;
        this.subtitle = i3;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static CommunityModuleType valueOf(String str) {
        return (CommunityModuleType) Enum.valueOf(CommunityModuleType.class, str);
    }

    public static CommunityModuleType[] values() {
        return (CommunityModuleType[]) $VALUES.clone();
    }

    public final ToggleSettingItem toEntry() {
        return new ToggleSettingItem(this.title, this.subtitle, name());
    }
}
