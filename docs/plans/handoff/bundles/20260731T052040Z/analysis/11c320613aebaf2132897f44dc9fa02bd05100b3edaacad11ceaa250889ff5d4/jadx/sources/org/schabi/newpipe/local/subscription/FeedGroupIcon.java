package org.schabi.newpipe.local.subscription;

import kotlin.enums.EnumEntriesList;
import org.schabi.newpipe.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupIcon {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ FeedGroupIcon[] $VALUES;
    public static final FeedGroupIcon ALL;
    public static final FeedGroupIcon WHATS_NEW;
    private final int drawableResource;
    private final int id;

    static {
        FeedGroupIcon feedGroupIcon = new FeedGroupIcon(0, "ALL", 0, R.drawable.ic_asterisk);
        ALL = feedGroupIcon;
        FeedGroupIcon feedGroupIcon2 = new FeedGroupIcon(1, "MUSIC", 1, R.drawable.ic_music_note);
        FeedGroupIcon feedGroupIcon3 = new FeedGroupIcon(2, "EDUCATION", 2, R.drawable.ic_school);
        FeedGroupIcon feedGroupIcon4 = new FeedGroupIcon(3, "FITNESS", 3, R.drawable.ic_fitness_center);
        FeedGroupIcon feedGroupIcon5 = new FeedGroupIcon(4, "SPACE", 4, R.drawable.ic_telescope);
        FeedGroupIcon feedGroupIcon6 = new FeedGroupIcon(5, "COMPUTER", 5, R.drawable.ic_computer);
        FeedGroupIcon feedGroupIcon7 = new FeedGroupIcon(6, "GAMING", 6, R.drawable.ic_videogame_asset);
        FeedGroupIcon feedGroupIcon8 = new FeedGroupIcon(7, "SPORTS", 7, R.drawable.ic_directions_bike);
        FeedGroupIcon feedGroupIcon9 = new FeedGroupIcon(8, "NEWS", 8, R.drawable.ic_campaign);
        FeedGroupIcon feedGroupIcon10 = new FeedGroupIcon(9, "FAVORITES", 9, R.drawable.ic_favorite);
        FeedGroupIcon feedGroupIcon11 = new FeedGroupIcon(10, "CAR", 10, R.drawable.ic_directions_car);
        FeedGroupIcon feedGroupIcon12 = new FeedGroupIcon(11, "MOTORCYCLE", 11, R.drawable.ic_motorcycle);
        FeedGroupIcon feedGroupIcon13 = new FeedGroupIcon(12, "TREND", 12, R.drawable.ic_trending_up);
        FeedGroupIcon feedGroupIcon14 = new FeedGroupIcon(13, "MOVIE", 13, R.drawable.ic_movie);
        FeedGroupIcon feedGroupIcon15 = new FeedGroupIcon(14, "BACKUP", 14, R.drawable.ic_backup);
        FeedGroupIcon feedGroupIcon16 = new FeedGroupIcon(15, "ART", 15, R.drawable.ic_palette);
        FeedGroupIcon feedGroupIcon17 = new FeedGroupIcon(16, "PERSON", 16, R.drawable.ic_person);
        FeedGroupIcon feedGroupIcon18 = new FeedGroupIcon(17, "PEOPLE", 17, R.drawable.ic_people);
        FeedGroupIcon feedGroupIcon19 = new FeedGroupIcon(18, "MONEY", 18, R.drawable.ic_attach_money);
        FeedGroupIcon feedGroupIcon20 = new FeedGroupIcon(19, "KIDS", 19, R.drawable.ic_child_care);
        FeedGroupIcon feedGroupIcon21 = new FeedGroupIcon(20, "FOOD", 20, R.drawable.ic_fastfood);
        FeedGroupIcon feedGroupIcon22 = new FeedGroupIcon(21, "SMILE", 21, R.drawable.ic_insert_emoticon);
        FeedGroupIcon feedGroupIcon23 = new FeedGroupIcon(22, "EXPLORE", 22, R.drawable.ic_explore);
        FeedGroupIcon feedGroupIcon24 = new FeedGroupIcon(23, "RESTAURANT", 23, R.drawable.ic_restaurant);
        FeedGroupIcon feedGroupIcon25 = new FeedGroupIcon(24, "MIC", 24, R.drawable.ic_mic);
        FeedGroupIcon feedGroupIcon26 = new FeedGroupIcon(25, "HEADSET", 25, R.drawable.ic_headset);
        FeedGroupIcon feedGroupIcon27 = new FeedGroupIcon(26, "RADIO", 26, R.drawable.ic_radio);
        FeedGroupIcon feedGroupIcon28 = new FeedGroupIcon(27, "SHOPPING_CART", 27, R.drawable.ic_shopping_cart);
        FeedGroupIcon feedGroupIcon29 = new FeedGroupIcon(28, "WATCH_LATER", 28, R.drawable.ic_watch_later);
        FeedGroupIcon feedGroupIcon30 = new FeedGroupIcon(29, "WORK", 29, R.drawable.ic_work);
        FeedGroupIcon feedGroupIcon31 = new FeedGroupIcon(30, "HOT", 30, R.drawable.ic_whatshot);
        FeedGroupIcon feedGroupIcon32 = new FeedGroupIcon(31, "CHANNEL", 31, R.drawable.ic_tv);
        FeedGroupIcon feedGroupIcon33 = new FeedGroupIcon(32, "BOOKMARK", 32, R.drawable.ic_bookmark);
        FeedGroupIcon feedGroupIcon34 = new FeedGroupIcon(33, "PETS", 33, R.drawable.ic_pets);
        FeedGroupIcon feedGroupIcon35 = new FeedGroupIcon(34, "WORLD", 34, R.drawable.ic_public);
        FeedGroupIcon feedGroupIcon36 = new FeedGroupIcon(35, "STAR", 35, R.drawable.ic_stars);
        FeedGroupIcon feedGroupIcon37 = new FeedGroupIcon(36, "SUN", 36, R.drawable.ic_wb_sunny);
        FeedGroupIcon feedGroupIcon38 = new FeedGroupIcon(37, "RSS", 37, R.drawable.ic_rss_feed);
        FeedGroupIcon feedGroupIcon39 = new FeedGroupIcon(38, "WHATS_NEW", 38, R.drawable.ic_subscriptions);
        WHATS_NEW = feedGroupIcon39;
        FeedGroupIcon[] feedGroupIconArr = {feedGroupIcon, feedGroupIcon2, feedGroupIcon3, feedGroupIcon4, feedGroupIcon5, feedGroupIcon6, feedGroupIcon7, feedGroupIcon8, feedGroupIcon9, feedGroupIcon10, feedGroupIcon11, feedGroupIcon12, feedGroupIcon13, feedGroupIcon14, feedGroupIcon15, feedGroupIcon16, feedGroupIcon17, feedGroupIcon18, feedGroupIcon19, feedGroupIcon20, feedGroupIcon21, feedGroupIcon22, feedGroupIcon23, feedGroupIcon24, feedGroupIcon25, feedGroupIcon26, feedGroupIcon27, feedGroupIcon28, feedGroupIcon29, feedGroupIcon30, feedGroupIcon31, feedGroupIcon32, feedGroupIcon33, feedGroupIcon34, feedGroupIcon35, feedGroupIcon36, feedGroupIcon37, feedGroupIcon38, feedGroupIcon39};
        $VALUES = feedGroupIconArr;
        $ENTRIES = new EnumEntriesList(feedGroupIconArr);
    }

    public FeedGroupIcon(int i, String str, int i2, int i3) {
        this.id = i2;
        this.drawableResource = i3;
    }

    public static FeedGroupIcon valueOf(String str) {
        return (FeedGroupIcon) Enum.valueOf(FeedGroupIcon.class, str);
    }

    public static FeedGroupIcon[] values() {
        return (FeedGroupIcon[]) $VALUES.clone();
    }

    public final int getDrawableRes() {
        return this.drawableResource;
    }

    public final int getDrawableResource() {
        return this.drawableResource;
    }

    public final int getId() {
        return this.id;
    }
}
