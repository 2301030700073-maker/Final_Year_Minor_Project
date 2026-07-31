package com.fsck.k9.notification;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.notification.NotificationChannelManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationController {
    public final AuthenticationErrorNotificationController authenticationErrorNotificationController;
    public final CertificateErrorNotificationController certificateErrorNotificationController;
    public final NewMailNotificationController newMailNotificationController;
    public final SendFailedNotificationController sendFailedNotificationController;
    public final SyncNotificationController syncNotificationController;

    public NotificationController(CertificateErrorNotificationController certificateErrorNotificationController, AuthenticationErrorNotificationController authenticationErrorNotificationController, SyncNotificationController syncNotificationController, SendFailedNotificationController sendFailedNotificationController, NewMailNotificationController newMailNotificationController) {
        this.certificateErrorNotificationController = certificateErrorNotificationController;
        this.authenticationErrorNotificationController = authenticationErrorNotificationController;
        this.syncNotificationController = syncNotificationController;
        this.sendFailedNotificationController = sendFailedNotificationController;
        this.newMailNotificationController = newMailNotificationController;
    }

    public final void clearNewMailNotifications(LegacyAccountDto legacyAccountDto, boolean z) {
        legacyAccountDto.getClass();
        Log.v("Removing all notifications for account %s", legacyAccountDto.uuid);
        NewMailNotificationController newMailNotificationController = this.newMailNotificationController;
        synchronized (newMailNotificationController) {
            Iterator it = newMailNotificationController.newMailNotificationManager.clearNewMailNotifications(legacyAccountDto, z).iterator();
            while (it.hasNext()) {
                newMailNotificationController.notificationManager.cancel(((Number) it.next()).intValue());
            }
        }
    }

    public final void clearSendFailedNotification(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        this.sendFailedNotificationController.notificationHelper.notificationManager.cancel((legacyAccountDto.getAccountNumber() * 16) + 3);
    }

    public final void removeNewMailNotification(LegacyAccountDto legacyAccountDto, MessageReference messageReference) {
        legacyAccountDto.getClass();
        messageReference.getClass();
        Log.v("Removing notification for message %s", messageReference);
        this.newMailNotificationController.removeNewMailNotifications(legacyAccountDto, true, new AbstractMap$$ExternalSyntheticLambda0(7, messageReference));
    }

    public final void restoreNewMailNotifications(List list) {
        NewMailNotificationController newMailNotificationController = this.newMailNotificationController;
        synchronized (newMailNotificationController) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                NewMailNotificationData restoreNewMailNotifications = newMailNotificationController.newMailNotificationManager.restoreNewMailNotifications((LegacyAccountDto) it.next());
                if (restoreNewMailNotifications != null) {
                    newMailNotificationController.processNewMailNotificationData(restoreNewMailNotifications);
                }
            }
        }
    }

    public final void showSendFailedNotification(LegacyAccountDto legacyAccountDto, Exception exc) {
        PendingIntent activity;
        legacyAccountDto.getClass();
        SendFailedNotificationController sendFailedNotificationController = this.sendFailedNotificationController;
        NotificationHelper notificationHelper = sendFailedNotificationController.notificationHelper;
        Context context = sendFailedNotificationController.resourceProvider.context;
        String string = context.getString(R.string.send_failure_subject);
        string.getClass();
        String rootCauseMessage = CacheControl.Companion.getRootCauseMessage(exc);
        if (rootCauseMessage == null) {
            rootCauseMessage = "";
        }
        int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 3;
        long outboxFolderIdSync$default = Sink$CC.getOutboxFolderIdSync$default(sendFailedNotificationController.outboxFolderManager, legacyAccountDto.id);
        K9NotificationActionCreator k9NotificationActionCreator = sendFailedNotificationController.actionBuilder;
        Context context2 = k9NotificationActionCreator.context;
        if (outboxFolderIdSync$default != -1) {
            activity = k9NotificationActionCreator.createViewFolderPendingIntent(legacyAccountDto, outboxFolderIdSync$default);
        } else {
            long defaultFolder = k9NotificationActionCreator.defaultFolderProvider.getDefaultFolder(legacyAccountDto);
            LocalMessageSearch localMessageSearch = new LocalMessageSearch();
            localMessageSearch.addAllowedFolder(defaultFolder);
            String str = legacyAccountDto.uuid;
            localMessageSearch.addAccountUuid(str);
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            Intent intentDisplaySearch = MessageHomeActivity.Companion.intentDisplaySearch(context2, localMessageSearch, false, true);
            intentDisplaySearch.setData(Uri.parse("data:,messageList/" + str + "/" + defaultFolder));
            activity = NavUtils.getActivity(context2, 0, intentDisplaySearch, 134217728, false);
            activity.getClass();
        }
        NotificationChannelManager.ChannelType channelType = NotificationChannelManager.ChannelType.MISCELLANEOUS;
        NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
        Notification notification = createNotificationBuilder.mNotification;
        notification.icon = R.drawable.ic_warning;
        createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
        notification.when = System.currentTimeMillis();
        createNotificationBuilder.setFlag(16, true);
        createNotificationBuilder.setTicker(string);
        createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
        createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(rootCauseMessage);
        createNotificationBuilder.mContentIntent = activity;
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
        notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(rootCauseMessage);
        createNotificationBuilder.setStyle(notificationCompat$InboxStyle);
        NotificationCompat$Builder createNotificationBuilder2 = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
        Notification notification2 = createNotificationBuilder2.mNotification;
        notification2.icon = R.drawable.ic_warning;
        createNotificationBuilder2.mColor = legacyAccountDto.getChipColor();
        notification2.when = System.currentTimeMillis();
        String string2 = context.getString(R.string.send_failure_subject);
        string2.getClass();
        createNotificationBuilder2.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string2);
        Notification build = createNotificationBuilder2.build();
        build.getClass();
        createNotificationBuilder.mPublicVersion = build;
        createNotificationBuilder.mCategory = "err";
        IntOffsetKt.setErrorAppearance(createNotificationBuilder, sendFailedNotificationController.generalSettingsManager);
        Notification build2 = createNotificationBuilder.build();
        build2.getClass();
        notificationHelper.notify(accountNumber, build2);
    }
}
