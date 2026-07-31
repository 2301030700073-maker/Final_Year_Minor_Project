package com.fsck.k9.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.NavUtils;
import androidx.room.util.DBUtil;
import androidx.work.Data;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.notification.DeleteConfirmationActivity;
import java.util.ArrayList;
import kotlin.Lazy;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9NotificationActionCreator {
    public final Context context;
    public final DefaultFolderProvider defaultFolderProvider;
    public final GeneralSettingsManager generalSettingsManager;
    public final MessageStoreManager messageStoreManager;

    public K9NotificationActionCreator(Context context, DefaultFolderProvider defaultFolderProvider, MessageStoreManager messageStoreManager, GeneralSettingsManager generalSettingsManager) {
        this.context = context;
        this.defaultFolderProvider = defaultFolderProvider;
        this.messageStoreManager = messageStoreManager;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final PendingIntent createArchiveMessagePendingIntent(MessageReference messageReference) {
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) NotificationActionService.class);
        intent.setAction("ACTION_ARCHIVE");
        intent.putExtra("accountUuid", messageReference.accountUuid);
        intent.putExtra("messageReferences", IntOffsetKt.arrayListOf(messageReference.toIdentityString()));
        intent.setData(Uri.parse("data:,archive/".concat(messageReference.toIdentityString())));
        PendingIntent service = NavUtils.getService(context, intent);
        service.getClass();
        return service;
    }

    public final PendingIntent createDeleteAllPendingIntent(LegacyAccountDto legacyAccountDto, ArrayList arrayList) {
        legacyAccountDto.getClass();
        boolean z = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().interaction.isConfirmDeleteFromNotification;
        Context context = this.context;
        if (z) {
            int i = DeleteConfirmationActivity.$r8$clinit;
            Intent intent = DBUtil.getIntent(context, arrayList);
            intent.setData(Uri.parse("data:,deleteAllConfirmation/" + System.currentTimeMillis()));
            PendingIntent activity = NavUtils.getActivity(context, 0, intent, 268435456, false);
            activity.getClass();
            return activity;
        }
        String str = legacyAccountDto.uuid;
        str.getClass();
        Intent intent2 = new Intent(context, (Class<?>) NotificationActionService.class);
        intent2.setAction("ACTION_DELETE");
        intent2.putExtra("accountUuid", str);
        intent2.putExtra("messageReferences", Data.Companion.toMessageReferenceStringList(arrayList));
        intent2.setData(Uri.parse("data:,deleteAll/" + str + "/" + System.currentTimeMillis()));
        PendingIntent service = NavUtils.getService(context, intent2);
        service.getClass();
        return service;
    }

    public final PendingIntent createDeleteMessagePendingIntent(MessageReference messageReference) {
        boolean z = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().interaction.isConfirmDeleteFromNotification;
        Context context = this.context;
        if (z) {
            int i = DeleteConfirmationActivity.$r8$clinit;
            Intent intent = DBUtil.getIntent(context, IntOffsetKt.listOf(messageReference));
            intent.setData(Uri.parse("data:,deleteConfirmation/".concat(messageReference.toIdentityString())));
            PendingIntent activity = NavUtils.getActivity(context, 0, intent, 134217728, false);
            activity.getClass();
            return activity;
        }
        Intent intent2 = new Intent(context, (Class<?>) NotificationActionService.class);
        intent2.setAction("ACTION_DELETE");
        intent2.putExtra("accountUuid", messageReference.accountUuid);
        intent2.putExtra("messageReferences", IntOffsetKt.arrayListOf(messageReference.toIdentityString()));
        intent2.setData(Uri.parse("data:,delete/".concat(messageReference.toIdentityString())));
        PendingIntent service = NavUtils.getService(context, intent2);
        service.getClass();
        return service;
    }

    public final PendingIntent createMarkAllAsReadPendingIntent(LegacyAccountDto legacyAccountDto, ArrayList arrayList) {
        legacyAccountDto.getClass();
        String str = legacyAccountDto.uuid;
        str.getClass();
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) NotificationActionService.class);
        intent.setAction("ACTION_MARK_AS_READ");
        intent.putExtra("accountUuid", str);
        intent.putExtra("messageReferences", Data.Companion.toMessageReferenceStringList(arrayList));
        intent.setData(Uri.parse("data:,markAllAsRead/" + str + "/" + System.currentTimeMillis()));
        PendingIntent service = NavUtils.getService(context, intent);
        service.getClass();
        return service;
    }

    public final PendingIntent createMarkMessageAsReadPendingIntent(MessageReference messageReference) {
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) NotificationActionService.class);
        intent.setAction("ACTION_MARK_AS_READ");
        intent.putExtra("accountUuid", messageReference.accountUuid);
        intent.putExtra("messageReferences", IntOffsetKt.arrayListOf(messageReference.toIdentityString()));
        intent.setData(Uri.parse("data:,markAsRead/".concat(messageReference.toIdentityString())));
        PendingIntent service = NavUtils.getService(context, intent);
        service.getClass();
        return service;
    }

    public final PendingIntent createMarkMessageAsSpamPendingIntent(MessageReference messageReference) {
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) NotificationActionService.class);
        intent.setAction("ACTION_SPAM");
        intent.putExtra("accountUuid", messageReference.accountUuid);
        intent.putExtra("messageReference", messageReference.toIdentityString());
        intent.setData(Uri.parse("data:,spam/".concat(messageReference.toIdentityString())));
        PendingIntent service = NavUtils.getService(context, intent);
        service.getClass();
        return service;
    }

    public final Intent createMessageListIntent(LegacyAccountDto legacyAccountDto, long j) {
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.addAllowedFolder(j);
        localMessageSearch.addAccountUuid(legacyAccountDto.uuid);
        Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
        Intent intentDisplaySearch = MessageHomeActivity.Companion.intentDisplaySearch(this.context, localMessageSearch, false, true);
        intentDisplaySearch.setData(Uri.parse("data:,messageList/" + legacyAccountDto.uuid + "/" + j));
        return intentDisplaySearch;
    }

    public final PendingIntent createReplyPendingIntent(MessageReference messageReference) {
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) MessageCompose.class);
        intent.setAction("com.fsck.k9.intent.action.REPLY");
        intent.putExtra("message_reference", messageReference.toIdentityString());
        intent.addFlags(268435456);
        intent.setData(Uri.parse("data:,reply/".concat(messageReference.toIdentityString())));
        PendingIntent activity = NavUtils.getActivity(context, 0, intent, 134217728, false);
        activity.getClass();
        return activity;
    }

    public final PendingIntent createViewFolderPendingIntent(LegacyAccountDto legacyAccountDto, long j) {
        legacyAccountDto.getClass();
        PendingIntent activity = NavUtils.getActivity(this.context, 0, createMessageListIntent(legacyAccountDto, j), 134217728, false);
        activity.getClass();
        return activity;
    }

    public final PendingIntent getEditIncomingServerSettingsIntent(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        int i = FeatureLauncherActivity.$r8$clinit;
        String str = legacyAccountDto.uuid;
        str.getClass();
        new AccountEditRoute.IncomingServerSettings(str);
        Uri parse = Uri.parse("app://account/edit/incoming/".concat(str));
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) FeatureLauncherActivity.class);
        intent.setData(parse);
        PendingIntent activity = NavUtils.getActivity(context, legacyAccountDto.getAccountNumber(), intent, 134217728, false);
        activity.getClass();
        return activity;
    }

    public final PendingIntent getEditOutgoingServerSettingsIntent(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        int i = FeatureLauncherActivity.$r8$clinit;
        String str = legacyAccountDto.uuid;
        str.getClass();
        new AccountEditRoute.OutgoingServerSettings(str);
        Uri parse = Uri.parse("app://account/edit/outgoing/".concat(str));
        Context context = this.context;
        Intent intent = new Intent(context, (Class<?>) FeatureLauncherActivity.class);
        intent.setData(parse);
        PendingIntent activity = NavUtils.getActivity(context, legacyAccountDto.getAccountNumber(), intent, 134217728, false);
        activity.getClass();
        return activity;
    }
}
