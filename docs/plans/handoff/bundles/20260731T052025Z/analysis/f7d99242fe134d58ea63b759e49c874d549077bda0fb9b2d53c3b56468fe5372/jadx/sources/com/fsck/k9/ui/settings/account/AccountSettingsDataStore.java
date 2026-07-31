package com.fsck.k9.ui.settings.account;

import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntRectKt;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.room.TransactionExecutor;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda8;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.job.MailSyncWorkerManager;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import java.util.concurrent.ExecutorService;
import kotlin.Triple;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.android.account.DeletePolicy;
import net.thunderbird.core.android.account.Expunge;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.MessageFormat;
import net.thunderbird.core.android.account.QuoteStyle;
import net.thunderbird.core.android.account.ShowPictures;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.mail.folder.api.SpecialFolderSelection;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.VibratePattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsDataStore extends IntRectKt {
    public final LegacyAccountDto account;
    public final ExecutorService executorService;
    public final K9JobManager jobManager;
    public final MessagingController messagingController;
    public final NotificationChannelManager notificationChannelManager;
    public final NotificationController notificationController;
    public boolean notificationSettingsChanged;
    public final Preferences preferences;

    public AccountSettingsDataStore(Preferences preferences, ExecutorService executorService, LegacyAccountDto legacyAccountDto, K9JobManager k9JobManager, NotificationChannelManager notificationChannelManager, NotificationController notificationController, MessagingController messagingController) {
        this.preferences = preferences;
        this.executorService = executorService;
        this.account = legacyAccountDto;
        this.jobManager = k9JobManager;
        this.notificationChannelManager = notificationChannelManager;
        this.notificationController = notificationController;
        this.messagingController = messagingController;
    }

    public static String loadSpecialFolder(Long l, SpecialFolderSelection specialFolderSelection) {
        String str;
        String str2;
        int ordinal = specialFolderSelection.ordinal();
        if (ordinal == 0) {
            str = "AUTOMATIC|";
        } else {
            if (ordinal != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            str = "MANUAL|";
        }
        if (l == null || (str2 = String.valueOf(l.longValue())) == null) {
            str2 = "";
        }
        return str.concat(str2);
    }

    public static void saveSpecialFolderSelection(String str, Function2 function2) {
        String substringAfter$default = StringsKt.substringAfter$default(str, "|");
        function2.invoke(substringAfter$default.equals("") ? null : StringsKt__StringsJVMKt.toLongOrNull(substringAfter$default), StringsKt__StringsJVMKt.startsWith(str, "AUTOMATIC|", false) ? SpecialFolderSelection.AUTOMATIC : SpecialFolderSelection.MANUAL);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final boolean getBoolean(String str, boolean z) {
        str.getClass();
        int hashCode = str.hashCode();
        LegacyAccountDto legacyAccountDto = this.account;
        switch (hashCode) {
            case -1763040400:
                if (str.equals("account_notify_self")) {
                    return legacyAccountDto.isNotifySelfNewMail();
                }
                return z;
            case -1763021121:
                if (str.equals("account_notify_sync")) {
                    return legacyAccountDto.isNotifySync();
                }
                return z;
            case -1660269907:
                if (str.equals("account_sync_remote_deletetions")) {
                    return legacyAccountDto.isSyncRemoteDeletions();
                }
                return z;
            case -1379393889:
                if (str.equals("mark_message_as_read_on_view")) {
                    return legacyAccountDto.isMarkMessageAsReadOnView();
                }
                return z;
            case -1288105386:
                if (str.equals("autocrypt_prefer_encrypt")) {
                    return legacyAccountDto.getAutocryptPreferEncryptMutual();
                }
                return z;
            case -714710676:
                if (str.equals("account_notify_contacts_mail_only")) {
                    return legacyAccountDto.isNotifyContactsMailOnly();
                }
                return z;
            case -447399851:
                if (str.equals("upload_sent_messages")) {
                    return legacyAccountDto.isUploadSentMessages();
                }
                return z;
            case -6526521:
                if (str.equals("message_read_receipt")) {
                    return legacyAccountDto.isMessageReadReceipt();
                }
                return z;
            case 360004664:
                if (str.equals("default_quoted_text_shown")) {
                    return legacyAccountDto.isDefaultQuotedTextShown();
                }
                return z;
            case 365357274:
                if (str.equals("openpgp_encrypt_all_drafts")) {
                    return legacyAccountDto.isOpenPgpEncryptAllDrafts();
                }
                return z;
            case 529700945:
                if (str.equals("strip_signature")) {
                    return legacyAccountDto.isStripSignature();
                }
                return z;
            case 722054555:
                if (str.equals("account_notify")) {
                    return legacyAccountDto.isNotifyNewMail();
                }
                return z;
            case 795350325:
                if (str.equals("always_show_cc_bcc")) {
                    return legacyAccountDto.isAlwaysShowCcBcc();
                }
                return z;
            case 1014051972:
                if (str.equals("reply_after_quote")) {
                    return legacyAccountDto.isReplyAfterQuote();
                }
                return z;
            case 1028543269:
                if (str.equals("mark_message_as_read_on_delete")) {
                    return legacyAccountDto.isMarkMessageAsReadOnDelete();
                }
                return z;
            case 1270356646:
                if (str.equals("ignore_chat_messages")) {
                    return legacyAccountDto.isIgnoreChatMessages();
                }
                return z;
            case 1303396322:
                if (str.equals("openpgp_encrypt_subject")) {
                    return legacyAccountDto.isOpenPgpEncryptSubject();
                }
                return z;
            case 1334426027:
                if (str.equals("subscribed_folders_only")) {
                    return legacyAccountDto.isSubscribedFoldersOnly();
                }
                return z;
            case 1375100321:
                if (str.equals("openpgp_hide_sign_only")) {
                    return legacyAccountDto.isOpenPgpHideSignOnly();
                }
                return z;
            default:
                return z;
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final int getInt(String str, int i) {
        return Intrinsics.areEqual(str, "chip_color") ? this.account.getChipColor() : i;
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final long getLong(long j, String str) {
        return Intrinsics.areEqual(str, "openpgp_key") ? this.account.getOpenPgpKey() : j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final String getString(String str, String str2) {
        str.getClass();
        int hashCode = str.hashCode();
        LegacyAccountDto legacyAccountDto = this.account;
        switch (hashCode) {
            case -2122772956:
                if (str.equals("spam_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getSpamFolderId(), legacyAccountDto.getSpamFolderSelection());
                }
                return str2;
            case -2027189669:
                if (str.equals("drafts_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getDraftsFolderId(), legacyAccountDto.getDraftsFolderSelection());
                }
                return str2;
            case -1744924438:
                if (str.equals("account_description")) {
                    return legacyAccountDto.getName();
                }
                return str2;
            case -1669291821:
                if (str.equals("account_check_frequency")) {
                    return String.valueOf(legacyAccountDto.getAutomaticCheckIntervalMinutes());
                }
                return str2;
            case -1576734419:
                if (str.equals("account_remote_search_num_results")) {
                    return String.valueOf(legacyAccountDto.getRemoteSearchNumResults());
                }
                return str2;
            case -1492351806:
                if (str.equals("notification_light")) {
                    return legacyAccountDto.getNotificationSettings().light.name();
                }
                return str2;
            case -906101113:
                if (str.equals("account_quote_prefix")) {
                    return legacyAccountDto.getQuotePrefix();
                }
                return str2;
            case -893167179:
                if (str.equals("account_message_age")) {
                    return String.valueOf(legacyAccountDto.getMaximumPolledMessageAge());
                }
                return str2;
            case -417266316:
                if (str.equals("account_ringtone")) {
                    return legacyAccountDto.getNotificationSettings().ringtone;
                }
                return str2;
            case -335023607:
                if (str.equals("show_pictures_enum")) {
                    return legacyAccountDto.getShowPictures().name();
                }
                return str2;
            case -143624634:
                if (str.equals("delete_policy")) {
                    return legacyAccountDto.getDeletePolicy().name();
                }
                return str2;
            case 46498090:
                if (str.equals("account_combined_vibration")) {
                    NotificationVibration notificationVibration = legacyAccountDto.getNotificationSettings().vibration;
                    VibratePattern vibratePattern = VibrationPreference.DEFAULT_VIBRATE_PATTERN;
                    return ActionBar.encode(notificationVibration.isEnabled, notificationVibration.pattern, notificationVibration.repeatCount);
                }
                return str2;
            case 409550016:
                if (str.equals("account_display_count")) {
                    return String.valueOf(legacyAccountDto.getDisplayCount());
                }
                return str2;
            case 491534987:
                if (str.equals("archive_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getArchiveFolderId(), legacyAccountDto.getArchiveFolderSelection());
                }
                return str2;
            case 622530416:
                if (str.equals("idle_refresh_period")) {
                    return String.valueOf(legacyAccountDto.getIdleRefreshMinutes());
                }
                return str2;
            case 632106799:
                if (str.equals("message_format")) {
                    return legacyAccountDto.getMessageFormat().name();
                }
                return str2;
            case 1085519003:
                if (str.equals("max_push_folders")) {
                    return String.valueOf(legacyAccountDto.getMaxPushFolders());
                }
                return str2;
            case 1102377518:
                if (str.equals("quote_style")) {
                    return legacyAccountDto.getQuoteStyle().name();
                }
                return str2;
            case 1298079351:
                if (str.equals("account_autodownload_size")) {
                    return String.valueOf(legacyAccountDto.getMaximumAutoDownloadMessageSize());
                }
                return str2;
            case 1442135805:
                if (str.equals("expunge_policy")) {
                    return legacyAccountDto.getExpungePolicy().name();
                }
                return str2;
            case 1626541813:
                if (str.equals("sent_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getSentFolderId(), legacyAccountDto.getSentFolderSelection());
                }
                return str2;
            case 1948656257:
                if (str.equals("auto_select_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getAutoExpandFolderId(), SpecialFolderSelection.MANUAL);
                }
                return str2;
            case 2117048149:
                if (str.equals("trash_folder")) {
                    return loadSpecialFolder(legacyAccountDto.getTrashFolderId(), legacyAccountDto.getTrashFolderSelection());
                }
                return str2;
            default:
                return str2;
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putBoolean(String str, boolean z) {
        str.getClass();
        int hashCode = str.hashCode();
        LegacyAccountDto legacyAccountDto = this.account;
        switch (hashCode) {
            case -1763040400:
                if (str.equals("account_notify_self")) {
                    legacyAccountDto.setNotifySelfNewMail(z);
                    break;
                } else {
                    return;
                }
            case -1763021121:
                if (str.equals("account_notify_sync")) {
                    legacyAccountDto.setNotifySync(z);
                    break;
                } else {
                    return;
                }
            case -1660269907:
                if (str.equals("account_sync_remote_deletetions")) {
                    legacyAccountDto.setSyncRemoteDeletions(z);
                    break;
                } else {
                    return;
                }
            case -1379393889:
                if (str.equals("mark_message_as_read_on_view")) {
                    legacyAccountDto.setMarkMessageAsReadOnView(z);
                    break;
                } else {
                    return;
                }
            case -1288105386:
                if (str.equals("autocrypt_prefer_encrypt")) {
                    legacyAccountDto.setAutocryptPreferEncryptMutual(z);
                    break;
                } else {
                    return;
                }
            case -714710676:
                if (str.equals("account_notify_contacts_mail_only")) {
                    legacyAccountDto.setNotifyContactsMailOnly(z);
                    break;
                } else {
                    return;
                }
            case -447399851:
                if (str.equals("upload_sent_messages")) {
                    legacyAccountDto.setUploadSentMessages(z);
                    break;
                } else {
                    return;
                }
            case -6526521:
                if (str.equals("message_read_receipt")) {
                    legacyAccountDto.setMessageReadReceipt(z);
                    break;
                } else {
                    return;
                }
            case 360004664:
                if (str.equals("default_quoted_text_shown")) {
                    legacyAccountDto.setDefaultQuotedTextShown(z);
                    break;
                } else {
                    return;
                }
            case 365357274:
                if (str.equals("openpgp_encrypt_all_drafts")) {
                    legacyAccountDto.setOpenPgpEncryptAllDrafts(z);
                    break;
                } else {
                    return;
                }
            case 529700945:
                if (str.equals("strip_signature")) {
                    legacyAccountDto.setStripSignature(z);
                    break;
                } else {
                    return;
                }
            case 722054555:
                if (str.equals("account_notify")) {
                    legacyAccountDto.setNotifyNewMail(z);
                    break;
                } else {
                    return;
                }
            case 795350325:
                if (str.equals("always_show_cc_bcc")) {
                    legacyAccountDto.setAlwaysShowCcBcc(z);
                    break;
                } else {
                    return;
                }
            case 1014051972:
                if (str.equals("reply_after_quote")) {
                    legacyAccountDto.setReplyAfterQuote(z);
                    break;
                } else {
                    return;
                }
            case 1028543269:
                if (str.equals("mark_message_as_read_on_delete")) {
                    legacyAccountDto.setMarkMessageAsReadOnDelete(z);
                    break;
                } else {
                    return;
                }
            case 1270356646:
                if (str.equals("ignore_chat_messages")) {
                    legacyAccountDto.setIgnoreChatMessages(z);
                    break;
                } else {
                    return;
                }
            case 1303396322:
                if (str.equals("openpgp_encrypt_subject")) {
                    legacyAccountDto.setOpenPgpEncryptSubject(z);
                    break;
                } else {
                    return;
                }
            case 1334426027:
                if (!str.equals("subscribed_folders_only")) {
                    return;
                }
                if (legacyAccountDto.isSubscribedFoldersOnly() != z) {
                    legacyAccountDto.setSubscribedFoldersOnly(z);
                    MessagingController messagingController = this.messagingController;
                    messagingController.put("refreshFolderList", new MessagingController$$ExternalSyntheticLambda8(messagingController, legacyAccountDto, 0));
                    break;
                }
                break;
            case 1375100321:
                if (str.equals("openpgp_hide_sign_only")) {
                    legacyAccountDto.setOpenPgpHideSignOnly(z);
                    break;
                } else {
                    return;
                }
            default:
                return;
        }
        saveSettingsInBackground();
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putInt(String str, int i) {
        if (Intrinsics.areEqual(str, "chip_color")) {
            LegacyAccountDto legacyAccountDto = this.account;
            if (i != legacyAccountDto.getChipColor()) {
                legacyAccountDto.setChipColor(i);
                if (legacyAccountDto.getNotificationSettings().light == NotificationLight.AccountColor) {
                    this.notificationSettingsChanged = true;
                }
            }
            saveSettingsInBackground();
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putLong(long j, String str) {
        if (Intrinsics.areEqual(str, "openpgp_key")) {
            this.account.setOpenPgpKey(j);
            saveSettingsInBackground();
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putString(String str, String str2) {
        boolean z;
        str.getClass();
        if (str2 == null) {
            return;
        }
        switch (str.hashCode()) {
            case -2122772956:
                if (str.equals("spam_folder")) {
                    saveSpecialFolderSelection(str2, new MessageViewFragment$onCreate$1(2, this.account, LegacyAccountDto.class, "setSpamFolderId", "setSpamFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V", 0, 11));
                    break;
                } else {
                    return;
                }
            case -2027189669:
                if (str.equals("drafts_folder")) {
                    saveSpecialFolderSelection(str2, new MessageViewFragment$onCreate$1(2, this.account, LegacyAccountDto.class, "setDraftsFolderId", "setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V", 0, 9));
                    break;
                } else {
                    return;
                }
            case -1744924438:
                if (str.equals("account_description")) {
                    this.account.setName(str2);
                    break;
                } else {
                    return;
                }
            case -1669291821:
                if (!str.equals("account_check_frequency")) {
                    return;
                }
                LegacyAccountDto legacyAccountDto = this.account;
                int parseInt = Integer.parseInt(str2);
                synchronized (legacyAccountDto) {
                    int i = legacyAccountDto.automaticCheckIntervalMinutes;
                    legacyAccountDto.automaticCheckIntervalMinutes = parseInt;
                    z = i != parseInt;
                }
                if (z) {
                    K9JobManager k9JobManager = this.jobManager;
                    LegacyAccountDto legacyAccountDto2 = this.account;
                    MailSyncWorkerManager mailSyncWorkerManager = k9JobManager.mailSyncWorkerManager;
                    Log.v("Canceling mail sync worker for %s", legacyAccountDto2);
                    String m = CameraDevices$CC.m("MailSync:", legacyAccountDto2.uuid);
                    WorkManagerImpl workManagerImpl = mailSyncWorkerManager.workManager;
                    SystemClock systemClock = workManagerImpl.mConfiguration.tracer;
                    String concat = "CancelWorkByName_".concat(m);
                    TransactionExecutor transactionExecutor = (TransactionExecutor) workManagerImpl.mWorkTaskExecutor.executorServiceOrNull;
                    transactionExecutor.getClass();
                    OperationKt.launchOperation(systemClock, concat, transactionExecutor, new Regex$$ExternalSyntheticLambda1(6, m, workManagerImpl));
                    mailSyncWorkerManager.scheduleMailSync(legacyAccountDto2);
                    break;
                }
                break;
            case -1576734419:
                if (str.equals("account_remote_search_num_results")) {
                    this.account.setRemoteSearchNumResults(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case -1492351806:
                if (!str.equals("notification_light")) {
                    return;
                }
                NotificationLight valueOf = NotificationLight.valueOf(str2);
                LegacyAccountDto legacyAccountDto3 = this.account;
                if (valueOf != legacyAccountDto3.getNotificationSettings().light) {
                    legacyAccountDto3.updateNotificationSettings(new AbstractMap$$ExternalSyntheticLambda0(18, valueOf));
                    this.notificationSettingsChanged = true;
                    break;
                }
                break;
            case -906101113:
                if (str.equals("account_quote_prefix")) {
                    this.account.setQuotePrefix(str2);
                    break;
                } else {
                    return;
                }
            case -893167179:
                if (str.equals("account_message_age")) {
                    this.account.setMaximumPolledMessageAge(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case -417266316:
                if (!str.equals("account_ringtone")) {
                    return;
                }
                LegacyAccountDto legacyAccountDto4 = this.account;
                NotificationSettings notificationSettings = legacyAccountDto4.getNotificationSettings();
                if (!notificationSettings.isRingEnabled || !Intrinsics.areEqual(notificationSettings.ringtone, str2)) {
                    legacyAccountDto4.updateNotificationSettings(new StringsKt__IndentKt$$ExternalSyntheticLambda0(str2, 1));
                    this.notificationSettingsChanged = true;
                    break;
                }
                break;
            case -335023607:
                if (str.equals("show_pictures_enum")) {
                    this.account.setShowPictures(ShowPictures.valueOf(str2));
                    break;
                } else {
                    return;
                }
            case -143624634:
                if (str.equals("delete_policy")) {
                    this.account.setDeletePolicy(DeletePolicy.valueOf(str2));
                    break;
                } else {
                    return;
                }
            case 46498090:
                if (str.equals("account_combined_vibration")) {
                    VibratePattern vibratePattern = VibrationPreference.DEFAULT_VIBRATE_PATTERN;
                    Triple decode = ActionBar.decode(str2);
                    final boolean booleanValue = ((Boolean) decode.first).booleanValue();
                    final VibratePattern vibratePattern2 = (VibratePattern) decode.second;
                    final int intValue = ((Number) decode.third).intValue();
                    this.account.updateNotificationSettings(new Function1() { // from class: com.fsck.k9.ui.settings.account.AccountSettingsDataStore$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            NotificationSettings notificationSettings2 = (NotificationSettings) obj;
                            notificationSettings2.getClass();
                            return NotificationSettings.copy$default(notificationSettings2, null, null, new NotificationVibration(booleanValue, vibratePattern2, intValue), 7);
                        }
                    });
                    this.notificationSettingsChanged = true;
                    break;
                } else {
                    return;
                }
            case 409550016:
                if (str.equals("account_display_count")) {
                    this.account.setDisplayCount(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case 491534987:
                if (str.equals("archive_folder")) {
                    saveSpecialFolderSelection(str2, new MessageViewFragment$onCreate$1(2, this.account, LegacyAccountDto.class, "setArchiveFolderId", "setArchiveFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V", 0, 8));
                    break;
                } else {
                    return;
                }
            case 622530416:
                if (str.equals("idle_refresh_period")) {
                    this.account.setIdleRefreshMinutes(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case 632106799:
                if (str.equals("message_format")) {
                    this.account.setMessageFormat(MessageFormat.valueOf(str2));
                    break;
                } else {
                    return;
                }
            case 1085519003:
                if (str.equals("max_push_folders")) {
                    this.account.setMaxPushFolders(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case 1102377518:
                if (str.equals("quote_style")) {
                    this.account.setQuoteStyle(QuoteStyle.valueOf(str2));
                    break;
                } else {
                    return;
                }
            case 1298079351:
                if (str.equals("account_autodownload_size")) {
                    this.account.setMaximumAutoDownloadMessageSize(Integer.parseInt(str2));
                    break;
                } else {
                    return;
                }
            case 1442135805:
                if (str.equals("expunge_policy")) {
                    this.account.setExpungePolicy(Expunge.valueOf(str2));
                    break;
                } else {
                    return;
                }
            case 1626541813:
                if (str.equals("sent_folder")) {
                    saveSpecialFolderSelection(str2, new MessageViewFragment$onCreate$1(2, this.account, LegacyAccountDto.class, "setSentFolderId", "setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V", 0, 10));
                    break;
                } else {
                    return;
                }
            case 1948656257:
                if (str.equals("auto_select_folder")) {
                    LegacyAccountDto legacyAccountDto5 = this.account;
                    String substringAfter$default = StringsKt.substringAfter$default(str2, "|");
                    legacyAccountDto5.setAutoExpandFolderId(substringAfter$default.equals("") ? null : StringsKt__StringsJVMKt.toLongOrNull(substringAfter$default));
                    break;
                } else {
                    return;
                }
            case 2117048149:
                if (str.equals("trash_folder")) {
                    saveSpecialFolderSelection(str2, new MessageViewFragment$onCreate$1(2, this.account, LegacyAccountDto.class, "setTrashFolderId", "setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V", 0, 12));
                    break;
                } else {
                    return;
                }
            default:
                return;
        }
        saveSettingsInBackground();
    }

    public final void saveSettingsInBackground() {
        this.executorService.execute(new Fragment$$ExternalSyntheticLambda0(10, this));
    }
}
