package org.wikipedia.notifications;

import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.text.StringsKt__StringsJVMKt;
import org.wikipedia.R;
import org.wikipedia.model.EnumCode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCategory implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotificationCategory[] $VALUES;
    public static final NotificationCategory ALPHA_BUILD_CHECKER;
    public static final NotificationCategory ARTICLE_LINKED;
    public static final Companion Companion;
    public static final NotificationCategory EDIT_THANK;
    public static final NotificationCategory EDIT_USER_TALK;
    public static final NotificationCategory EMAIL_USER;
    private static final List<NotificationCategory> FILTERS_GROUP;
    public static final NotificationCategory GAMES;
    public static final NotificationCategory LOGIN_FAIL;
    public static final NotificationCategory MENTION;
    private static final List<NotificationCategory> MENTIONS_GROUP;
    public static final NotificationCategory MILESTONE_EDIT;
    public static final NotificationCategory READING_LIST_SYNCING;
    public static final NotificationCategory RECOMMENDED_READING_LISTS;
    public static final NotificationCategory REVERTED;
    public static final NotificationCategory SYNCING;
    public static final NotificationCategory SYSTEM;
    public static final NotificationCategory USER_RIGHTS;
    private final int description;
    private final String group;
    private final int iconColor;
    private final int iconResId;
    private final String id;
    private final int importance;
    private final int title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static NotificationCategory find(String str) {
            Object obj;
            str.getClass();
            Iterator<E> it = NotificationCategory.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                NotificationCategory notificationCategory = (NotificationCategory) obj;
                if (str.equals(notificationCategory.getId()) || StringsKt__StringsJVMKt.startsWith(str, notificationCategory.getId(), false)) {
                    break;
                }
            }
            NotificationCategory notificationCategory2 = (NotificationCategory) obj;
            return notificationCategory2 == null ? (NotificationCategory) ((EnumEntriesList) NotificationCategory.getEntries()).get(0) : notificationCategory2;
        }

        public static boolean isFiltersGroup(String str) {
            Object obj;
            str.getClass();
            Iterator it = NotificationCategory.FILTERS_GROUP.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (StringsKt__StringsJVMKt.startsWith(str, ((NotificationCategory) obj).getId(), false)) {
                    break;
                }
            }
            return obj != null;
        }
    }

    static {
        NotificationCategory notificationCategory = new NotificationCategory("SYSTEM", 0, "system", R.string.preference_title_notification_system, R.string.preference_summary_notification_system, R.drawable.ic_settings_black_24dp, 0, 112);
        SYSTEM = notificationCategory;
        NotificationCategory notificationCategory2 = new NotificationCategory("MILESTONE_EDIT", 1, "thank-you-edit", R.string.preference_title_notification_milestone, R.string.preference_summary_notification_milestone, R.drawable.ic_notification_milestone, 0, 112);
        MILESTONE_EDIT = notificationCategory2;
        NotificationCategory notificationCategory3 = new NotificationCategory("EDIT_USER_TALK", 2, "edit-user-talk", R.string.preference_title_notification_user_talk, R.string.preference_summary_notification_user_talk, R.drawable.ic_notification_user_talk, 4, 80);
        EDIT_USER_TALK = notificationCategory3;
        NotificationCategory notificationCategory4 = new NotificationCategory("EDIT_THANK", 3, "edit-thank", R.string.preference_title_notification_thanks, R.string.preference_summary_notification_thanks, R.drawable.ic_notification_thanks, 0, 112);
        EDIT_THANK = notificationCategory4;
        NotificationCategory notificationCategory5 = new NotificationCategory("REVERTED", 4, "reverted", R.string.preference_title_notification_revert, R.string.preference_summary_notification_revert, R.drawable.ic_notification_reverted_edit, 4, 64);
        REVERTED = notificationCategory5;
        NotificationCategory notificationCategory6 = new NotificationCategory("LOGIN_FAIL", 5, "login-fail", R.string.preference_title_notification_login_fail, R.string.preference_summary_notification_login_fail, R.drawable.ic_notification_alert, 0, 96);
        LOGIN_FAIL = notificationCategory6;
        NotificationCategory notificationCategory7 = new NotificationCategory("MENTION", 6, "mention", R.string.preference_title_notification_mention, R.string.preference_summary_notification_mention, R.drawable.ic_notification_mention, 4, 80);
        MENTION = notificationCategory7;
        NotificationCategory notificationCategory8 = new NotificationCategory("EMAIL_USER", 7, "emailuser", R.string.preference_title_notification_email_user, R.string.preference_summary_notification_email_user, R.drawable.ic_notification_email, 4, 80);
        EMAIL_USER = notificationCategory8;
        NotificationCategory notificationCategory9 = new NotificationCategory("USER_RIGHTS", 8, "user-rights", R.string.preference_title_notification_user_rights, R.string.preference_summary_notification_user_rights, R.drawable.ic_notification_user_rights, 4, 80);
        USER_RIGHTS = notificationCategory9;
        NotificationCategory notificationCategory10 = new NotificationCategory("ARTICLE_LINKED", 9, "article-linked", R.string.preference_title_notification_article_linked, R.string.preference_summary_notification_article_linked, R.drawable.ic_notification_page_link, 0, 112);
        ARTICLE_LINKED = notificationCategory10;
        NotificationCategory notificationCategory11 = new NotificationCategory("ALPHA_BUILD_CHECKER", 10, "alpha-builder-checker", R.string.alpha_update_notification_title, R.string.alpha_update_notification_text, R.drawable.ic_w_transparent, 2, 16);
        ALPHA_BUILD_CHECKER = notificationCategory11;
        NotificationCategory notificationCategory12 = new NotificationCategory("READING_LIST_SYNCING", 11, "reading-list-syncing", R.string.notification_syncing_reading_list_channel_title, R.string.notification_syncing_reading_list_channel_description, android.R.drawable.ic_popup_sync, 2, 16);
        READING_LIST_SYNCING = notificationCategory12;
        NotificationCategory notificationCategory13 = new NotificationCategory("SYNCING", 12, "syncing", R.string.notification_channel_title, R.string.notification_channel_description, android.R.drawable.stat_sys_download, 2, 16);
        SYNCING = notificationCategory13;
        NotificationCategory notificationCategory14 = new NotificationCategory("RECOMMENDED_READING_LISTS", 13, "recommended-reading-lists", R.string.recommended_reading_list_title, R.string.recommended_reading_list_onboarding_card_title, R.drawable.ic_bookmark_white_24dp, 2, 16);
        RECOMMENDED_READING_LISTS = notificationCategory14;
        NotificationCategory notificationCategory15 = new NotificationCategory("GAMES", 14, "games", R.string.on_this_day_game_feed_entry_card_heading, R.string.on_this_day_game_menu_notifications, R.drawable.ic_dice_24, 2, 16);
        GAMES = notificationCategory15;
        NotificationCategory[] notificationCategoryArr = {notificationCategory, notificationCategory2, notificationCategory3, notificationCategory4, notificationCategory5, notificationCategory6, notificationCategory7, notificationCategory8, notificationCategory9, notificationCategory10, notificationCategory11, notificationCategory12, notificationCategory13, notificationCategory14, notificationCategory15};
        $VALUES = notificationCategoryArr;
        $ENTRIES = new EnumEntriesList(notificationCategoryArr);
        Companion = new Companion();
        MENTIONS_GROUP = Room.listOf((Object[]) new NotificationCategory[]{notificationCategory7, notificationCategory3, notificationCategory8, notificationCategory9, notificationCategory5});
        FILTERS_GROUP = Room.listOf((Object[]) new NotificationCategory[]{notificationCategory3, notificationCategory7, notificationCategory8, notificationCategory5, notificationCategory9, notificationCategory4, notificationCategory2, notificationCategory6, notificationCategory, notificationCategory10});
    }

    public NotificationCategory(String str, int i, String str2, int i2, int i3, int i4, int i5, int i6) {
        int i7 = (i6 & 16) != 0 ? R.attr.progressive_color : R.attr.colorError;
        i5 = (i6 & 32) != 0 ? 3 : i5;
        String str3 = (i6 & 64) != 0 ? "WIKIPEDIA_NOTIFICATIONS" : "WIKIPEDIA_NOTIFICATIONS_OTHER";
        this.id = str2;
        this.title = i2;
        this.description = i3;
        this.iconResId = i4;
        this.iconColor = i7;
        this.importance = i5;
        this.group = str3;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static NotificationCategory valueOf(String str) {
        return (NotificationCategory) Enum.valueOf(NotificationCategory.class, str);
    }

    public static NotificationCategory[] values() {
        return (NotificationCategory[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return ordinal();
    }

    public final int getDescription() {
        return this.description;
    }

    public final String getGroup() {
        return this.group;
    }

    public final int getIconColor() {
        return this.iconColor;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getId() {
        return this.id;
    }

    public final int getImportance() {
        return this.importance;
    }

    public final int getTitle() {
        return this.title;
    }
}
