package com.fsck.k9.ui.settings.general;

import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.preference.AnimationPreference;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.BackgroundOps;
import net.thunderbird.core.preference.BodyContentType;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.LockScreenNotificationVisibility;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;
import net.thunderbird.core.preference.debugging.DebuggingSettings;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.preference.interaction.PostMarkAsUnreadNavigation;
import net.thunderbird.core.preference.network.NetworkSettings;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.preference.privacy.PrivacySettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsDataStore extends IntRectKt {
    public final AppLanguageManager appLanguageManager;
    public final GeneralSettingsManager generalSettingsManager;
    public final K9JobManager jobManager;
    public boolean skipSaveSettings;

    public GeneralSettingsDataStore(K9JobManager k9JobManager, AppLanguageManager appLanguageManager, GeneralSettingsManager generalSettingsManager, NoOpTelemetryManager noOpTelemetryManager) {
        this.jobManager = k9JobManager;
        this.appLanguageManager = appLanguageManager;
        this.generalSettingsManager = generalSettingsManager;
    }

    public static SubTheme stringToSubTheme(String str) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -1243020381) {
                if (hashCode != 3075958) {
                    if (hashCode == 102970646 && str.equals("light")) {
                        return SubTheme.LIGHT;
                    }
                } else if (str.equals("dark")) {
                    return SubTheme.DARK;
                }
            } else if (str.equals("global")) {
                return SubTheme.USE_GLOBAL;
            }
        }
        throw new AssertionError();
    }

    public static String swipeActionToString(SwipeAction swipeAction) {
        switch (swipeAction.ordinal()) {
            case 0:
                return "none";
            case 1:
                return "toggle_selection";
            case 2:
                return "toggle_read";
            case 3:
                return "toggle_star";
            case 4:
            case 5:
            case 6:
                return "archive";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "delete";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "spam";
            case 9:
                return "move";
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final boolean getBoolean(String str, boolean z) {
        str.getClass();
        GeneralSettings config = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig();
        DisplaySettings displaySettings = config.display;
        DisplayCoreSettings displayCoreSettings = displaySettings.coreSettings;
        DebuggingSettings debuggingSettings = config.debugging;
        DisplayInboxSettings displayInboxSettings = displaySettings.inboxSettings;
        InteractionSettings interactionSettings = config.interaction;
        NotificationPreference notificationPreference = config.notification;
        PrivacySettings privacySettings = config.privacy;
        DisplayVisualSettings displayVisualSettings = displaySettings.visualSettings;
        DisplayMessageListSettings displayMessageListSettings = displayVisualSettings.messageListSettings;
        switch (str.hashCode()) {
            case -1952822073:
                if (str.equals("messagelist_stars")) {
                    return displayInboxSettings.isShowMessageListStars;
                }
                return z;
            case -1852269283:
                if (str.equals("messagelist_show_correspondent_names")) {
                    return displayMessageListSettings.isShowCorrespondentNames;
                }
                return z;
            case -1613750259:
                if (str.equals("show_starred_count")) {
                    return displayInboxSettings.isShowStarredCount;
                }
                return z;
            case -1395862350:
                if (str.equals("messagelist_show_contact_name")) {
                    return displayMessageListSettings.isShowContactName;
                }
                return z;
            case -1357008188:
                if (str.equals("drawerExpandAllFolder")) {
                    return displayVisualSettings.drawerExpandAllFolder;
                }
                return z;
            case -1296343046:
                if (str.equals("quiet_time_enabled")) {
                    return notificationPreference.isQuietTimeEnabled;
                }
                return z;
            case -1274954296:
                if (str.equals("disable_notifications_during_quiet_time")) {
                    return !notificationPreference.isNotificationDuringQuietTimeEnabled;
                }
                return z;
            case -1103776843:
                if (str.equals("messagelist_background_as_unread_indicator")) {
                    return displayMessageListSettings.isUseBackgroundAsUnreadIndicator;
                }
                return z;
            case -705589793:
                if (str.equals("privacy_hide_timezone")) {
                    return privacySettings.isHideTimeZone;
                }
                return z;
            case -514472311:
                if (str.equals("messageview_fixedwidth_font")) {
                    return displayVisualSettings.isUseMessageViewFixedWidthFont;
                }
                return z;
            case -145742717:
                if (str.equals("messagelist_change_contact_name_color")) {
                    return displayMessageListSettings.isChangeContactNameColor;
                }
                return z;
            case -118917900:
                if (str.equals("privacy_hide_useragent")) {
                    return privacySettings.isHideUserAgent;
                }
                return z;
            case -49410303:
                if (str.equals("messagelist_colorize_missing_contact_pictures")) {
                    return displayMessageListSettings.isColorizeMissingContactPictures;
                }
                return z;
            case 227067599:
                if (str.equals("sync_debug_logging")) {
                    return debuggingSettings.isSyncLoggingEnabled;
                }
                return z;
            case 263487857:
                if (str.equals("notification_show_contact_picture")) {
                    return notificationPreference.isShowContactPictureInNotification;
                }
                return z;
            case 568395123:
                if (str.equals("debug_logging")) {
                    return debuggingSettings.isDebugLoggingEnabled;
                }
                return z;
            case 858449147:
                if (str.equals("threaded_view")) {
                    return displayInboxSettings.isThreadedViewEnabled;
                }
                return z;
            case 1183884856:
                if (str.equals("notification_summary_delete")) {
                    return notificationPreference.isSummaryDeleteActionEnabled;
                }
                return z;
            case 1280081879:
                if (str.equals("show_unified_inbox")) {
                    return displayInboxSettings.isShowUnifiedInbox;
                }
                return z;
            case 1316453594:
                if (str.equals("messagelist_sender_above_subject")) {
                    return displayInboxSettings.isMessageListSenderAboveSubject;
                }
                return z;
            case 1358330877:
                if (str.equals("enable_telemetry")) {
                    return K9.isTelemetryEnabled;
                }
                return z;
            case 1574420882:
                if (str.equals("fixed_message_view_theme")) {
                    return displayCoreSettings.fixedMessageViewTheme;
                }
                return z;
            case 1715332185:
                if (str.equals("volume_navigation")) {
                    return interactionSettings.useVolumeKeysForNavigation;
                }
                return z;
            case 1733459319:
                if (str.equals("messagelist_show_contact_picture")) {
                    return displayMessageListSettings.isShowContactPicture;
                }
                return z;
            case 1772014262:
                if (str.equals("sensitive_logging")) {
                    return debuggingSettings.isSensitiveLoggingEnabled;
                }
                return z;
            case 1807008769:
                if (str.equals("show_compose_button")) {
                    return displayInboxSettings.isShowComposeButtonOnMessageList;
                }
                return z;
            case 1890768758:
                if (str.equals("messageview_autofit_width")) {
                    return displayVisualSettings.isAutoFitWidth;
                }
                return z;
            default:
                return z;
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final int getInt(String str, int i) {
        return Intrinsics.areEqual(str, "messagelist_contact_name_color") ? ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().display.visualSettings.messageListSettings.contactNameColor : Intrinsics.areEqual(str, "message_view_content_font_slider") ? K9.fontSizes.messageViewContentAsPercent : i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final String getString(String str, String str2) {
        str.getClass();
        GeneralSettings config = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig();
        DisplaySettings displaySettings = config.display;
        DisplayCoreSettings displayCoreSettings = displaySettings.coreSettings;
        InteractionSettings interactionSettings = config.interaction;
        NotificationPreference notificationPreference = config.notification;
        NetworkSettings networkSettings = config.network;
        DisplayVisualSettings displayVisualSettings = displaySettings.visualSettings;
        DisplayMessageListSettings displayMessageListSettings = displayVisualSettings.messageListSettings;
        switch (str.hashCode()) {
            case -2014896457:
                if (str.equals("message_view_sender_font")) {
                    return String.valueOf(K9.fontSizes.messageViewSender);
                }
                return str2;
            case -1723797737:
                if (str.equals("message_list_date_font")) {
                    return String.valueOf(K9.fontSizes.messageListDate);
                }
                return str2;
            case -1644404178:
                if (str.equals("messagelist_preview_lines")) {
                    return String.valueOf(displayMessageListSettings.previewLines);
                }
                return str2;
            case -1613589672:
                if (str.equals("language")) {
                    return ((DisplayCoreSettings) this.appLanguageManager.displayCoreSettingsPreferenceManager.getConfig()).appLanguage;
                }
                return str2;
            case -1440676337:
                if (str.equals("message_view_account_name_font")) {
                    return String.valueOf(K9.fontSizes.messageViewAccountName);
                }
                return str2;
            case -1364272200:
                if (str.equals("swipe_action_right")) {
                    return swipeActionToString(interactionSettings.swipeActions.rightAction);
                }
                return str2;
            case -1300210817:
                if (str.equals("message_list_density")) {
                    return displayMessageListSettings.uiDensity.toString();
                }
                return str2;
            case -1092494242:
                if (str.equals("message_view_date_font")) {
                    return String.valueOf(K9.fontSizes.messageViewDate);
                }
                return str2;
            case -882378632:
                if (str.equals("quiet_time_starts")) {
                    return notificationPreference.quietTimeStarts;
                }
                return str2;
            case -748501852:
                if (str.equals("message_view_subject_font")) {
                    return String.valueOf(K9.fontSizes.messageViewSubject);
                }
                return str2;
            case -690989782:
                if (str.equals("post_mark_as_unread_navigation")) {
                    return interactionSettings.messageViewPostMarkAsUnreadNavigation.name();
                }
                return str2;
            case -501899041:
                if (str.equals("quiet_time_ends")) {
                    return notificationPreference.quietTimeEnds;
                }
                return str2;
            case -249132213:
                if (str.equals("message_list_subject_font")) {
                    return String.valueOf(K9.fontSizes.messageListSubject);
                }
                return str2;
            case -102449617:
                if (str.equals("message_list_preview_font")) {
                    return String.valueOf(K9.fontSizes.messageListPreview);
                }
                return str2;
            case 110327241:
                if (str.equals("theme")) {
                    int ordinal = displayCoreSettings.appTheme.ordinal();
                    if (ordinal == 0) {
                        return "light";
                    }
                    if (ordinal == 1) {
                        return "dark";
                    }
                    if (ordinal == 2) {
                        return "follow_system";
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                return str2;
            case 304655250:
                if (str.equals("message_view_recipients_font")) {
                    return String.valueOf(K9.fontSizes.messageViewRecipients);
                }
                return str2;
            case 314070383:
                if (str.equals("animations")) {
                    int ordinal2 = displayVisualSettings.animationPreference.ordinal();
                    if (ordinal2 == 0) {
                        return "ON";
                    }
                    if (ordinal2 == 1) {
                        return "OFF";
                    }
                    if (ordinal2 == 2) {
                        return "FOLLOW_SYSTEM";
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                return str2;
            case 371450603:
                if (str.equals("swipe_action_left")) {
                    return swipeActionToString(interactionSettings.swipeActions.leftAction);
                }
                return str2;
            case 587349473:
                if (str.equals("message_list_date_time_format")) {
                    return displayMessageListSettings.dateTimeFormat.toString();
                }
                return str2;
            case 915685137:
                if (str.equals("notification_quick_delete")) {
                    return notificationPreference.notificationQuickDeleteBehaviour.name();
                }
                return str2;
            case 1118008233:
                if (str.equals("message_compose_input_font")) {
                    return String.valueOf(K9.fontSizes.messageComposeInput);
                }
                return str2;
            case 1187800880:
                if (str.equals("message_list_sender_font")) {
                    return String.valueOf(K9.fontSizes.messageListSender);
                }
                return str2;
            case 1191593680:
                if (str.equals("post_remove_navigation")) {
                    return interactionSettings.messageViewPostRemoveNavigation;
                }
                return str2;
            case 1218131050:
                if (str.equals("messageview_body_content_type")) {
                    return displayVisualSettings.bodyContentType.name();
                }
                return str2;
            case 1427827745:
                if (str.equals("background_ops")) {
                    return networkSettings.backgroundOps.name();
                }
                return str2;
            case 1535446692:
                if (str.equals("message_compose_theme")) {
                    int ordinal3 = displayCoreSettings.messageComposeTheme.ordinal();
                    if (ordinal3 == 0) {
                        return "light";
                    }
                    if (ordinal3 == 1) {
                        return "dark";
                    }
                    if (ordinal3 == 2) {
                        return "global";
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                return str2;
            case 1536419239:
                if (str.equals("lock_screen_notification_visibility")) {
                    return notificationPreference.lockScreenNotificationVisibility.name();
                }
                return str2;
            case 1720082909:
                if (str.equals("messageViewTheme")) {
                    int ordinal4 = displayCoreSettings.messageViewTheme.ordinal();
                    if (ordinal4 == 0) {
                        return "light";
                    }
                    if (ordinal4 == 1) {
                        return "dark";
                    }
                    if (ordinal4 == 2) {
                        return "global";
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                return str2;
            case 1949653283:
                if (str.equals("splitview_mode")) {
                    return displayCoreSettings.splitViewMode.name();
                }
                return str2;
            default:
                return str2;
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final Set getStringSet(String str, Set set) {
        str.getClass();
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
        DisplayVisualSettings displayVisualSettings = defaultGeneralSettingsManager.getConfig().display.visualSettings;
        if (!str.equals("confirm_actions")) {
            if (!str.equals("messageview_visible_refile_actions")) {
                return set;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (displayVisualSettings.isMessageViewDeleteActionVisible) {
                linkedHashSet.add("delete");
            }
            if (displayVisualSettings.isMessageViewArchiveActionVisible) {
                linkedHashSet.add("archive");
            }
            if (displayVisualSettings.isMessageViewMoveActionVisible) {
                linkedHashSet.add("move");
            }
            if (displayVisualSettings.isMessageViewCopyActionVisible) {
                linkedHashSet.add("copy");
            }
            if (displayVisualSettings.isMessageViewSpamActionVisible) {
                linkedHashSet.add("spam");
            }
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        InteractionSettings interactionSettings = defaultGeneralSettingsManager.getConfig().interaction;
        if (interactionSettings.isConfirmDelete) {
            linkedHashSet2.add("delete");
        }
        if (interactionSettings.isConfirmDeleteStarred) {
            linkedHashSet2.add("delete_starred");
        }
        if (interactionSettings.isConfirmDeleteFromNotification) {
            linkedHashSet2.add("delete_notif");
        }
        if (interactionSettings.isConfirmSpam) {
            linkedHashSet2.add("spam");
        }
        if (interactionSettings.isConfirmDiscardMessage) {
            linkedHashSet2.add("discard");
        }
        if (interactionSettings.isConfirmMarkAllRead) {
            linkedHashSet2.add("mark_all_read");
        }
        return linkedHashSet2;
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putBoolean(String str, boolean z) {
        str.getClass();
        int hashCode = str.hashCode();
        GeneralSettingsManager generalSettingsManager = this.generalSettingsManager;
        switch (hashCode) {
            case -1952822073:
                if (str.equals("messagelist_stars")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config = defaultGeneralSettingsManager.getConfig();
                    DisplaySettings displaySettings = config.display;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, DisplaySettings.copy$default(displaySettings, null, DisplayInboxSettings.copy$default(displaySettings.inboxSettings, false, false, z, false, false, false, 59), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1852269283:
                if (str.equals("messagelist_show_correspondent_names")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager2 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config2 = defaultGeneralSettingsManager2.getConfig();
                    DisplaySettings displaySettings2 = config2.display;
                    DisplayVisualSettings displayVisualSettings = displaySettings2.visualSettings;
                    defaultGeneralSettingsManager2.save(GeneralSettings.copy$default(config2, null, null, DisplaySettings.copy$default(displaySettings2, null, null, DisplayVisualSettings.copy$default(displayVisualSettings, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings.messageListSettings, z, false, false, false, false, false, 0, null, 0, null, 1022), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1613750259:
                if (str.equals("show_starred_count")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager3 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config3 = defaultGeneralSettingsManager3.getConfig();
                    DisplaySettings displaySettings3 = config3.display;
                    defaultGeneralSettingsManager3.save(GeneralSettings.copy$default(config3, null, null, DisplaySettings.copy$default(displaySettings3, null, DisplayInboxSettings.copy$default(displaySettings3.inboxSettings, false, z, false, false, false, false, 61), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1395862350:
                if (str.equals("messagelist_show_contact_name")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager4 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config4 = defaultGeneralSettingsManager4.getConfig();
                    DisplaySettings displaySettings4 = config4.display;
                    DisplayVisualSettings displayVisualSettings2 = displaySettings4.visualSettings;
                    defaultGeneralSettingsManager4.save(GeneralSettings.copy$default(config4, null, null, DisplaySettings.copy$default(displaySettings4, null, null, DisplayVisualSettings.copy$default(displayVisualSettings2, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings2.messageListSettings, false, z, false, false, false, false, 0, null, 0, null, 1021), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1357008188:
                if (str.equals("drawerExpandAllFolder")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager5 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config5 = defaultGeneralSettingsManager5.getConfig();
                    DisplaySettings displaySettings5 = config5.display;
                    defaultGeneralSettingsManager5.save(GeneralSettings.copy$default(config5, null, null, DisplaySettings.copy$default(displaySettings5, null, null, DisplayVisualSettings.copy$default(displaySettings5.visualSettings, null, false, false, null, z, null, false, false, false, false, false, 2031), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1296343046:
                if (str.equals("quiet_time_enabled")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager6 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config6 = defaultGeneralSettingsManager6.getConfig();
                    defaultGeneralSettingsManager6.save(GeneralSettings.copy$default(config6, null, NotificationPreference.copy$default(config6.notification, z, null, null, false, null, 0, false, false, null, 1022), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case -1274954296:
                if (str.equals("disable_notifications_during_quiet_time")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager7 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config7 = defaultGeneralSettingsManager7.getConfig();
                    defaultGeneralSettingsManager7.save(GeneralSettings.copy$default(config7, null, NotificationPreference.copy$default(config7.notification, false, null, null, !z, null, 0, false, false, null, 1015), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case -1103776843:
                if (str.equals("messagelist_background_as_unread_indicator")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager8 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config8 = defaultGeneralSettingsManager8.getConfig();
                    DisplaySettings displaySettings6 = config8.display;
                    DisplayVisualSettings displayVisualSettings3 = displaySettings6.visualSettings;
                    defaultGeneralSettingsManager8.save(GeneralSettings.copy$default(config8, null, null, DisplaySettings.copy$default(displaySettings6, null, null, DisplayVisualSettings.copy$default(displayVisualSettings3, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings3.messageListSettings, false, false, false, false, false, z, 0, null, 0, null, 991), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -705589793:
                if (str.equals("privacy_hide_timezone")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager9 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config9 = defaultGeneralSettingsManager9.getConfig();
                    PrivacySettings privacySettings = config9.privacy;
                    boolean z2 = privacySettings.isHideUserAgent;
                    privacySettings.getClass();
                    defaultGeneralSettingsManager9.save(GeneralSettings.copy$default(config9, null, null, null, new PrivacySettings(z, z2), null, null, 111));
                    break;
                } else {
                    return;
                }
            case -514472311:
                if (str.equals("messageview_fixedwidth_font")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager10 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config10 = defaultGeneralSettingsManager10.getConfig();
                    DisplaySettings displaySettings7 = config10.display;
                    defaultGeneralSettingsManager10.save(GeneralSettings.copy$default(config10, null, null, DisplaySettings.copy$default(displaySettings7, null, null, DisplayVisualSettings.copy$default(displaySettings7.visualSettings, null, z, false, null, false, null, false, false, false, false, false, 2045), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -145742717:
                if (str.equals("messagelist_change_contact_name_color")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager11 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config11 = defaultGeneralSettingsManager11.getConfig();
                    DisplaySettings displaySettings8 = config11.display;
                    DisplayVisualSettings displayVisualSettings4 = displaySettings8.visualSettings;
                    defaultGeneralSettingsManager11.save(GeneralSettings.copy$default(config11, null, null, DisplaySettings.copy$default(displaySettings8, null, null, DisplayVisualSettings.copy$default(displayVisualSettings4, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings4.messageListSettings, false, false, false, z, false, false, 0, null, 0, null, 1015), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -118917900:
                if (str.equals("privacy_hide_useragent")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager12 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config12 = defaultGeneralSettingsManager12.getConfig();
                    PrivacySettings privacySettings2 = config12.privacy;
                    boolean z3 = privacySettings2.isHideTimeZone;
                    privacySettings2.getClass();
                    defaultGeneralSettingsManager12.save(GeneralSettings.copy$default(config12, null, null, null, new PrivacySettings(z3, z), null, null, 111));
                    break;
                } else {
                    return;
                }
            case -49410303:
                if (str.equals("messagelist_colorize_missing_contact_pictures")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager13 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config13 = defaultGeneralSettingsManager13.getConfig();
                    DisplaySettings displaySettings9 = config13.display;
                    DisplayVisualSettings displayVisualSettings5 = displaySettings9.visualSettings;
                    defaultGeneralSettingsManager13.save(GeneralSettings.copy$default(config13, null, null, DisplaySettings.copy$default(displaySettings9, null, null, DisplayVisualSettings.copy$default(displayVisualSettings5, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings5.messageListSettings, false, false, false, false, z, false, 0, null, 0, null, 1007), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 227067599:
                if (str.equals("sync_debug_logging")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager14 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config14 = defaultGeneralSettingsManager14.getConfig();
                    defaultGeneralSettingsManager14.save(GeneralSettings.copy$default(config14, null, null, null, null, DebuggingSettings.copy$default(config14.debugging, false, z, false, 5), null, 95));
                    break;
                } else {
                    return;
                }
            case 263487857:
                if (str.equals("notification_show_contact_picture")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager15 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config15 = defaultGeneralSettingsManager15.getConfig();
                    defaultGeneralSettingsManager15.save(GeneralSettings.copy$default(config15, null, NotificationPreference.copy$default(config15.notification, false, null, null, false, null, 0, false, z, null, 895), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case 568395123:
                if (str.equals("debug_logging")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager16 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config16 = defaultGeneralSettingsManager16.getConfig();
                    defaultGeneralSettingsManager16.save(GeneralSettings.copy$default(config16, null, null, null, null, DebuggingSettings.copy$default(config16.debugging, z, false, false, 6), null, 95));
                    break;
                } else {
                    return;
                }
            case 858449147:
                if (str.equals("threaded_view")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager17 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config17 = defaultGeneralSettingsManager17.getConfig();
                    DisplaySettings displaySettings10 = config17.display;
                    defaultGeneralSettingsManager17.save(GeneralSettings.copy$default(config17, null, null, DisplaySettings.copy$default(displaySettings10, null, DisplayInboxSettings.copy$default(displaySettings10.inboxSettings, false, false, false, false, false, z, 31), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1183884856:
                if (str.equals("notification_summary_delete")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager18 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config18 = defaultGeneralSettingsManager18.getConfig();
                    defaultGeneralSettingsManager18.save(GeneralSettings.copy$default(config18, null, NotificationPreference.copy$default(config18.notification, false, null, null, false, null, 0, z, false, null, 959), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case 1280081879:
                if (str.equals("show_unified_inbox")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager19 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config19 = defaultGeneralSettingsManager19.getConfig();
                    DisplaySettings displaySettings11 = config19.display;
                    defaultGeneralSettingsManager19.save(GeneralSettings.copy$default(config19, null, null, DisplaySettings.copy$default(displaySettings11, null, DisplayInboxSettings.copy$default(displaySettings11.inboxSettings, z, false, false, false, false, false, 62), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1316453594:
                if (str.equals("messagelist_sender_above_subject")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager20 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config20 = defaultGeneralSettingsManager20.getConfig();
                    DisplaySettings displaySettings12 = config20.display;
                    defaultGeneralSettingsManager20.save(GeneralSettings.copy$default(config20, null, null, DisplaySettings.copy$default(displaySettings12, null, DisplayInboxSettings.copy$default(displaySettings12.inboxSettings, false, false, false, z, false, false, 55), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1358330877:
                if (str.equals("enable_telemetry")) {
                    K9.isTelemetryEnabled = z;
                    break;
                } else {
                    return;
                }
            case 1574420882:
                if (str.equals("fixed_message_view_theme")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager21 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config21 = defaultGeneralSettingsManager21.getConfig();
                    DisplaySettings displaySettings13 = config21.display;
                    defaultGeneralSettingsManager21.save(GeneralSettings.copy$default(config21, null, null, DisplaySettings.copy$default(displaySettings13, DisplayCoreSettings.copy$default(displaySettings13.coreSettings, z, null, null, null, null, null, 62), null, null, null, 14), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1715332185:
                if (str.equals("volume_navigation")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager22 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config22 = defaultGeneralSettingsManager22.getConfig();
                    defaultGeneralSettingsManager22.save(GeneralSettings.copy$default(config22, null, null, null, null, null, InteractionSettings.copy$default(config22.interaction, z, null, null, null, false, false, false, false, false, false, 1022), 63));
                    break;
                } else {
                    return;
                }
            case 1733459319:
                if (str.equals("messagelist_show_contact_picture")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager23 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config23 = defaultGeneralSettingsManager23.getConfig();
                    DisplaySettings displaySettings14 = config23.display;
                    DisplayVisualSettings displayVisualSettings6 = displaySettings14.visualSettings;
                    defaultGeneralSettingsManager23.save(GeneralSettings.copy$default(config23, null, null, DisplaySettings.copy$default(displaySettings14, null, null, DisplayVisualSettings.copy$default(displayVisualSettings6, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings6.messageListSettings, false, false, z, false, false, false, 0, null, 0, null, 1019), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1772014262:
                if (str.equals("sensitive_logging")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager24 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config24 = defaultGeneralSettingsManager24.getConfig();
                    defaultGeneralSettingsManager24.save(GeneralSettings.copy$default(config24, null, null, null, null, DebuggingSettings.copy$default(config24.debugging, false, false, z, 3), null, 95));
                    break;
                } else {
                    return;
                }
            case 1807008769:
                if (str.equals("show_compose_button")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager25 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config25 = defaultGeneralSettingsManager25.getConfig();
                    DisplaySettings displaySettings15 = config25.display;
                    defaultGeneralSettingsManager25.save(GeneralSettings.copy$default(config25, null, null, DisplaySettings.copy$default(displaySettings15, null, DisplayInboxSettings.copy$default(displaySettings15.inboxSettings, false, false, false, false, z, false, 47), null, null, 13), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1890768758:
                if (str.equals("messageview_autofit_width")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager26 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config26 = defaultGeneralSettingsManager26.getConfig();
                    DisplaySettings displaySettings16 = config26.display;
                    defaultGeneralSettingsManager26.save(GeneralSettings.copy$default(config26, null, null, DisplaySettings.copy$default(displaySettings16, null, null, DisplayVisualSettings.copy$default(displaySettings16.visualSettings, null, false, z, null, false, null, false, false, false, false, false, 2043), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            default:
                return;
        }
        if (this.skipSaveSettings) {
            this.skipSaveSettings = false;
        } else {
            K9.saveSettingsAsync();
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putInt(String str, int i) {
        if (Intrinsics.areEqual(str, "messagelist_contact_name_color")) {
            this.skipSaveSettings = true;
            DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
            GeneralSettings config = defaultGeneralSettingsManager.getConfig();
            DisplaySettings displaySettings = config.display;
            DisplayVisualSettings displayVisualSettings = displaySettings.visualSettings;
            defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, DisplaySettings.copy$default(displaySettings, null, null, DisplayVisualSettings.copy$default(displayVisualSettings, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings.messageListSettings, false, false, false, false, false, false, 0, null, i, null, 767), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
        } else if (!Intrinsics.areEqual(str, "message_view_content_font_slider")) {
            return;
        } else {
            K9.fontSizes.messageViewContentAsPercent = i;
        }
        if (this.skipSaveSettings) {
            this.skipSaveSettings = false;
        } else {
            K9.saveSettingsAsync();
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putString(String str, String str2) {
        AppTheme appTheme;
        AnimationPreference animationPreference;
        str.getClass();
        if (str2 == null) {
            return;
        }
        int hashCode = str.hashCode();
        GeneralSettingsManager generalSettingsManager = this.generalSettingsManager;
        switch (hashCode) {
            case -2014896457:
                if (str.equals("message_view_sender_font")) {
                    K9.fontSizes.messageViewSender = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -1723797737:
                if (str.equals("message_list_date_font")) {
                    K9.fontSizes.messageListDate = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -1644404178:
                if (str.equals("messagelist_preview_lines")) {
                    int parseInt = Integer.parseInt(str2);
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config = defaultGeneralSettingsManager.getConfig();
                    DisplaySettings displaySettings = config.display;
                    DisplayVisualSettings displayVisualSettings = displaySettings.visualSettings;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, DisplaySettings.copy$default(displaySettings, null, null, DisplayVisualSettings.copy$default(displayVisualSettings, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings.messageListSettings, false, false, false, false, false, false, parseInt, null, 0, null, 959), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1613589672:
                if (!str.equals("language")) {
                    return;
                }
                this.skipSaveSettings = true;
                AppLanguageManager appLanguageManager = this.appLanguageManager;
                DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager = appLanguageManager.displayCoreSettingsPreferenceManager;
                if (!str2.equals(((DisplayCoreSettings) defaultDisplayCoreSettingsPreferenceManager.getConfig()).appLanguage)) {
                    defaultDisplayCoreSettingsPreferenceManager.save(DisplayCoreSettings.copy$default((DisplayCoreSettings) defaultDisplayCoreSettingsPreferenceManager.getConfig(), false, null, null, null, str2, null, 47));
                    appLanguageManager.setLocale(str2);
                    break;
                }
                break;
            case -1440676337:
                if (str.equals("message_view_account_name_font")) {
                    K9.fontSizes.messageViewAccountName = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -1364272200:
                if (str.equals("swipe_action_right")) {
                    updateSwipeAction(str2, new KoinModuleKt$$ExternalSyntheticLambda1(8));
                    break;
                } else {
                    return;
                }
            case -1300210817:
                if (str.equals("message_list_density")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager2 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config2 = defaultGeneralSettingsManager2.getConfig();
                    DisplaySettings displaySettings2 = config2.display;
                    DisplayVisualSettings displayVisualSettings2 = displaySettings2.visualSettings;
                    defaultGeneralSettingsManager2.save(GeneralSettings.copy$default(config2, null, null, DisplaySettings.copy$default(displaySettings2, null, null, DisplayVisualSettings.copy$default(displayVisualSettings2, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings2.messageListSettings, false, false, false, false, false, false, 0, UiDensity.valueOf(str2), 0, null, 895), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case -1092494242:
                if (str.equals("message_view_date_font")) {
                    K9.fontSizes.messageViewDate = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -882378632:
                if (str.equals("quiet_time_starts")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager3 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config3 = defaultGeneralSettingsManager3.getConfig();
                    defaultGeneralSettingsManager3.save(GeneralSettings.copy$default(config3, null, NotificationPreference.copy$default(config3.notification, false, str2, null, false, null, 0, false, false, null, 1021), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case -748501852:
                if (str.equals("message_view_subject_font")) {
                    K9.fontSizes.messageViewSubject = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -690989782:
                if (str.equals("post_mark_as_unread_navigation")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager4 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config4 = defaultGeneralSettingsManager4.getConfig();
                    defaultGeneralSettingsManager4.save(GeneralSettings.copy$default(config4, null, null, null, null, null, InteractionSettings.copy$default(config4.interaction, false, null, PostMarkAsUnreadNavigation.valueOf(str2), null, false, false, false, false, false, false, 1019), 63));
                    break;
                } else {
                    return;
                }
            case -501899041:
                if (str.equals("quiet_time_ends")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager5 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config5 = defaultGeneralSettingsManager5.getConfig();
                    defaultGeneralSettingsManager5.save(GeneralSettings.copy$default(config5, null, NotificationPreference.copy$default(config5.notification, false, null, str2, false, null, 0, false, false, null, 1019), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case -249132213:
                if (str.equals("message_list_subject_font")) {
                    K9.fontSizes.messageListSubject = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case -102449617:
                if (str.equals("message_list_preview_font")) {
                    K9.fontSizes.messageListPreview = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case 110327241:
                if (str.equals("theme")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager6 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config6 = defaultGeneralSettingsManager6.getConfig();
                    DisplaySettings displaySettings3 = config6.display;
                    DisplayCoreSettings displayCoreSettings = displaySettings3.coreSettings;
                    int hashCode2 = str2.hashCode();
                    if (hashCode2 == 3075958) {
                        if (str2.equals("dark")) {
                            appTheme = AppTheme.DARK;
                            defaultGeneralSettingsManager6.save(GeneralSettings.copy$default(config6, null, null, DisplaySettings.copy$default(displaySettings3, DisplayCoreSettings.copy$default(displayCoreSettings, false, appTheme, null, null, null, null, 61), null, null, null, 14), null, null, null, 119));
                        }
                        throw new AssertionError();
                    }
                    if (hashCode2 == 102970646) {
                        if (str2.equals("light")) {
                            appTheme = AppTheme.LIGHT;
                            defaultGeneralSettingsManager6.save(GeneralSettings.copy$default(config6, null, null, DisplaySettings.copy$default(displaySettings3, DisplayCoreSettings.copy$default(displayCoreSettings, false, appTheme, null, null, null, null, 61), null, null, null, 14), null, null, null, 119));
                        }
                        throw new AssertionError();
                    }
                    if (hashCode2 == 1033296509 && str2.equals("follow_system")) {
                        appTheme = AppTheme.FOLLOW_SYSTEM;
                        defaultGeneralSettingsManager6.save(GeneralSettings.copy$default(config6, null, null, DisplaySettings.copy$default(displaySettings3, DisplayCoreSettings.copy$default(displayCoreSettings, false, appTheme, null, null, null, null, 61), null, null, null, 14), null, null, null, 119));
                        break;
                    }
                    throw new AssertionError();
                }
                return;
            case 304655250:
                if (str.equals("message_view_recipients_font")) {
                    K9.fontSizes.messageViewRecipients = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case 314070383:
                if (str.equals("animations")) {
                    int hashCode3 = str2.hashCode();
                    if (hashCode3 == -1810081155) {
                        if (str2.equals("FOLLOW_SYSTEM")) {
                            animationPreference = AnimationPreference.FOLLOW_SYSTEM;
                            AnimationPreference animationPreference2 = animationPreference;
                            this.skipSaveSettings = true;
                            DefaultGeneralSettingsManager defaultGeneralSettingsManager7 = (DefaultGeneralSettingsManager) generalSettingsManager;
                            GeneralSettings config7 = defaultGeneralSettingsManager7.getConfig();
                            DisplaySettings displaySettings4 = config7.display;
                            defaultGeneralSettingsManager7.save(GeneralSettings.copy$default(config7, null, null, DisplaySettings.copy$default(displaySettings4, null, null, DisplayVisualSettings.copy$default(displaySettings4.visualSettings, animationPreference2, false, false, null, false, null, false, false, false, false, false, 2046), null, 11), null, null, null, 119));
                        }
                        throw new AssertionError();
                    }
                    if (hashCode3 == 2527) {
                        if (str2.equals("ON")) {
                            animationPreference = AnimationPreference.ON;
                            AnimationPreference animationPreference22 = animationPreference;
                            this.skipSaveSettings = true;
                            DefaultGeneralSettingsManager defaultGeneralSettingsManager72 = (DefaultGeneralSettingsManager) generalSettingsManager;
                            GeneralSettings config72 = defaultGeneralSettingsManager72.getConfig();
                            DisplaySettings displaySettings42 = config72.display;
                            defaultGeneralSettingsManager72.save(GeneralSettings.copy$default(config72, null, null, DisplaySettings.copy$default(displaySettings42, null, null, DisplayVisualSettings.copy$default(displaySettings42.visualSettings, animationPreference22, false, false, null, false, null, false, false, false, false, false, 2046), null, 11), null, null, null, 119));
                        }
                        throw new AssertionError();
                    }
                    if (hashCode3 == 78159 && str2.equals("OFF")) {
                        animationPreference = AnimationPreference.OFF;
                        AnimationPreference animationPreference222 = animationPreference;
                        this.skipSaveSettings = true;
                        DefaultGeneralSettingsManager defaultGeneralSettingsManager722 = (DefaultGeneralSettingsManager) generalSettingsManager;
                        GeneralSettings config722 = defaultGeneralSettingsManager722.getConfig();
                        DisplaySettings displaySettings422 = config722.display;
                        defaultGeneralSettingsManager722.save(GeneralSettings.copy$default(config722, null, null, DisplaySettings.copy$default(displaySettings422, null, null, DisplayVisualSettings.copy$default(displaySettings422.visualSettings, animationPreference222, false, false, null, false, null, false, false, false, false, false, 2046), null, 11), null, null, null, 119));
                        break;
                    }
                    throw new AssertionError();
                }
                return;
            case 371450603:
                if (str.equals("swipe_action_left")) {
                    updateSwipeAction(str2, new KoinModuleKt$$ExternalSyntheticLambda1(9));
                    break;
                } else {
                    return;
                }
            case 587349473:
                if (str.equals("message_list_date_time_format")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager8 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config8 = defaultGeneralSettingsManager8.getConfig();
                    DisplaySettings displaySettings5 = config8.display;
                    DisplayVisualSettings displayVisualSettings3 = displaySettings5.visualSettings;
                    defaultGeneralSettingsManager8.save(GeneralSettings.copy$default(config8, null, null, DisplaySettings.copy$default(displaySettings5, null, null, DisplayVisualSettings.copy$default(displayVisualSettings3, null, false, false, null, false, DisplayMessageListSettings.copy$default(displayVisualSettings3.messageListSettings, false, false, false, false, false, false, 0, null, 0, MessageListDateTimeFormat.valueOf(str2), 511), false, false, false, false, false, 2015), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1118008233:
                if (str.equals("message_compose_input_font")) {
                    K9.fontSizes.messageComposeInput = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case 1187800880:
                if (str.equals("message_list_sender_font")) {
                    K9.fontSizes.messageListSender = Integer.parseInt(str2);
                    break;
                } else {
                    return;
                }
            case 1191593680:
                if (str.equals("post_remove_navigation")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager9 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config9 = defaultGeneralSettingsManager9.getConfig();
                    defaultGeneralSettingsManager9.save(GeneralSettings.copy$default(config9, null, null, null, null, null, InteractionSettings.copy$default(config9.interaction, false, str2, null, null, false, false, false, false, false, false, 1021), 63));
                    break;
                } else {
                    return;
                }
            case 1218131050:
                if (str.equals("messageview_body_content_type")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager10 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config10 = defaultGeneralSettingsManager10.getConfig();
                    DisplaySettings displaySettings6 = config10.display;
                    defaultGeneralSettingsManager10.save(GeneralSettings.copy$default(config10, null, null, DisplaySettings.copy$default(displaySettings6, null, null, DisplayVisualSettings.copy$default(displaySettings6.visualSettings, null, false, false, BodyContentType.valueOf(str2), false, null, false, false, false, false, false, 2039), null, 11), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1427827745:
                if (!str.equals("background_ops")) {
                    return;
                }
                BackgroundOps valueOf = BackgroundOps.valueOf(str2);
                DefaultGeneralSettingsManager defaultGeneralSettingsManager11 = (DefaultGeneralSettingsManager) generalSettingsManager;
                if (valueOf != defaultGeneralSettingsManager11.getConfig().network.backgroundOps) {
                    this.skipSaveSettings = true;
                    GeneralSettings config11 = defaultGeneralSettingsManager11.getConfig();
                    config11.network.getClass();
                    valueOf.getClass();
                    defaultGeneralSettingsManager11.save(GeneralSettings.copy$default(config11, new NetworkSettings(valueOf), null, null, null, null, null, 125));
                    this.jobManager.scheduleAllMailJobs();
                    break;
                }
                break;
            case 1535446692:
                if (str.equals("message_compose_theme")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager12 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config12 = defaultGeneralSettingsManager12.getConfig();
                    DisplaySettings displaySettings7 = config12.display;
                    defaultGeneralSettingsManager12.save(GeneralSettings.copy$default(config12, null, null, DisplaySettings.copy$default(displaySettings7, DisplayCoreSettings.copy$default(displaySettings7.coreSettings, false, null, null, stringToSubTheme(str2), null, null, 55), null, null, null, 14), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1536419239:
                if (str.equals("lock_screen_notification_visibility")) {
                    LockScreenNotificationVisibility valueOf2 = LockScreenNotificationVisibility.valueOf(str2);
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager13 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config13 = defaultGeneralSettingsManager13.getConfig();
                    defaultGeneralSettingsManager13.save(GeneralSettings.copy$default(config13, null, NotificationPreference.copy$default(config13.notification, false, null, null, false, null, 0, false, false, valueOf2, 511), null, null, null, null, 123));
                    break;
                } else {
                    return;
                }
            case 1720082909:
                if (str.equals("messageViewTheme")) {
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager14 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config14 = defaultGeneralSettingsManager14.getConfig();
                    DisplaySettings displaySettings8 = config14.display;
                    defaultGeneralSettingsManager14.save(GeneralSettings.copy$default(config14, null, null, DisplaySettings.copy$default(displaySettings8, DisplayCoreSettings.copy$default(displaySettings8.coreSettings, false, null, stringToSubTheme(str2), null, null, null, 59), null, null, null, 14), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            case 1949653283:
                if (str.equals("splitview_mode")) {
                    String upperCase = str2.toUpperCase(Locale.ROOT);
                    upperCase.getClass();
                    SplitViewMode valueOf3 = SplitViewMode.valueOf(upperCase);
                    this.skipSaveSettings = true;
                    DefaultGeneralSettingsManager defaultGeneralSettingsManager15 = (DefaultGeneralSettingsManager) generalSettingsManager;
                    GeneralSettings config15 = defaultGeneralSettingsManager15.getConfig();
                    DisplaySettings displaySettings9 = config15.display;
                    defaultGeneralSettingsManager15.save(GeneralSettings.copy$default(config15, null, null, DisplaySettings.copy$default(displaySettings9, DisplayCoreSettings.copy$default(displaySettings9.coreSettings, false, null, null, null, null, valueOf3, 31), null, null, null, 14), null, null, null, 119));
                    break;
                } else {
                    return;
                }
            default:
                return;
        }
        if (this.skipSaveSettings) {
            this.skipSaveSettings = false;
        } else {
            K9.saveSettingsAsync();
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putStringSet(String str, Set set) {
        str.getClass();
        Set set2 = set == null ? EmptySet.INSTANCE : set;
        boolean equals = str.equals("confirm_actions");
        GeneralSettingsManager generalSettingsManager = this.generalSettingsManager;
        if (equals) {
            this.skipSaveSettings = true;
            DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager;
            GeneralSettings config = defaultGeneralSettingsManager.getConfig();
            defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(config.interaction, false, null, null, null, set2.contains("delete"), set2.contains("delete_starred"), set2.contains("delete_notif"), set2.contains("spam"), set2.contains("discard"), set2.contains("mark_all_read"), 15), 63));
        } else {
            if (!str.equals("messageview_visible_refile_actions")) {
                return;
            }
            this.skipSaveSettings = true;
            DefaultGeneralSettingsManager defaultGeneralSettingsManager2 = (DefaultGeneralSettingsManager) generalSettingsManager;
            GeneralSettings config2 = defaultGeneralSettingsManager2.getConfig();
            DisplaySettings displaySettings = config2.display;
            defaultGeneralSettingsManager2.save(GeneralSettings.copy$default(config2, null, null, DisplaySettings.copy$default(displaySettings, null, null, DisplayVisualSettings.copy$default(displaySettings.visualSettings, null, false, false, null, false, null, set2.contains("archive"), set2.contains("delete"), set2.contains("move"), set2.contains("copy"), set2.contains("spam"), 63), null, 11), null, null, null, 119));
        }
        if (this.skipSaveSettings) {
            this.skipSaveSettings = false;
        } else {
            K9.saveSettingsAsync();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    public final void updateSwipeAction(String str, Function2 function2) {
        SwipeAction swipeAction;
        this.skipSaveSettings = true;
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
        GeneralSettings config = defaultGeneralSettingsManager.getConfig();
        InteractionSettings interactionSettings = config.interaction;
        SwipeActions swipeActions = interactionSettings.swipeActions;
        switch (str.hashCode()) {
            case -1335458389:
                if (str.equals("delete")) {
                    swipeAction = SwipeAction.Delete;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case -748101438:
                if (str.equals("archive")) {
                    swipeAction = SwipeAction.Archive;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case -645575775:
                if (str.equals("toggle_read")) {
                    swipeAction = SwipeAction.ToggleRead;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case -645531555:
                if (str.equals("toggle_star")) {
                    swipeAction = SwipeAction.ToggleStar;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case 3357649:
                if (str.equals("move")) {
                    swipeAction = SwipeAction.Move;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    swipeAction = SwipeAction.None;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case 3536713:
                if (str.equals("spam")) {
                    swipeAction = SwipeAction.Spam;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
            case 1096093281:
                if (str.equals("toggle_selection")) {
                    swipeAction = SwipeAction.ToggleSelection;
                    defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, null, null, null, InteractionSettings.copy$default(interactionSettings, false, null, null, (SwipeActions) function2.invoke(swipeActions, swipeAction), false, false, false, false, false, false, 1015), 63));
                    return;
                }
                break;
        }
        throw new AssertionError();
    }
}
