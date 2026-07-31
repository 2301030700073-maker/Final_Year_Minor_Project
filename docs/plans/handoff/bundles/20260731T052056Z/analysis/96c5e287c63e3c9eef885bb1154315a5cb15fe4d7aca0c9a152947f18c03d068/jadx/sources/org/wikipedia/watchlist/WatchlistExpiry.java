package org.wikipedia.watchlist;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistExpiry {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WatchlistExpiry[] $VALUES;
    public static final WatchlistExpiry NEVER;
    public static final WatchlistExpiry ONE_MONTH;
    public static final WatchlistExpiry ONE_WEEK;
    public static final WatchlistExpiry SIX_MONTH;
    public static final WatchlistExpiry THREE_MONTH;
    private final String expiry;
    private final Integer icon;
    private final int stringId;

    static {
        WatchlistExpiry watchlistExpiry = new WatchlistExpiry("NEVER", 0, "never", R.string.watchlist_page_add_to_watchlist_snackbar_period_permanently, Integer.valueOf(R.drawable.ic_star_24));
        NEVER = watchlistExpiry;
        WatchlistExpiry watchlistExpiry2 = new WatchlistExpiry("ONE_WEEK", 1, "1 week", R.string.watchlist_page_add_to_watchlist_snackbar_period_for_one_week, Integer.valueOf(R.drawable.ic_baseline_star_half_24));
        ONE_WEEK = watchlistExpiry2;
        WatchlistExpiry watchlistExpiry3 = new WatchlistExpiry("ONE_MONTH", 2, "1 month", R.string.watchlist_page_add_to_watchlist_snackbar_period_for_one_month, null);
        ONE_MONTH = watchlistExpiry3;
        WatchlistExpiry watchlistExpiry4 = new WatchlistExpiry("THREE_MONTH", 3, "3 months", R.string.watchlist_page_add_to_watchlist_snackbar_period_for_three_months, null);
        THREE_MONTH = watchlistExpiry4;
        WatchlistExpiry watchlistExpiry5 = new WatchlistExpiry("SIX_MONTH", 4, "6 months", R.string.watchlist_page_add_to_watchlist_snackbar_period_for_six_months, null);
        SIX_MONTH = watchlistExpiry5;
        WatchlistExpiry[] watchlistExpiryArr = {watchlistExpiry, watchlistExpiry2, watchlistExpiry3, watchlistExpiry4, watchlistExpiry5};
        $VALUES = watchlistExpiryArr;
        $ENTRIES = new EnumEntriesList(watchlistExpiryArr);
    }

    public WatchlistExpiry(String str, int i, String str2, int i2, Integer num) {
        this.expiry = str2;
        this.stringId = i2;
        this.icon = num;
    }

    public static WatchlistExpiry valueOf(String str) {
        return (WatchlistExpiry) Enum.valueOf(WatchlistExpiry.class, str);
    }

    public static WatchlistExpiry[] values() {
        return (WatchlistExpiry[]) $VALUES.clone();
    }

    public final String getExpiry() {
        return this.expiry;
    }

    public final Integer getIcon() {
        return this.icon;
    }

    public final int getStringId() {
        return this.stringId;
    }
}
