package com.fsck.k9.notification;

import androidx.compose.runtime.Latch;
import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlin.time.Clock;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NewMailNotificationManager {
    public final Clock clock;
    public final NotificationContentCreator contentCreator;
    public final NotificationRepository notificationRepository;
    public final SingleMessageNotificationDataCreator singleMessageNotificationDataCreator;
    public final SummaryNotificationDataCreator summaryNotificationDataCreator;

    public NewMailNotificationManager(NotificationContentCreator notificationContentCreator, NotificationRepository notificationRepository, BaseNotificationDataCreator baseNotificationDataCreator, SingleMessageNotificationDataCreator singleMessageNotificationDataCreator, SummaryNotificationDataCreator summaryNotificationDataCreator, Clock clock) {
        this.contentCreator = notificationContentCreator;
        this.notificationRepository = notificationRepository;
        this.singleMessageNotificationDataCreator = singleMessageNotificationDataCreator;
        this.summaryNotificationDataCreator = summaryNotificationDataCreator;
        this.clock = clock;
    }

    public final NewMailNotificationData addNewMailNotification(LegacyAccountDto legacyAccountDto, LocalMessage localMessage, boolean z) {
        Latch addNotification;
        List list;
        legacyAccountDto.getClass();
        NotificationContent createFromMessage = this.contentCreator.createFromMessage(legacyAccountDto, localMessage);
        NotificationRepository notificationRepository = this.notificationRepository;
        long epochMilliseconds = this.clock.now().toEpochMilliseconds();
        synchronized (notificationRepository) {
            notificationRepository.restoreNotifications(legacyAccountDto);
            addNotification = notificationRepository.notificationDataStore.addNotification(legacyAccountDto, createFromMessage, epochMilliseconds);
            if (addNotification != null) {
                notificationRepository.persistNotificationDataStoreChanges(legacyAccountDto, (List) addNotification.awaiters, true);
            } else {
                addNotification = null;
            }
        }
        if (addNotification == null) {
            return null;
        }
        NotificationHolder notificationHolder = (NotificationHolder) addNotification.spareList;
        SingleNotificationData createSingleNotificationData = createSingleNotificationData(legacyAccountDto, notificationHolder.notificationId, notificationHolder.content, notificationHolder.timestamp, ((NotificationData) addNotification.lock).activeNotifications.size() == 1);
        boolean z2 = addNotification._isOpen;
        if (!z2) {
            list = EmptyList.INSTANCE;
        } else {
            if (!z2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("shouldCancelNotification == false");
                return null;
            }
            list = IntOffsetKt.listOf(Integer.valueOf(((NotificationHolder) addNotification.spareList).notificationId));
        }
        return new NewMailNotificationData(list, createBaseNotificationData((NotificationData) addNotification.lock), IntOffsetKt.listOf(createSingleNotificationData), createSummaryNotificationData((NotificationData) addNotification.lock, z));
    }

    public final ArrayList clearNewMailNotifications(LegacyAccountDto legacyAccountDto, boolean z) {
        legacyAccountDto.getClass();
        NotificationRepository notificationRepository = this.notificationRepository;
        synchronized (notificationRepository) {
            notificationRepository.notificationDataStore.clearNotifications(legacyAccountDto);
            LockableDatabase lockableDatabase = notificationRepository.notificationStoreProvider.localStoreProvider.getInstance(legacyAccountDto).database;
            lockableDatabase.getClass();
            lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(13));
            if (z) {
                notificationRepository.messageStoreManager.getMessageStore(legacyAccountDto).clearNewMessageState();
            }
        }
        IntRange until = RangesKt.until(0, 9);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(until, 10));
        Iterator it = until.iterator();
        while (((IntProgressionIterator) it).hasNext) {
            arrayList.add(Integer.valueOf((legacyAccountDto.getAccountNumber() * 16) + 10 + ((IntIterator) it).nextInt()));
        }
        return CollectionsKt.plus(CollectionsKt.toList(arrayList), Integer.valueOf((legacyAccountDto.getAccountNumber() * 16) + 9));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fsck.k9.notification.BaseNotificationData createBaseNotificationData(com.fsck.k9.notification.NotificationData r10) {
        /*
            r9 = this;
            net.thunderbird.core.android.account.LegacyAccountDto r1 = r10.account
            r1.getClass()
            int r9 = r1.getAccountNumber()
            java.lang.String r0 = "newMailNotifications-"
            java.lang.String r3 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r0, r9)
            java.lang.String r2 = r1.getDisplayName()
            int r4 = r1.getChipColor()
            java.util.List r9 = r10.activeNotifications
            int r0 = r9.size()
            java.util.List r5 = r10.inactiveNotifications
            int r5 = r5.size()
            int r5 = r5 + r0
            net.thunderbird.core.preference.LockScreenNotificationVisibility r10 = r10.lockScreenNotificationVisibility
            int r10 = r10.ordinal()
            r0 = 0
            if (r10 == 0) goto L77
            r6 = 1
            r7 = 2
            if (r10 == r6) goto L47
            if (r10 == r7) goto L44
            r9 = 3
            if (r10 == r9) goto L41
            r9 = 4
            if (r10 != r9) goto L3d
            com.fsck.k9.notification.LockScreenNotificationData$None r9 = com.fsck.k9.notification.LockScreenNotificationData.None.INSTANCE
        L3b:
            r6 = r9
            goto L7a
        L3d:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return r0
        L41:
            com.fsck.k9.notification.LockScreenNotificationData$None r9 = com.fsck.k9.notification.LockScreenNotificationData.None.INSTANCE$1
            goto L3b
        L44:
            com.fsck.k9.notification.LockScreenNotificationData$None r9 = com.fsck.k9.notification.LockScreenNotificationData.None.INSTANCE$2
            goto L3b
        L47:
            com.fsck.k9.notification.LockScreenNotificationData$SenderNames r10 = new com.fsck.k9.notification.LockScreenNotificationData$SenderNames
            kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 r6 = new kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1
            r6.<init>(r7, r9)
            com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0 r9 = new com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0
            r8 = 13
            r9.<init>(r8)
            kotlin.sequences.TakeWhileSequence r8 = new kotlin.sequences.TakeWhileSequence
            r8.<init>(r6, r9, r7)
            androidx.compose.material3.TextKt$$ExternalSyntheticLambda1 r9 = new androidx.compose.material3.TextKt$$ExternalSyntheticLambda1
            r6 = 23
            r9.<init>(r6)
            kotlin.sequences.DistinctSequence r6 = new kotlin.sequences.DistinctSequence
            r7 = 0
            r6.<init>(r7, r8, r9)
            r9 = 5
            kotlin.sequences.Sequence r9 = kotlin.sequences.SequencesKt.take(r6, r9)
            r6 = 63
            java.lang.String r9 = kotlin.sequences.SequencesKt.joinToString$default(r9, r0, r6)
            r10.<init>(r9)
            r6 = r10
            goto L7a
        L77:
            com.fsck.k9.notification.LockScreenNotificationData$None r9 = com.fsck.k9.notification.LockScreenNotificationData.None.INSTANCE$3
            goto L3b
        L7a:
            net.thunderbird.feature.notification.NotificationSettings r9 = r1.getNotificationSettings()
            net.thunderbird.feature.notification.NotificationVibration r10 = r9.vibration
            net.thunderbird.feature.notification.VibratePattern r7 = r10.pattern
            int r10 = r10.repeatCount
            long[] r10 = kotlin.ranges.RangesKt.getSystemPattern(r7, r10)
            net.thunderbird.feature.notification.NotificationVibration r7 = r9.vibration
            boolean r7 = r7.isEnabled
            if (r7 == 0) goto L8f
            r0 = r10
        L8f:
            com.fsck.k9.notification.NotificationAppearance r7 = new com.fsck.k9.notification.NotificationAppearance
            java.lang.String r9 = r9.ringtone
            net.thunderbird.feature.notification.NotificationSettings r10 = r1.getNotificationSettings()
            net.thunderbird.feature.notification.NotificationLight r10 = r10.light
            int r8 = r1.getChipColor()
            java.lang.Integer r10 = r10.toColor(r8)
            r7.<init>(r9, r0, r10)
            com.fsck.k9.notification.BaseNotificationData r0 = new com.fsck.k9.notification.BaseNotificationData
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.notification.NewMailNotificationManager.createBaseNotificationData(com.fsck.k9.notification.NotificationData):com.fsck.k9.notification.BaseNotificationData");
    }

    public final SingleNotificationData createSingleNotificationData(LegacyAccountDto legacyAccountDto, int i, NotificationContent notificationContent, long j, boolean z) {
        legacyAccountDto.getClass();
        SingleMessageNotificationDataCreator singleMessageNotificationDataCreator = this.singleMessageNotificationDataCreator;
        return new SingleNotificationData(i, true, j, notificationContent, singleMessageNotificationDataCreator.createSingleNotificationActions(legacyAccountDto), singleMessageNotificationDataCreator.createSingleNotificationWearActions(legacyAccountDto), z);
    }

    public final SummaryNotificationData createSummaryNotificationData(NotificationData notificationData, boolean z) {
        List list = notificationData.activeNotifications;
        if (list.isEmpty()) {
            return null;
        }
        SummaryNotificationDataCreator summaryNotificationDataCreator = this.summaryNotificationDataCreator;
        GeneralSettingsManager generalSettingsManager = summaryNotificationDataCreator.generalSettingsManager;
        LegacyAccountDto legacyAccountDto = notificationData.account;
        long j = ((NotificationHolder) CollectionsKt.first(list)).timestamp;
        boolean z2 = z || IntOffsetKt.isQuietTime(((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().notification);
        if (list.size() == 1) {
            SingleMessageNotificationDataCreator singleMessageNotificationDataCreator = summaryNotificationDataCreator.singleMessageNotificationDataCreator;
            legacyAccountDto.getClass();
            return new SummarySingleNotificationData(new SingleNotificationData((legacyAccountDto.getAccountNumber() * 16) + 9, z2, j, ((NotificationHolder) CollectionsKt.first(list)).content, singleMessageNotificationDataCreator.createSingleNotificationActions(legacyAccountDto), singleMessageNotificationDataCreator.createSingleNotificationWearActions(legacyAccountDto), false));
        }
        legacyAccountDto.getClass();
        int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 9;
        List list2 = SequencesKt.toList(SequencesKt.take(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, list), new KoinModuleKt$$ExternalSyntheticLambda0(17), 2), 5));
        int size = (notificationData.inactiveNotifications.size() + list.size()) - 5;
        int i = size < 0 ? 0 : size;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((NotificationHolder) it.next()).content.messageReference);
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(SummaryNotificationAction.MarkAsRead);
        if (((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().notification.isSummaryDeleteActionEnabled) {
            createListBuilder.add(SummaryNotificationAction.Delete);
        }
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        ListBuilder createListBuilder2 = IntOffsetKt.createListBuilder();
        createListBuilder2.add(SummaryWearNotificationAction.MarkAsRead);
        if (((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().notification.isSummaryDeleteActionEnabled && !((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().interaction.isConfirmDeleteFromNotification) {
            createListBuilder2.add(SummaryWearNotificationAction.Delete);
        }
        if (legacyAccountDto.hasArchiveFolder()) {
            createListBuilder2.add(SummaryWearNotificationAction.Archive);
        }
        return new SummaryInboxNotificationData(accountNumber, z2, j, list2, i, arrayList, build, IntOffsetKt.build(createListBuilder2));
    }

    public final NewMailNotificationData removeNewMailNotifications(LegacyAccountDto legacyAccountDto, boolean z, Function1 function1) {
        RemoveNotificationsResult removeNotifications;
        legacyAccountDto.getClass();
        NotificationRepository notificationRepository = this.notificationRepository;
        synchronized (notificationRepository) {
            notificationRepository.restoreNotifications(legacyAccountDto);
            removeNotifications = notificationRepository.notificationDataStore.removeNotifications(legacyAccountDto, function1);
            if (removeNotifications != null) {
                notificationRepository.persistNotificationDataStoreChanges(legacyAccountDto, removeNotifications.notificationStoreOperations, z);
            } else {
                removeNotifications = null;
            }
        }
        if (removeNotifications == null) {
            return null;
        }
        boolean isEmpty = removeNotifications.notificationData.activeNotifications.isEmpty();
        ArrayList arrayList = removeNotifications.cancelNotificationIds;
        if (isEmpty) {
            arrayList = CollectionsKt.plus(arrayList, Integer.valueOf((legacyAccountDto.getAccountNumber() * 16) + 9));
        }
        ArrayList arrayList2 = removeNotifications.notificationHolders;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                NewMailNotificationManager newMailNotificationManager = this;
                return new NewMailNotificationData(arrayList, newMailNotificationManager.createBaseNotificationData(removeNotifications.notificationData), arrayList3, newMailNotificationManager.createSummaryNotificationData(removeNotifications.notificationData, true));
            }
            NotificationHolder notificationHolder = (NotificationHolder) it.next();
            NewMailNotificationManager newMailNotificationManager2 = this;
            LegacyAccountDto legacyAccountDto2 = legacyAccountDto;
            arrayList3.add(newMailNotificationManager2.createSingleNotificationData(legacyAccountDto2, notificationHolder.notificationId, notificationHolder.content, notificationHolder.timestamp, removeNotifications.notificationData.activeNotifications.size() == 1));
            this = newMailNotificationManager2;
            legacyAccountDto = legacyAccountDto2;
        }
    }

    public final NewMailNotificationData restoreNewMailNotifications(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        NotificationData restoreNotifications = this.notificationRepository.restoreNotifications(legacyAccountDto);
        if (restoreNotifications == null) {
            return null;
        }
        List<NotificationHolder> list = restoreNotifications.activeNotifications;
        boolean z = list.size() == 1;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (NotificationHolder notificationHolder : list) {
            int i = notificationHolder.notificationId;
            NotificationContent notificationContent = notificationHolder.content;
            long j = notificationHolder.timestamp;
            NewMailNotificationManager newMailNotificationManager = this;
            arrayList.add(newMailNotificationManager.createSingleNotificationData(legacyAccountDto, i, notificationContent, j, z));
            this = newMailNotificationManager;
        }
        NewMailNotificationManager newMailNotificationManager2 = this;
        return new NewMailNotificationData(EmptyList.INSTANCE, newMailNotificationManager2.createBaseNotificationData(restoreNotifications), arrayList, newMailNotificationManager2.createSummaryNotificationData(restoreNotifications, true));
    }
}
