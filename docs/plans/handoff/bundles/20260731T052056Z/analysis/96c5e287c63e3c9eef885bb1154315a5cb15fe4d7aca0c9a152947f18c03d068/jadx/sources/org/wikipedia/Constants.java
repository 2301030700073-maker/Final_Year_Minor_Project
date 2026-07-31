package org.wikipedia;

import androidx.room.Room;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Constants {
    public static final List NON_LANGUAGE_SUBDOMAINS = Room.listOf((Object[]) new String[]{"donate", "thankyou", "quote", "textbook", "sources", "species", "commons", "meta", "abstract"});
    public static final WikiSite commonsWikiSite = new WikiSite("https://commons.wikimedia.org/");
    public static final WikiSite wikidataWikiSite = new WikiSite("https://www.wikidata.org/");

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImageEditType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ImageEditType[] $VALUES;
        public static final ImageEditType ADD_CAPTION;
        public static final ImageEditType ADD_CAPTION_TRANSLATION;
        public static final ImageEditType ADD_TAGS;

        static {
            ImageEditType imageEditType = new ImageEditType("ADD_CAPTION", 0);
            ADD_CAPTION = imageEditType;
            ImageEditType imageEditType2 = new ImageEditType("ADD_CAPTION_TRANSLATION", 1);
            ADD_CAPTION_TRANSLATION = imageEditType2;
            ImageEditType imageEditType3 = new ImageEditType("ADD_TAGS", 2);
            ADD_TAGS = imageEditType3;
            ImageEditType[] imageEditTypeArr = {imageEditType, imageEditType2, imageEditType3};
            $VALUES = imageEditTypeArr;
            $ENTRIES = new EnumEntriesList(imageEditTypeArr);
        }

        public static ImageEditType valueOf(String str) {
            return (ImageEditType) Enum.valueOf(ImageEditType.class, str);
        }

        public static ImageEditType[] values() {
            return (ImageEditType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InvokeSource {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ InvokeSource[] $VALUES;
        public static final InvokeSource ACTIVITY_TAB;
        public static final InvokeSource ANNOUNCEMENT;
        public static final InvokeSource APP_SHORTCUTS;
        public static final InvokeSource ARCHIVED_TALK_ACTIVITY;
        public static final InvokeSource BOOKMARK_BUTTON;
        public static final InvokeSource CONTEXT_MENU;
        public static final InvokeSource DID_YOU_KNOW;
        public static final InvokeSource DIFF_ACTIVITY;
        public static final InvokeSource EDIT_ACTIVITY;
        public static final InvokeSource EDIT_ADD_IMAGE;
        public static final InvokeSource FEED;
        public static final InvokeSource FEED_BAR;
        public static final InvokeSource FEED_INTEREST_SELECTION;
        public static final InvokeSource FILE_PAGE_ACTIVITY;
        public static final InvokeSource GALLERY_ACTIVITY;
        public static final InvokeSource GAMES_HUB;
        public static final InvokeSource INTENT_PROCESS_TEXT;
        public static final InvokeSource INTENT_SHARE;
        public static final InvokeSource INTENT_UNKNOWN;
        public static final InvokeSource LEAD_IMAGE;
        public static final InvokeSource LINK_PREVIEW_MENU;
        public static final InvokeSource MOST_READ_ACTIVITY;
        public static final InvokeSource NAV_MENU;
        public static final InvokeSource NEWS_ACTIVITY;
        public static final InvokeSource NOTIFICATION;
        public static final InvokeSource ONBOARDING_DIALOG;
        public static final InvokeSource ON_THIS_DAY_ACTIVITY;
        public static final InvokeSource ON_THIS_DAY_CARD_BODY;
        public static final InvokeSource ON_THIS_DAY_CARD_FOOTER;
        public static final InvokeSource ON_THIS_DAY_CARD_YEAR;
        public static final InvokeSource ON_THIS_DAY_GAME_ACTIVITY;
        public static final InvokeSource PAGE_ACTION_TAB;
        public static final InvokeSource PAGE_ACTIVITY;
        public static final InvokeSource PAGE_DESCRIPTION_CTA;
        public static final InvokeSource PAGE_EDIT_HIGHLIGHT;
        public static final InvokeSource PAGE_EDIT_PENCIL;
        public static final InvokeSource PAGE_OVERFLOW_MENU;
        public static final InvokeSource PLACES;
        public static final InvokeSource RANDOM_ACTIVITY;
        public static final InvokeSource READING_LIST_ACTIVITY;
        public static final InvokeSource SEARCH;
        public static final InvokeSource SETTINGS;
        public static final InvokeSource SNACKBAR_ACTION;
        public static final InvokeSource SUGGESTED_EDITS;
        public static final InvokeSource SUGGESTED_EDITS_RECENT_EDITS;
        public static final InvokeSource TABS_ACTIVITY;
        public static final InvokeSource TALK_REPLY_ACTIVITY;
        public static final InvokeSource TALK_TOPICS_ACTIVITY;
        public static final InvokeSource TALK_TOPIC_ACTIVITY;
        public static final InvokeSource TOOLBAR;
        public static final InvokeSource USER_CONTRIB_ACTIVITY;
        public static final InvokeSource VOICE;
        public static final InvokeSource WATCHLIST_ACTIVITY;
        public static final InvokeSource WATCHLIST_FILTER_ACTIVITY;
        public static final InvokeSource WIDGET;
        private final String value;

        static {
            InvokeSource invokeSource = new InvokeSource(0, "ANNOUNCEMENT", "announcement");
            ANNOUNCEMENT = invokeSource;
            InvokeSource invokeSource2 = new InvokeSource(1, "APP_SHORTCUTS", "appShortcuts");
            APP_SHORTCUTS = invokeSource2;
            InvokeSource invokeSource3 = new InvokeSource(2, "ARCHIVED_TALK_ACTIVITY", "archivedTalkActivity");
            ARCHIVED_TALK_ACTIVITY = invokeSource3;
            InvokeSource invokeSource4 = new InvokeSource(3, "BOOKMARK_BUTTON", "bookmark");
            BOOKMARK_BUTTON = invokeSource4;
            InvokeSource invokeSource5 = new InvokeSource(4, "CONTEXT_MENU", "contextMenu");
            CONTEXT_MENU = invokeSource5;
            InvokeSource invokeSource6 = new InvokeSource(5, "DIFF_ACTIVITY", "diffActivity");
            DIFF_ACTIVITY = invokeSource6;
            InvokeSource invokeSource7 = new InvokeSource(6, "FEED", "feed");
            FEED = invokeSource7;
            InvokeSource invokeSource8 = new InvokeSource(7, "FEED_BAR", "feedBar");
            FEED_BAR = invokeSource8;
            InvokeSource invokeSource9 = new InvokeSource(8, "FILE_PAGE_ACTIVITY", "filePage");
            FILE_PAGE_ACTIVITY = invokeSource9;
            InvokeSource invokeSource10 = new InvokeSource(9, "GALLERY_ACTIVITY", "gallery");
            GALLERY_ACTIVITY = invokeSource10;
            InvokeSource invokeSource11 = new InvokeSource(10, "INTENT_PROCESS_TEXT", "intentProcessText");
            INTENT_PROCESS_TEXT = invokeSource11;
            InvokeSource invokeSource12 = new InvokeSource(11, "INTENT_SHARE", "intentShare");
            INTENT_SHARE = invokeSource12;
            InvokeSource invokeSource13 = new InvokeSource(12, "INTENT_UNKNOWN", "intentUnknown");
            INTENT_UNKNOWN = invokeSource13;
            InvokeSource invokeSource14 = new InvokeSource(13, "LEAD_IMAGE", "leadImage");
            LEAD_IMAGE = invokeSource14;
            InvokeSource invokeSource15 = new InvokeSource(14, "LINK_PREVIEW_MENU", "linkPreviewMenu");
            LINK_PREVIEW_MENU = invokeSource15;
            InvokeSource invokeSource16 = new InvokeSource(15, "MOST_READ_ACTIVITY", "mostRead");
            MOST_READ_ACTIVITY = invokeSource16;
            InvokeSource invokeSource17 = new InvokeSource(16, "NAV_MENU", "navMenu");
            NAV_MENU = invokeSource17;
            InvokeSource invokeSource18 = new InvokeSource(17, "NEWS_ACTIVITY", "news");
            NEWS_ACTIVITY = invokeSource18;
            InvokeSource invokeSource19 = new InvokeSource(18, "NOTIFICATION", "notification");
            NOTIFICATION = invokeSource19;
            InvokeSource invokeSource20 = new InvokeSource(19, "ON_THIS_DAY_ACTIVITY", "onThisDay");
            ON_THIS_DAY_ACTIVITY = invokeSource20;
            InvokeSource invokeSource21 = new InvokeSource(20, "ON_THIS_DAY_CARD_BODY", "onThisDayCard");
            ON_THIS_DAY_CARD_BODY = invokeSource21;
            InvokeSource invokeSource22 = new InvokeSource(21, "ON_THIS_DAY_CARD_FOOTER", "onThisDayCardFooter");
            ON_THIS_DAY_CARD_FOOTER = invokeSource22;
            InvokeSource invokeSource23 = new InvokeSource(22, "ON_THIS_DAY_CARD_YEAR", "onThisDayCardYear");
            ON_THIS_DAY_CARD_YEAR = invokeSource23;
            InvokeSource invokeSource24 = new InvokeSource(23, "ONBOARDING_DIALOG", "onboarding");
            ONBOARDING_DIALOG = invokeSource24;
            InvokeSource invokeSource25 = new InvokeSource(24, "PAGE_ACTION_TAB", "pageActionTab");
            PAGE_ACTION_TAB = invokeSource25;
            InvokeSource invokeSource26 = new InvokeSource(25, "PAGE_ACTIVITY", "page");
            PAGE_ACTIVITY = invokeSource26;
            InvokeSource invokeSource27 = new InvokeSource(26, "PAGE_DESCRIPTION_CTA", "pageDescCta");
            PAGE_DESCRIPTION_CTA = invokeSource27;
            InvokeSource invokeSource28 = new InvokeSource(27, "PAGE_EDIT_PENCIL", "pageEditPencil");
            PAGE_EDIT_PENCIL = invokeSource28;
            InvokeSource invokeSource29 = new InvokeSource(28, "PAGE_EDIT_HIGHLIGHT", "pageEditHighlight");
            PAGE_EDIT_HIGHLIGHT = invokeSource29;
            InvokeSource invokeSource30 = new InvokeSource(29, "PAGE_OVERFLOW_MENU", "pageOverflowMenu");
            PAGE_OVERFLOW_MENU = invokeSource30;
            InvokeSource invokeSource31 = new InvokeSource(30, "PLACES", "places");
            PLACES = invokeSource31;
            InvokeSource invokeSource32 = new InvokeSource(31, "RANDOM_ACTIVITY", "random");
            RANDOM_ACTIVITY = invokeSource32;
            InvokeSource invokeSource33 = new InvokeSource(32, "READING_LIST_ACTIVITY", "readingList");
            READING_LIST_ACTIVITY = invokeSource33;
            InvokeSource invokeSource34 = new InvokeSource(33, "SEARCH", "search");
            SEARCH = invokeSource34;
            InvokeSource invokeSource35 = new InvokeSource(34, "SETTINGS", "settings");
            SETTINGS = invokeSource35;
            InvokeSource invokeSource36 = new InvokeSource(35, "SNACKBAR_ACTION", "snackbar");
            SNACKBAR_ACTION = invokeSource36;
            InvokeSource invokeSource37 = new InvokeSource(36, "SUGGESTED_EDITS", "suggestedEdits");
            SUGGESTED_EDITS = invokeSource37;
            InvokeSource invokeSource38 = new InvokeSource(37, "TABS_ACTIVITY", "tabsActivity");
            TABS_ACTIVITY = invokeSource38;
            InvokeSource invokeSource39 = new InvokeSource(38, "TALK_TOPICS_ACTIVITY", "talkTopicsActivity");
            TALK_TOPICS_ACTIVITY = invokeSource39;
            InvokeSource invokeSource40 = new InvokeSource(39, "TALK_TOPIC_ACTIVITY", "talkTopicActivity");
            TALK_TOPIC_ACTIVITY = invokeSource40;
            InvokeSource invokeSource41 = new InvokeSource(40, "TALK_REPLY_ACTIVITY", "talkReplyActivity");
            TALK_REPLY_ACTIVITY = invokeSource41;
            InvokeSource invokeSource42 = new InvokeSource(41, "EDIT_ACTIVITY", "editActivity");
            EDIT_ACTIVITY = invokeSource42;
            InvokeSource invokeSource43 = new InvokeSource(42, "TOOLBAR", "toolbar");
            TOOLBAR = invokeSource43;
            InvokeSource invokeSource44 = new InvokeSource(43, "VOICE", "voice");
            VOICE = invokeSource44;
            InvokeSource invokeSource45 = new InvokeSource(44, "WATCHLIST_ACTIVITY", "watchlist");
            WATCHLIST_ACTIVITY = invokeSource45;
            InvokeSource invokeSource46 = new InvokeSource(45, "WATCHLIST_FILTER_ACTIVITY", "watchlistFilter");
            WATCHLIST_FILTER_ACTIVITY = invokeSource46;
            InvokeSource invokeSource47 = new InvokeSource(46, "WIDGET", "widget");
            WIDGET = invokeSource47;
            InvokeSource invokeSource48 = new InvokeSource(47, "USER_CONTRIB_ACTIVITY", "userContribActivity");
            USER_CONTRIB_ACTIVITY = invokeSource48;
            InvokeSource invokeSource49 = new InvokeSource(48, "EDIT_ADD_IMAGE", "editAddImage");
            EDIT_ADD_IMAGE = invokeSource49;
            InvokeSource invokeSource50 = new InvokeSource(49, "SUGGESTED_EDITS_RECENT_EDITS", "suggestedEditsRecentEdits");
            SUGGESTED_EDITS_RECENT_EDITS = invokeSource50;
            InvokeSource invokeSource51 = new InvokeSource(50, "ON_THIS_DAY_GAME_ACTIVITY", "onThisDayGame");
            ON_THIS_DAY_GAME_ACTIVITY = invokeSource51;
            InvokeSource invokeSource52 = new InvokeSource(51, "ACTIVITY_TAB", "activityTab");
            ACTIVITY_TAB = invokeSource52;
            InvokeSource invokeSource53 = new InvokeSource(52, "GAMES_HUB", "gamesHub");
            GAMES_HUB = invokeSource53;
            InvokeSource invokeSource54 = new InvokeSource(53, "FEED_INTEREST_SELECTION", "feedInterestSelection");
            FEED_INTEREST_SELECTION = invokeSource54;
            InvokeSource invokeSource55 = new InvokeSource(54, "DID_YOU_KNOW", "didYouKnow");
            DID_YOU_KNOW = invokeSource55;
            InvokeSource[] invokeSourceArr = {invokeSource, invokeSource2, invokeSource3, invokeSource4, invokeSource5, invokeSource6, invokeSource7, invokeSource8, invokeSource9, invokeSource10, invokeSource11, invokeSource12, invokeSource13, invokeSource14, invokeSource15, invokeSource16, invokeSource17, invokeSource18, invokeSource19, invokeSource20, invokeSource21, invokeSource22, invokeSource23, invokeSource24, invokeSource25, invokeSource26, invokeSource27, invokeSource28, invokeSource29, invokeSource30, invokeSource31, invokeSource32, invokeSource33, invokeSource34, invokeSource35, invokeSource36, invokeSource37, invokeSource38, invokeSource39, invokeSource40, invokeSource41, invokeSource42, invokeSource43, invokeSource44, invokeSource45, invokeSource46, invokeSource47, invokeSource48, invokeSource49, invokeSource50, invokeSource51, invokeSource52, invokeSource53, invokeSource54, invokeSource55};
            $VALUES = invokeSourceArr;
            $ENTRIES = new EnumEntriesList(invokeSourceArr);
        }

        public InvokeSource(int i, String str, String str2) {
            this.value = str2;
        }

        public static InvokeSource valueOf(String str) {
            return (InvokeSource) Enum.valueOf(InvokeSource.class, str);
        }

        public static InvokeSource[] values() {
            return (InvokeSource[]) $VALUES.clone();
        }

        public final String getValue() {
            return this.value;
        }
    }
}
