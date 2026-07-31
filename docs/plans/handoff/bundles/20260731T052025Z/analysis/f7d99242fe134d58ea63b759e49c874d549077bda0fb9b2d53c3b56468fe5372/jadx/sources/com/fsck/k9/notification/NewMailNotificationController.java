package com.fsck.k9.notification;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.collection.LruCache;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.RemoteInput;
import androidx.core.graphics.drawable.IconCompat;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.serialization.LocalMessageSearchSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NewMailNotificationController {
    public final NewMailNotificationManager newMailNotificationManager;
    public final NotificationManagerCompat notificationManager;
    public final SingleMessageNotificationCreator singleMessageNotificationCreator;
    public final SummaryNotificationCreator summaryNotificationCreator;

    public NewMailNotificationController(NotificationManagerCompat notificationManagerCompat, NewMailNotificationManager newMailNotificationManager, SummaryNotificationCreator summaryNotificationCreator, SingleMessageNotificationCreator singleMessageNotificationCreator) {
        this.notificationManager = notificationManagerCompat;
        this.newMailNotificationManager = newMailNotificationManager;
        this.summaryNotificationCreator = summaryNotificationCreator;
        this.singleMessageNotificationCreator = singleMessageNotificationCreator;
    }

    public final void processNewMailNotificationData(NewMailNotificationData newMailNotificationData) {
        int i;
        String str;
        SummaryNotificationCreator summaryNotificationCreator;
        Intent intent;
        List list = newMailNotificationData.cancelNotificationIds;
        BaseNotificationData baseNotificationData = newMailNotificationData.baseNotificationData;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.notificationManager.cancel(((Number) it.next()).intValue());
        }
        for (SingleNotificationData singleNotificationData : newMailNotificationData.singleNotificationData) {
            singleNotificationData.getClass();
            SingleMessageNotificationCreator singleMessageNotificationCreator = this.singleMessageNotificationCreator;
            JobKt.launch$default(singleMessageNotificationCreator.scope, null, null, new SingleMessageNotificationCreator$createSingleNotification$1(baseNotificationData, singleNotificationData, singleMessageNotificationCreator, false, null), 3);
        }
        SummaryNotificationData summaryNotificationData = newMailNotificationData.summaryNotificationData;
        if (summaryNotificationData == null) {
            return;
        }
        boolean z = summaryNotificationData instanceof SummarySingleNotificationData;
        SummaryNotificationCreator summaryNotificationCreator2 = this.summaryNotificationCreator;
        if (z) {
            SingleNotificationData singleNotificationData2 = ((SummarySingleNotificationData) summaryNotificationData).singleNotificationData;
            SingleMessageNotificationCreator singleMessageNotificationCreator2 = summaryNotificationCreator2.singleMessageNotificationCreator;
            JobKt.launch$default(singleMessageNotificationCreator2.scope, null, null, new SingleMessageNotificationCreator$createSingleNotification$1(baseNotificationData, singleNotificationData2, singleMessageNotificationCreator2, true, null), 3);
            return;
        }
        if (!(summaryNotificationData instanceof SummaryInboxNotificationData)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        SummaryInboxNotificationData summaryInboxNotificationData = (SummaryInboxNotificationData) summaryNotificationData;
        int i2 = summaryInboxNotificationData.additionalMessagesCount;
        NotificationHelper notificationHelper = summaryNotificationCreator2.notificationHelper;
        K9NotificationActionCreator k9NotificationActionCreator = summaryNotificationCreator2.actionCreator;
        LegacyAccountDto legacyAccountDto = baseNotificationData.account;
        String str2 = baseNotificationData.accountName;
        int i3 = baseNotificationData.newMessagesCount;
        Context context = summaryNotificationCreator2.resourceProvider.context;
        String quantityString = context.getResources().getQuantityString(R.plurals.notification_new_messages_title, i3, Integer.valueOf(i3));
        quantityString.getClass();
        boolean z2 = summaryInboxNotificationData.isSilent;
        List<CharSequence> list2 = summaryInboxNotificationData.content;
        ArrayList arrayList = summaryInboxNotificationData.messageReferences;
        if (i2 > 0) {
            i = 0;
            str = context.getString(R.string.notification_additional_messages, Integer.valueOf(i2), str2);
            str.getClass();
        } else {
            i = 0;
            str = str2;
        }
        NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MESSAGES);
        String str3 = legacyAccountDto.uuid;
        String str4 = str;
        Notification notification = createNotificationBuilder.mNotification;
        createNotificationBuilder.mCategory = "email";
        createNotificationBuilder.mGroupKey = baseNotificationData.groupKey;
        createNotificationBuilder.mGroupSummary = true;
        createNotificationBuilder.mGroupAlertBehavior = 1;
        notification.icon = R.drawable.ic_mark_email_unread;
        createNotificationBuilder.mColor = baseNotificationData.color;
        notification.when = summaryInboxNotificationData.timestamp;
        createNotificationBuilder.mNumber = i2;
        createNotificationBuilder.setTicker((CharSequence) CollectionsKt.firstOrNull(list2));
        createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(quantityString);
        createNotificationBuilder.mSubText = NotificationCompat$Builder.limitCharSequenceLength(str2);
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(i);
        notificationCompat$InboxStyle.mTexts = new ArrayList();
        notificationCompat$InboxStyle.workSpec = NotificationCompat$Builder.limitCharSequenceLength(quantityString);
        notificationCompat$InboxStyle.tags = NotificationCompat$Builder.limitCharSequenceLength(str4);
        notificationCompat$InboxStyle.backoffCriteriaSet = true;
        for (CharSequence charSequence : list2) {
            if (charSequence != null) {
                ((ArrayList) notificationCompat$InboxStyle.mTexts).add(NotificationCompat$Builder.limitCharSequenceLength(charSequence));
            }
        }
        createNotificationBuilder.setStyle(notificationCompat$InboxStyle);
        Context context2 = k9NotificationActionCreator.context;
        Set set = SequencesKt.toSet(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, arrayList), new KoinModuleKt$$ExternalSyntheticLambda0(15), 2));
        if (((DefaultGeneralSettingsManager) k9NotificationActionCreator.generalSettingsManager).getConfig().display.inboxSettings.isShowUnifiedInbox && ((K9MessageStore) k9NotificationActionCreator.messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders).areAllIncludedInUnifiedInbox(set)) {
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            intent = new Intent(context2, (Class<?>) MessageHomeActivity.class);
            Lazy lazy2 = MessageHomeActivity.coreResourceProvider$delegate;
            ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersTitle();
            ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersDetail();
            LocalMessageSearch localMessageSearch = new LocalMessageSearch();
            localMessageSearch.id = "unified_folders";
            summaryNotificationCreator = summaryNotificationCreator2;
            localMessageSearch.and(MessageSearchField.INTEGRATE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
            intent.putExtra("account_uuid", str3);
            intent.putExtra("search_bytes", LocalMessageSearchSerializer.serialize(localMessageSearch));
            intent.putExtra("no_threading", false);
            intent.addFlags(536870912);
            intent.addFlags(67108864);
            intent.addFlags(268435456);
            intent.setData(Uri.parse("data:,unifiedInbox/" + str3));
        } else {
            summaryNotificationCreator = summaryNotificationCreator2;
            if (set.size() == 1) {
                intent = k9NotificationActionCreator.createMessageListIntent(legacyAccountDto, ((Number) CollectionsKt.first(set)).longValue());
            } else {
                Lazy lazy3 = MessageHomeActivity.coreResourceProvider$delegate;
                LocalMessageSearch localMessageSearch2 = new LocalMessageSearch();
                localMessageSearch2.id = "new_messages";
                localMessageSearch2.addAccountUuid(str3);
                localMessageSearch2.and(MessageSearchField.NEW_MESSAGE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
                Intent intentDisplaySearch = MessageHomeActivity.Companion.intentDisplaySearch(context2, localMessageSearch2, false, true);
                intentDisplaySearch.setData(Uri.parse("data:,newMessages/".concat(str3)));
                intent = intentDisplaySearch;
            }
        }
        PendingIntent activity = NavUtils.getActivity(context2, 0, intent, 134217728, false);
        activity.getClass();
        createNotificationBuilder.mContentIntent = activity;
        Class<NotificationActionService> cls = NotificationActionService.class;
        Intent intent2 = new Intent(context2, cls);
        intent2.setAction("ACTION_DISMISS");
        String str5 = "accountUuid";
        intent2.putExtra("accountUuid", str3);
        intent2.setData(Uri.parse("data:,dismissAll/" + str3 + "/" + System.currentTimeMillis()));
        PendingIntent service = NavUtils.getService(context2, intent2);
        service.getClass();
        notification.deleteIntent = service;
        Iterator it2 = summaryInboxNotificationData.actions.iterator();
        while (true) {
            char c = 215;
            if (!it2.hasNext()) {
                LruCache lruCache = new LruCache();
                Iterator it3 = summaryInboxNotificationData.wearActions.iterator();
                while (it3.hasNext()) {
                    int ordinal = ((SummaryWearNotificationAction) it3.next()).ordinal();
                    if (ordinal == 0) {
                        Iterator it4 = it3;
                        Class<NotificationActionService> cls2 = cls;
                        K9NotificationActionCreator k9NotificationActionCreator2 = k9NotificationActionCreator;
                        String str6 = str5;
                        char c2 = c;
                        String string = context.getString(R.string.notification_action_mark_all_as_read);
                        string.getClass();
                        PendingIntent createMarkAllAsReadPendingIntent = k9NotificationActionCreator2.createMarkAllAsReadPendingIntent(legacyAccountDto, arrayList);
                        IconCompat createWithResource = IconCompat.createWithResource(null, "", R.drawable.ic_mark_email_read);
                        Bundle bundle = new Bundle();
                        CharSequence limitCharSequenceLength = NotificationCompat$Builder.limitCharSequenceLength(string);
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        if (!arrayList2.isEmpty()) {
                        }
                        lruCache.addAction(new NotificationCompat$Action(createWithResource, limitCharSequenceLength, createMarkAllAsReadPendingIntent, bundle, arrayList3.isEmpty() ? null : (RemoteInput[]) arrayList3.toArray(new RemoteInput[arrayList3.size()]), true, true));
                        k9NotificationActionCreator = k9NotificationActionCreator2;
                        it3 = it4;
                        cls = cls2;
                        c = c2;
                        str5 = str6;
                    } else if (ordinal == 1) {
                        Iterator it5 = it3;
                        Class<NotificationActionService> cls3 = cls;
                        K9NotificationActionCreator k9NotificationActionCreator3 = k9NotificationActionCreator;
                        String str7 = str5;
                        String string2 = context.getString(R.string.notification_action_delete_all);
                        string2.getClass();
                        PendingIntent createDeleteAllPendingIntent = k9NotificationActionCreator3.createDeleteAllPendingIntent(legacyAccountDto, arrayList);
                        IconCompat createWithResource2 = IconCompat.createWithResource(null, "", R.drawable.ic_delete);
                        Bundle bundle2 = new Bundle();
                        CharSequence limitCharSequenceLength2 = NotificationCompat$Builder.limitCharSequenceLength(string2);
                        ArrayList arrayList4 = new ArrayList();
                        ArrayList arrayList5 = new ArrayList();
                        if (!arrayList4.isEmpty()) {
                        }
                        lruCache.addAction(new NotificationCompat$Action(createWithResource2, limitCharSequenceLength2, createDeleteAllPendingIntent, bundle2, arrayList5.isEmpty() ? null : (RemoteInput[]) arrayList5.toArray(new RemoteInput[arrayList5.size()]), true, true));
                        k9NotificationActionCreator = k9NotificationActionCreator3;
                        c = R.drawable.ic_delete;
                        it3 = it5;
                        cls = cls3;
                        str5 = str7;
                    } else {
                        if (ordinal != 2) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return;
                        }
                        String string3 = context.getString(R.string.notification_action_archive_all);
                        string3.getClass();
                        Intent intent3 = new Intent(context2, cls);
                        Iterator it6 = it3;
                        intent3.setAction("ACTION_ARCHIVE");
                        intent3.putExtra(str5, str3);
                        Class<NotificationActionService> cls4 = cls;
                        intent3.putExtra("messageReferences", Data.Companion.toMessageReferenceStringList(arrayList));
                        K9NotificationActionCreator k9NotificationActionCreator4 = k9NotificationActionCreator;
                        String str8 = str5;
                        intent3.setData(Uri.parse("data:,archiveAll/" + str3 + "/" + System.currentTimeMillis()));
                        PendingIntent service2 = NavUtils.getService(context2, intent3);
                        service2.getClass();
                        IconCompat createWithResource3 = IconCompat.createWithResource(null, "", R.drawable.ic_archive);
                        Bundle bundle3 = new Bundle();
                        CharSequence limitCharSequenceLength3 = NotificationCompat$Builder.limitCharSequenceLength(string3);
                        ArrayList arrayList6 = new ArrayList();
                        ArrayList arrayList7 = new ArrayList();
                        if (!arrayList6.isEmpty()) {
                        }
                        lruCache.addAction(new NotificationCompat$Action(createWithResource3, limitCharSequenceLength3, service2, bundle3, arrayList7.isEmpty() ? null : (RemoteInput[]) arrayList7.toArray(new RemoteInput[arrayList7.size()]), true, true));
                        it3 = it6;
                        cls = cls4;
                        k9NotificationActionCreator = k9NotificationActionCreator4;
                        str5 = str8;
                        c = 215;
                    }
                }
                createNotificationBuilder.extend(lruCache);
                IntOffsetKt.setAppearance(createNotificationBuilder, z2, baseNotificationData.appearance);
                summaryNotificationCreator.lockScreenNotificationCreator.configureLockScreenNotification(createNotificationBuilder, baseNotificationData);
                Notification build = createNotificationBuilder.build();
                build.getClass();
                Log.v("Creating inbox-style summary notification (silent=%b): %s", Boolean.valueOf(z2), build);
                notificationHelper.notify(legacyAccountDto, summaryInboxNotificationData.notificationId, build);
                return;
            }
            int ordinal2 = ((SummaryNotificationAction) it2.next()).ordinal();
            if (ordinal2 == 0) {
                String string4 = context.getString(R.string.notification_action_mark_as_read);
                string4.getClass();
                createNotificationBuilder.addAction(R.drawable.ic_mark_email_read, string4, k9NotificationActionCreator.createMarkAllAsReadPendingIntent(legacyAccountDto, arrayList));
            } else if (ordinal2 != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            } else {
                String string5 = context.getString(R.string.notification_action_delete);
                string5.getClass();
                createNotificationBuilder.addAction(R.drawable.ic_delete, string5, k9NotificationActionCreator.createDeleteAllPendingIntent(legacyAccountDto, arrayList));
            }
        }
    }

    public final synchronized void removeNewMailNotifications(LegacyAccountDto legacyAccountDto, boolean z, Function1 function1) {
        legacyAccountDto.getClass();
        NewMailNotificationData removeNewMailNotifications = this.newMailNotificationManager.removeNewMailNotifications(legacyAccountDto, z, function1);
        if (removeNewMailNotifications != null) {
            processNewMailNotificationData(removeNewMailNotifications);
        }
    }
}
