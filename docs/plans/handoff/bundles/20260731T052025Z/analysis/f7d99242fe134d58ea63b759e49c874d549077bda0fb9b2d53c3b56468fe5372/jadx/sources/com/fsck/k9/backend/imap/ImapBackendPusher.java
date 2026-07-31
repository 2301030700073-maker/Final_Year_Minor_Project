package com.fsck.k9.backend.imap;

import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.Configuration;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.activity.MessageLoaderHelper$4$$ExternalSyntheticLambda0;
import com.fsck.k9.backend.imap.BackendIdleRefreshManager;
import com.fsck.k9.backends.AndroidAlarmManager;
import com.fsck.k9.backends.DefaultImapBackendFactory$createImapStoreConfig$1;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.power.AndroidPowerManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapBackendPusher {
    public final String accountName;
    public final LocalStore.AnonymousClass7 callback;
    public final ContextScope coroutineScope;
    public Collection currentFolderServerIds;
    public volatile long currentIdleRefreshMs;
    public volatile int currentMaxPushFolders;
    public final IdleRefreshManager idleRefreshManager;
    public final Configuration.Builder idleRefreshTimeoutProvider;
    public final RealImapStore imapStore;
    public final Object lock;
    public final AndroidPowerManager powerManager;
    public final DefaultImapBackendFactory$createImapStoreConfig$1 pushConfigProvider;
    public final LinkedHashMap pushFolderSleeping;
    public final LinkedHashMap pushFolders;

    public ImapBackendPusher(RealImapStore realImapStore, AndroidPowerManager androidPowerManager, IdleRefreshManager idleRefreshManager, DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$1, LocalStore.AnonymousClass7 anonymousClass7, String str) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        anonymousClass7.getClass();
        defaultIoScheduler.getClass();
        this.imapStore = realImapStore;
        this.powerManager = androidPowerManager;
        this.idleRefreshManager = idleRefreshManager;
        this.pushConfigProvider = defaultImapBackendFactory$createImapStoreConfig$1;
        this.callback = anonymousClass7;
        this.accountName = str;
        this.coroutineScope = JobKt.CoroutineScope(defaultIoScheduler);
        this.lock = new Object();
        this.pushFolders = new LinkedHashMap();
        this.currentFolderServerIds = EmptySet.INSTANCE;
        this.pushFolderSleeping = new LinkedHashMap();
        this.idleRefreshTimeoutProvider = new Configuration.Builder(20, this);
        this.currentIdleRefreshMs = 900000L;
    }

    public final void onPushEvent(String str) {
        str.getClass();
        LocalStore.AnonymousClass7 anonymousClass7 = this.callback;
        anonymousClass7.getClass();
        LegacyAccountDto account = ((Preferences) ((LegacyAccountDtoManager) anonymousClass7.val$queryString)).getAccount(((AccountId) anonymousClass7.val$messages).value.toString());
        MessagingController messagingController = (MessagingController) anonymousClass7.val$placeHolders;
        long folderId = messagingController.getFolderId(account, str);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        messagingController.putBackground("synchronizeMailbox", new MessageLoaderHelper$4$$ExternalSyntheticLambda0(messagingController, account, folderId, countDownLatch, 5));
        try {
            countDownLatch.await();
        } catch (Exception e) {
            Log.e(e, "Interrupted while awaiting latch release", new Object[0]);
        }
        BackendIdleRefreshManager backendIdleRefreshManager = (BackendIdleRefreshManager) this.idleRefreshManager;
        synchronized (backendIdleRefreshManager) {
            backendIdleRefreshManager.currentTriggerTime = 0L;
            AndroidAlarmManager androidAlarmManager = backendIdleRefreshManager.alarmManager;
            androidAlarmManager.callback.set(null);
            androidAlarmManager.alarmManager.cancel(androidAlarmManager.pendingIntent);
        }
        backendIdleRefreshManager.onTimeout();
    }

    public final void startRetryTimer(long j, String str) {
        Log.v("ImapBackendPusher for folder %s sleeping for %d ms", str, Long.valueOf(j));
        this.pushFolderSleeping.put(str, ((BackendIdleRefreshManager) this.idleRefreshManager).startTimer(j, new RoomDatabase$closeBarrier$1(0, this, ImapBackendPusher.class, "restartFolderPushers", "restartFolderPushers()V", 0, 18)));
    }

    public final void updateFolders(int i, Collection collection) {
        Collection collection2;
        List list;
        List<ImapFolderPusher> list2;
        final int i2 = 1;
        final int i3 = 0;
        Log.v("ImapBackendPusher.updateFolders(): %s", collection);
        final int i4 = 2;
        if (collection.size() > i) {
            collection2 = CollectionsKt.take(collection, i);
            Log.v("..limiting Push to %d folders: %s", Integer.valueOf(i), collection2);
        } else {
            collection2 = collection;
        }
        synchronized (this.lock) {
            this.currentFolderServerIds = collection;
            Set keySet = this.pushFolders.keySet();
            list = SequencesKt.toList(SequencesKt.filterNotNull(new TakeWhileSequence(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i4, Validate.minus((Set) Validate.plus(keySet, (Iterable) this.pushFolderSleeping.keySet()), (Iterable) collection2)), new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(i3, new Function1(this) { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$$ExternalSyntheticLambda0
                public final /* synthetic */ ImapBackendPusher f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i5 = i3;
                    Unit unit = Unit.INSTANCE;
                    ImapBackendPusher imapBackendPusher = this.f$0;
                    switch (i5) {
                        case 0:
                            String str = (String) obj;
                            str.getClass();
                            Log.v("Canceling ImapBackendPusher retry timer for folder %s", str);
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.remove(str);
                            if (backendIdleRefreshTimer != null) {
                                backendIdleRefreshTimer.cancel();
                            }
                            return unit;
                        case 1:
                            String str2 = (String) obj;
                            str2.getClass();
                            return (ImapFolderPusher) imapBackendPusher.pushFolders.remove(str2);
                        case 2:
                            String str3 = (String) obj;
                            str3.getClass();
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer2 = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.get(str3);
                            return Boolean.valueOf(backendIdleRefreshTimer2 != null && backendIdleRefreshTimer2.isWaiting);
                        case 3:
                            String str4 = (String) obj;
                            str4.getClass();
                            imapBackendPusher.pushFolderSleeping.remove(str4);
                            return unit;
                        default:
                            String str5 = (String) obj;
                            str5.getClass();
                            ImapBackendPusher imapBackendPusher2 = this.f$0;
                            ImapFolderPusher imapFolderPusher = new ImapFolderPusher(imapBackendPusher2.imapStore, imapBackendPusher2.powerManager, imapBackendPusher2.idleRefreshManager, imapBackendPusher2, imapBackendPusher2.accountName, str5, imapBackendPusher2.idleRefreshTimeoutProvider);
                            imapBackendPusher2.pushFolders.put(str5, imapFolderPusher);
                            return imapFolderPusher;
                    }
                }
            }), 2), new Function1(this) { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$$ExternalSyntheticLambda0
                public final /* synthetic */ ImapBackendPusher f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i5 = i2;
                    Unit unit = Unit.INSTANCE;
                    ImapBackendPusher imapBackendPusher = this.f$0;
                    switch (i5) {
                        case 0:
                            String str = (String) obj;
                            str.getClass();
                            Log.v("Canceling ImapBackendPusher retry timer for folder %s", str);
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.remove(str);
                            if (backendIdleRefreshTimer != null) {
                                backendIdleRefreshTimer.cancel();
                            }
                            return unit;
                        case 1:
                            String str2 = (String) obj;
                            str2.getClass();
                            return (ImapFolderPusher) imapBackendPusher.pushFolders.remove(str2);
                        case 2:
                            String str3 = (String) obj;
                            str3.getClass();
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer2 = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.get(str3);
                            return Boolean.valueOf(backendIdleRefreshTimer2 != null && backendIdleRefreshTimer2.isWaiting);
                        case 3:
                            String str4 = (String) obj;
                            str4.getClass();
                            imapBackendPusher.pushFolderSleeping.remove(str4);
                            return unit;
                        default:
                            String str5 = (String) obj;
                            str5.getClass();
                            ImapBackendPusher imapBackendPusher2 = this.f$0;
                            ImapFolderPusher imapFolderPusher = new ImapFolderPusher(imapBackendPusher2.imapStore, imapBackendPusher2.powerManager, imapBackendPusher2.idleRefreshManager, imapBackendPusher2, imapBackendPusher2.accountName, str5, imapBackendPusher2.idleRefreshTimeoutProvider);
                            imapBackendPusher2.pushFolders.put(str5, imapFolderPusher);
                            return imapFolderPusher;
                    }
                }
            }, 2)));
            FilteringSequence filteringSequence = new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i4, CollectionsKt.minus(collection2, keySet)), false, new Function1(this) { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$$ExternalSyntheticLambda0
                public final /* synthetic */ ImapBackendPusher f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i5 = i4;
                    Unit unit = Unit.INSTANCE;
                    ImapBackendPusher imapBackendPusher = this.f$0;
                    switch (i5) {
                        case 0:
                            String str = (String) obj;
                            str.getClass();
                            Log.v("Canceling ImapBackendPusher retry timer for folder %s", str);
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.remove(str);
                            if (backendIdleRefreshTimer != null) {
                                backendIdleRefreshTimer.cancel();
                            }
                            return unit;
                        case 1:
                            String str2 = (String) obj;
                            str2.getClass();
                            return (ImapFolderPusher) imapBackendPusher.pushFolders.remove(str2);
                        case 2:
                            String str3 = (String) obj;
                            str3.getClass();
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer2 = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.get(str3);
                            return Boolean.valueOf(backendIdleRefreshTimer2 != null && backendIdleRefreshTimer2.isWaiting);
                        case 3:
                            String str4 = (String) obj;
                            str4.getClass();
                            imapBackendPusher.pushFolderSleeping.remove(str4);
                            return unit;
                        default:
                            String str5 = (String) obj;
                            str5.getClass();
                            ImapBackendPusher imapBackendPusher2 = this.f$0;
                            ImapFolderPusher imapFolderPusher = new ImapFolderPusher(imapBackendPusher2.imapStore, imapBackendPusher2.powerManager, imapBackendPusher2.idleRefreshManager, imapBackendPusher2, imapBackendPusher2.accountName, str5, imapBackendPusher2.idleRefreshTimeoutProvider);
                            imapBackendPusher2.pushFolders.put(str5, imapFolderPusher);
                            return imapFolderPusher;
                    }
                }
            });
            final int i5 = 3;
            TakeWhileSequence takeWhileSequence = new TakeWhileSequence(filteringSequence, new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(i3, new Function1(this) { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$$ExternalSyntheticLambda0
                public final /* synthetic */ ImapBackendPusher f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i52 = i5;
                    Unit unit = Unit.INSTANCE;
                    ImapBackendPusher imapBackendPusher = this.f$0;
                    switch (i52) {
                        case 0:
                            String str = (String) obj;
                            str.getClass();
                            Log.v("Canceling ImapBackendPusher retry timer for folder %s", str);
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.remove(str);
                            if (backendIdleRefreshTimer != null) {
                                backendIdleRefreshTimer.cancel();
                            }
                            return unit;
                        case 1:
                            String str2 = (String) obj;
                            str2.getClass();
                            return (ImapFolderPusher) imapBackendPusher.pushFolders.remove(str2);
                        case 2:
                            String str3 = (String) obj;
                            str3.getClass();
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer2 = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.get(str3);
                            return Boolean.valueOf(backendIdleRefreshTimer2 != null && backendIdleRefreshTimer2.isWaiting);
                        case 3:
                            String str4 = (String) obj;
                            str4.getClass();
                            imapBackendPusher.pushFolderSleeping.remove(str4);
                            return unit;
                        default:
                            String str5 = (String) obj;
                            str5.getClass();
                            ImapBackendPusher imapBackendPusher2 = this.f$0;
                            ImapFolderPusher imapFolderPusher = new ImapFolderPusher(imapBackendPusher2.imapStore, imapBackendPusher2.powerManager, imapBackendPusher2.idleRefreshManager, imapBackendPusher2, imapBackendPusher2.accountName, str5, imapBackendPusher2.idleRefreshTimeoutProvider);
                            imapBackendPusher2.pushFolders.put(str5, imapFolderPusher);
                            return imapFolderPusher;
                    }
                }
            }), 2);
            final int i6 = 4;
            list2 = SequencesKt.toList(new TakeWhileSequence(takeWhileSequence, new Function1(this) { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$$ExternalSyntheticLambda0
                public final /* synthetic */ ImapBackendPusher f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i52 = i6;
                    Unit unit = Unit.INSTANCE;
                    ImapBackendPusher imapBackendPusher = this.f$0;
                    switch (i52) {
                        case 0:
                            String str = (String) obj;
                            str.getClass();
                            Log.v("Canceling ImapBackendPusher retry timer for folder %s", str);
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.remove(str);
                            if (backendIdleRefreshTimer != null) {
                                backendIdleRefreshTimer.cancel();
                            }
                            return unit;
                        case 1:
                            String str2 = (String) obj;
                            str2.getClass();
                            return (ImapFolderPusher) imapBackendPusher.pushFolders.remove(str2);
                        case 2:
                            String str3 = (String) obj;
                            str3.getClass();
                            BackendIdleRefreshManager.BackendIdleRefreshTimer backendIdleRefreshTimer2 = (BackendIdleRefreshManager.BackendIdleRefreshTimer) imapBackendPusher.pushFolderSleeping.get(str3);
                            return Boolean.valueOf(backendIdleRefreshTimer2 != null && backendIdleRefreshTimer2.isWaiting);
                        case 3:
                            String str4 = (String) obj;
                            str4.getClass();
                            imapBackendPusher.pushFolderSleeping.remove(str4);
                            return unit;
                        default:
                            String str5 = (String) obj;
                            str5.getClass();
                            ImapBackendPusher imapBackendPusher2 = this.f$0;
                            ImapFolderPusher imapFolderPusher = new ImapFolderPusher(imapBackendPusher2.imapStore, imapBackendPusher2.powerManager, imapBackendPusher2.idleRefreshManager, imapBackendPusher2, imapBackendPusher2.accountName, str5, imapBackendPusher2.idleRefreshTimeoutProvider);
                            imapBackendPusher2.pushFolders.put(str5, imapFolderPusher);
                            return imapFolderPusher;
                    }
                }
            }, 2));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ImapFolderPusher) it.next()).stop();
        }
        for (ImapFolderPusher imapFolderPusher : list2) {
            String str = imapFolderPusher.accountName;
            String str2 = imapFolderPusher.folderServerId;
            Log.v("Starting ImapFolderPusher for %s / %s", str, str2);
            NodeUtils.thread$default("ImapFolderPusher-" + str + "-" + str2, new K9$$ExternalSyntheticLambda0(9, imapFolderPusher), 23);
        }
    }

    public final void updateFolders$1() {
        Collection collection;
        synchronized (this.lock) {
            collection = this.currentFolderServerIds;
        }
        updateFolders(this.currentMaxPushFolders, collection);
    }
}
