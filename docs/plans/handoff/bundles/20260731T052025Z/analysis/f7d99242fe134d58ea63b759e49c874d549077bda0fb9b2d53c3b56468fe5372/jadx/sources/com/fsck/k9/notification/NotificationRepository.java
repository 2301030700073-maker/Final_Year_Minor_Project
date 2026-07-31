package com.fsck.k9.notification;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.work.Data;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.NotificationMessage;
import com.fsck.k9.notification.NotificationStoreOperation;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.storage.notifications.K9NotificationStoreProvider;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationRepository {
    public final GeneralSettingsManager generalSettingsManager;
    public final LocalStoreProvider localStoreProvider;
    public final MessageStoreManager messageStoreManager;
    public final NotificationContentCreator notificationContentCreator;
    public final Data.Builder notificationDataStore = new Data.Builder(8);
    public final K9NotificationStoreProvider notificationStoreProvider;

    public NotificationRepository(K9NotificationStoreProvider k9NotificationStoreProvider, LocalStoreProvider localStoreProvider, MessageStoreManager messageStoreManager, NotificationContentCreator notificationContentCreator, GeneralSettingsManager generalSettingsManager) {
        this.notificationStoreProvider = k9NotificationStoreProvider;
        this.localStoreProvider = localStoreProvider;
        this.messageStoreManager = messageStoreManager;
        this.notificationContentCreator = notificationContentCreator;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final void persistNotificationDataStoreChanges(LegacyAccountDto legacyAccountDto, List list, boolean z) {
        legacyAccountDto.getClass();
        LockableDatabase lockableDatabase = this.notificationStoreProvider.localStoreProvider.getInstance(legacyAccountDto).database;
        lockableDatabase.getClass();
        lockableDatabase.getClass();
        lockableDatabase.execute(true, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(list, new VerboseLogger()));
        if (z) {
            ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(legacyAccountDto);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                NotificationStoreOperation notificationStoreOperation = (NotificationStoreOperation) it.next();
                if (notificationStoreOperation instanceof NotificationStoreOperation.Add) {
                    MessageReference messageReference = ((NotificationStoreOperation.Add) notificationStoreOperation).messageReference;
                    messageStore.setNewMessageState(messageReference.folderId, messageReference.uid, true);
                } else if (notificationStoreOperation instanceof NotificationStoreOperation.Remove) {
                    MessageReference messageReference2 = ((NotificationStoreOperation.Remove) notificationStoreOperation).messageReference;
                    messageStore.setNewMessageState(messageReference2.folderId, messageReference2.uid, false);
                }
            }
        }
    }

    public final synchronized NotificationData restoreNotifications(LegacyAccountDto legacyAccountDto) {
        try {
            legacyAccountDto.getClass();
            if (this.notificationDataStore.isAccountInitialized(legacyAccountDto)) {
                return null;
            }
            LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
            List list = (List) localStoreProvider.database.execute(false, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(25, localStoreProvider));
            list.getClass();
            ArrayList<NotificationMessage> arrayList = new ArrayList();
            ArrayList<NotificationMessage> arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (((NotificationMessage) obj).notificationId != null) {
                    arrayList.add(obj);
                } else {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            for (NotificationMessage notificationMessage : arrayList) {
                NotificationContent createFromMessage = this.notificationContentCreator.createFromMessage(legacyAccountDto, notificationMessage.message);
                Integer num = notificationMessage.notificationId;
                num.getClass();
                arrayList3.add(new NotificationHolder(num.intValue(), notificationMessage.timestamp, createFromMessage));
            }
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            for (NotificationMessage notificationMessage2 : arrayList2) {
                arrayList4.add(new InactiveNotificationHolder(notificationMessage2.timestamp, this.notificationContentCreator.createFromMessage(legacyAccountDto, notificationMessage2.message)));
            }
            NotificationData initializeAccount = this.notificationDataStore.initializeAccount(legacyAccountDto, arrayList3, arrayList4, ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().notification.lockScreenNotificationVisibility);
            return initializeAccount.activeNotifications.isEmpty() ? null : initializeAccount;
        } catch (Throwable th) {
            throw th;
        }
    }
}
