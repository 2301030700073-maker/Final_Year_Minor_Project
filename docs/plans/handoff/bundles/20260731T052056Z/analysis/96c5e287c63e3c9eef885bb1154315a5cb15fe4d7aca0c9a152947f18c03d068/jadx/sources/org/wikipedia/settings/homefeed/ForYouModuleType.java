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
public final class ForYouModuleType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ForYouModuleType[] $VALUES;
    public static final ForYouModuleType BASED_ON_INTEREST;
    public static final ForYouModuleType BECAUSE_YOU_READ;
    public static final ForYouModuleType CONTINUE_READING;
    public static final Companion Companion;
    public static final ForYouModuleType DISCOVER;
    public static final ForYouModuleType GAMES;
    public static final ForYouModuleType PLACES_OF_INTEREST;
    public static final ForYouModuleType RANDOM;
    private final int subtitle;
    private final int title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static ArrayList entries() {
            EnumEntries entries = ForYouModuleType.getEntries();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entries, 10));
            Iterator<E> it = entries.iterator();
            while (it.hasNext()) {
                arrayList.add(((ForYouModuleType) it.next()).toEntry());
            }
            return arrayList;
        }
    }

    static {
        ForYouModuleType forYouModuleType = new ForYouModuleType(0, R.string.home_feed_settings_based_on_interest_title, R.string.home_feed_settings_based_on_interest_subtitle, "BASED_ON_INTEREST");
        BASED_ON_INTEREST = forYouModuleType;
        ForYouModuleType forYouModuleType2 = new ForYouModuleType(1, R.string.view_because_you_read_card_title, R.string.home_feed_settings_because_you_read_subtitle, "BECAUSE_YOU_READ");
        BECAUSE_YOU_READ = forYouModuleType2;
        ForYouModuleType forYouModuleType3 = new ForYouModuleType(2, R.string.home_feed_settings_continue_reading_title, R.string.home_feed_settings_continue_reading_subtitle, "CONTINUE_READING");
        CONTINUE_READING = forYouModuleType3;
        ForYouModuleType forYouModuleType4 = new ForYouModuleType(3, R.string.home_feed_settings_places_of_interest_title, R.string.home_feed_settings_places_of_interest_subtitle, "PLACES_OF_INTEREST");
        PLACES_OF_INTEREST = forYouModuleType4;
        ForYouModuleType forYouModuleType5 = new ForYouModuleType(4, R.string.home_feed_settings_discover_title, R.string.home_feed_settings_discover_subtitle, "DISCOVER");
        DISCOVER = forYouModuleType5;
        ForYouModuleType forYouModuleType6 = new ForYouModuleType(5, R.string.home_feed_random_title, R.string.home_feed_random_subtitle, "RANDOM");
        RANDOM = forYouModuleType6;
        ForYouModuleType forYouModuleType7 = new ForYouModuleType(6, R.string.home_feed_settings_games_title, R.string.home_feed_settings_games_subtitle, "GAMES");
        GAMES = forYouModuleType7;
        ForYouModuleType[] forYouModuleTypeArr = {forYouModuleType, forYouModuleType2, forYouModuleType3, forYouModuleType4, forYouModuleType5, forYouModuleType6, forYouModuleType7};
        $VALUES = forYouModuleTypeArr;
        $ENTRIES = new EnumEntriesList(forYouModuleTypeArr);
        Companion = new Companion();
    }

    public ForYouModuleType(int i, int i2, int i3, String str) {
        this.title = i2;
        this.subtitle = i3;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static ForYouModuleType valueOf(String str) {
        return (ForYouModuleType) Enum.valueOf(ForYouModuleType.class, str);
    }

    public static ForYouModuleType[] values() {
        return (ForYouModuleType[]) $VALUES.clone();
    }

    public final ToggleSettingItem toEntry() {
        return new ToggleSettingItem(this.title, this.subtitle, name());
    }
}
