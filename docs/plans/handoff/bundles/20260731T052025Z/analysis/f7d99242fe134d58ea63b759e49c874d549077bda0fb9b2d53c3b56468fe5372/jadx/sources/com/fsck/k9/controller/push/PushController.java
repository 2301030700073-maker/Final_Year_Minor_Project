package com.fsck.k9.controller.push;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.notification.PushNotificationManager;
import com.fsck.k9.notification.PushNotificationState;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExecutorCoroutineDispatcherImpl;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.BackgroundOps;
import net.thunderbird.core.preference.BackgroundSync;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.AccountIdFactory;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushController {
    public final LegacyAccountDtoManager accountManager;
    public final AccountPushControllerFactory accountPushControllerFactory;
    public final PushController$alarmPermissionListener$1 alarmPermissionListener;
    public final AlarmPermissionManager alarmPermissionManager;
    public final PushController$autoSyncListener$1 autoSyncListener;
    public final AutoSyncManager autoSyncManager;
    public final BackendManager backendManager;
    public final BootCompleteManager bootCompleteManager;
    public final PushController$connectivityChangeListener$1 connectivityChangeListener;
    public final ConnectivityManagerBase connectivityManager;
    public final CoroutineDispatcher coroutineDispatcher;
    public final CoroutineScope coroutineScope;
    public final DefaultFolderRepository folderRepository;
    public final GeneralSettingsManager generalSettingsManager;
    public boolean initializationStarted;
    public final Object lock;
    public final LinkedHashMap pushEnabledCollectorJobs;
    public final PushNotificationManager pushNotificationManager;
    public final PushServiceManager pushServiceManager;
    public final LinkedHashMap pushers;

    public PushController(LegacyAccountDtoManager legacyAccountDtoManager, GeneralSettingsManager generalSettingsManager, BackendManager backendManager, PushServiceManager pushServiceManager, BootCompleteManager bootCompleteManager, AutoSyncManager autoSyncManager, AlarmPermissionManager alarmPermissionManager, PushNotificationManager pushNotificationManager, ConnectivityManagerBase connectivityManagerBase, AccountPushControllerFactory accountPushControllerFactory, DefaultFolderRepository defaultFolderRepository) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        newSingleThreadExecutor.getClass();
        ExecutorCoroutineDispatcherImpl executorCoroutineDispatcherImpl = new ExecutorCoroutineDispatcherImpl(newSingleThreadExecutor);
        this.accountManager = legacyAccountDtoManager;
        this.generalSettingsManager = generalSettingsManager;
        this.backendManager = backendManager;
        this.pushServiceManager = pushServiceManager;
        this.bootCompleteManager = bootCompleteManager;
        this.autoSyncManager = autoSyncManager;
        this.alarmPermissionManager = alarmPermissionManager;
        this.pushNotificationManager = pushNotificationManager;
        this.connectivityManager = connectivityManagerBase;
        this.accountPushControllerFactory = accountPushControllerFactory;
        this.folderRepository = defaultFolderRepository;
        this.coroutineScope = GlobalScope.INSTANCE;
        this.coroutineDispatcher = executorCoroutineDispatcherImpl;
        this.lock = new Object();
        this.pushers = new LinkedHashMap();
        this.pushEnabledCollectorJobs = new LinkedHashMap();
        this.autoSyncListener = new PushController$autoSyncListener$1(this);
        this.connectivityChangeListener = new PushController$connectivityChangeListener$1(this);
        this.alarmPermissionListener = new PushController$alarmPermissionListener$1(this);
    }

    public final void init() {
        synchronized (this.lock) {
            if (this.initializationStarted) {
                return;
            }
            this.initializationStarted = true;
            JobKt.launch$default(this.coroutineScope, this.coroutineDispatcher, null, new PushController$init$2(this, null, 0), 2);
        }
    }

    public final void launchUpdatePushers() {
        JobKt.launch$default(this.coroutineScope, this.coroutineDispatcher, null, new PushController$init$2(this, null, 2), 2);
    }

    public final void registerConnectivityChangeListener() {
        ConnectivityManagerBase connectivityManagerBase = this.connectivityManager;
        PushController$connectivityChangeListener$1 pushController$connectivityChangeListener$1 = this.connectivityChangeListener;
        synchronized (connectivityManagerBase) {
            pushController$connectivityChangeListener$1.getClass();
            connectivityManagerBase.listeners.add(pushController$connectivityChangeListener$1);
        }
    }

    public final void setPushNotificationState(PushNotificationState pushNotificationState) {
        PushNotificationManager pushNotificationManager = this.pushNotificationManager;
        synchronized (pushNotificationManager) {
            pushNotificationManager.notificationState = pushNotificationState;
            if (pushNotificationManager.isForegroundServiceStarted) {
                try {
                    pushNotificationManager.notificationManager.notify(1, pushNotificationManager.createNotification());
                } catch (SecurityException e) {
                    pushNotificationManager.logger.error("PushNotificationManager", e, new K9$$ExternalSyntheticLambda0(13, pushNotificationManager));
                }
            }
        }
    }

    public final void startServices() {
        this.pushServiceManager.start();
        BootCompleteManager bootCompleteManager = this.bootCompleteManager;
        bootCompleteManager.getClass();
        Log.v("Enable BootCompleteReceiver", new Object[0]);
        try {
            bootCompleteManager.packageManager.setComponentEnabledSetting(bootCompleteManager.componentName, 1, 1);
        } catch (Exception e) {
            Log.e(e, "Error enabling BootCompleteReceiver", new Object[0]);
        }
        boolean z = ((DefaultGeneralSettingsManager) this.autoSyncManager.generalSettingsManager).getConfig().network.backgroundOps == BackgroundOps.WHEN_CHECKED_AUTO_SYNC;
        AutoSyncManager autoSyncManager = this.autoSyncManager;
        if (z) {
            PushController$autoSyncListener$1 pushController$autoSyncListener$1 = this.autoSyncListener;
            synchronized (autoSyncManager) {
                pushController$autoSyncListener$1.getClass();
                if (!autoSyncManager.isRegistered) {
                    Log.v("Registering auto sync listener", new Object[0]);
                    autoSyncManager.isRegistered = true;
                    autoSyncManager.listener = pushController$autoSyncListener$1;
                    TraceApi29Impl.registerReceiver(autoSyncManager.context, autoSyncManager.receiver, autoSyncManager.intentFilter, 4);
                }
            }
        } else {
            autoSyncManager.unregisterListener();
        }
        registerConnectivityChangeListener();
        AlarmPermissionManager alarmPermissionManager = this.alarmPermissionManager;
        if (!alarmPermissionManager.canScheduleExactAlarms()) {
            alarmPermissionManager.registerListener(this.alarmPermissionListener);
        }
        this.connectivityManager.start();
    }

    public final void stopServices() {
        PushServiceManager pushServiceManager = this.pushServiceManager;
        pushServiceManager.getClass();
        Log.v("PushServiceManager.stop()", new Object[0]);
        if (pushServiceManager.isServiceStarted.compareAndSet(true, false)) {
            Context context = pushServiceManager.context;
            try {
                context.stopService(new Intent(context, (Class<?>) PushService.class));
            } catch (Exception e) {
                Log.w(e, "Exception while trying to stop PushService", new Object[0]);
            }
        } else {
            Log.v("..PushService is not running", new Object[0]);
        }
        BootCompleteManager bootCompleteManager = this.bootCompleteManager;
        bootCompleteManager.getClass();
        Log.v("Disable BootCompleteReceiver", new Object[0]);
        try {
            bootCompleteManager.packageManager.setComponentEnabledSetting(bootCompleteManager.componentName, 2, 1);
        } catch (Exception e2) {
            Log.e(e2, "Error disabling BootCompleteReceiver", new Object[0]);
        }
        this.autoSyncManager.unregisterListener();
        ConnectivityManagerBase connectivityManagerBase = this.connectivityManager;
        PushController$connectivityChangeListener$1 pushController$connectivityChangeListener$1 = this.connectivityChangeListener;
        synchronized (connectivityManagerBase) {
            pushController$connectivityChangeListener$1.getClass();
            connectivityManagerBase.listeners.remove(pushController$connectivityChangeListener$1);
        }
        this.alarmPermissionManager.unregisterListener();
        this.connectivityManager.stop();
    }

    public final void updatePushEnabledListeners(Set set) {
        Continuation continuation;
        synchronized (this.lock) {
            try {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    linkedHashSet.add(((LegacyAccountDto) it.next()).uuid);
                }
                Iterator it2 = this.pushEnabledCollectorJobs.entrySet().iterator();
                while (true) {
                    continuation = null;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    String str = (String) entry.getKey();
                    Job job = (Job) entry.getValue();
                    if (!linkedHashSet.contains(str)) {
                        Log.v("..Stopping to listen for push enabled changes in account: %s", str);
                        it2.remove();
                        job.cancel(null);
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : set) {
                    if (!this.pushEnabledCollectorJobs.containsKey(((LegacyAccountDto) obj).uuid)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    LegacyAccountDto legacyAccountDto = (LegacyAccountDto) it3.next();
                    this.pushEnabledCollectorJobs.put(legacyAccountDto.uuid, JobKt.launch$default(this.coroutineScope, this.coroutineDispatcher, null, new Preferences$getAccountsFlow$1(legacyAccountDto, this, continuation, 4), 2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void updatePushers() {
        BackgroundSync backgroundSync;
        boolean isEmpty;
        final int i = 0;
        Log.v("PushController.updatePushers()", new Object[0]);
        GeneralSettings settings = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getSettings();
        boolean canScheduleExactAlarms = this.alarmPermissionManager.canScheduleExactAlarms();
        final int i2 = 1;
        boolean z = ((DefaultGeneralSettingsManager) this.autoSyncManager.generalSettingsManager).getConfig().network.backgroundOps == BackgroundOps.WHEN_CHECKED_AUTO_SYNC && !ContentResolver.getMasterSyncAutomatically();
        BackgroundOps backgroundOps = settings.network.backgroundOps;
        backgroundOps.getClass();
        int ordinal = backgroundOps.ordinal();
        int i3 = 2;
        if (ordinal == 0) {
            backgroundSync = BackgroundSync.ALWAYS;
        } else if (ordinal == 1) {
            backgroundSync = BackgroundSync.NEVER;
        } else {
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            backgroundSync = BackgroundSync.FOLLOW_SYSTEM_AUTO_SYNC;
        }
        boolean z2 = backgroundSync == BackgroundSync.NEVER;
        boolean isNetworkAvailable = this.connectivityManager.isNetworkAvailable();
        Set set = SequencesKt.toSet(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i3, SequencesKt.toSet(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i3, ((Preferences) this.accountManager).getAccounts()), true, new Function1(this) { // from class: com.fsck.k9.controller.push.PushController$$ExternalSyntheticLambda0
            public final /* synthetic */ PushController f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean isPushCapable;
                int i4 = i;
                PushController pushController = this.f$0;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                switch (i4) {
                    case 0:
                        legacyAccountDto.getClass();
                        isPushCapable = pushController.backendManager.getBackend(legacyAccountDto.id).isPushCapable();
                        break;
                    default:
                        legacyAccountDto.getClass();
                        DefaultFolderRepository defaultFolderRepository = pushController.folderRepository;
                        AccountId accountId = legacyAccountDto.id;
                        defaultFolderRepository.getClass();
                        accountId.getClass();
                        isPushCapable = ((K9MessageStore) defaultFolderRepository.messageStoreManager.getMessageStore(accountId).messageStore.val$folders).hasPushEnabledFolder();
                        break;
                }
                return Boolean.valueOf(isPushCapable);
            }
        }))), true, new Function1(this) { // from class: com.fsck.k9.controller.push.PushController$$ExternalSyntheticLambda0
            public final /* synthetic */ PushController f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean isPushCapable;
                int i4 = i2;
                PushController pushController = this.f$0;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                switch (i4) {
                    case 0:
                        legacyAccountDto.getClass();
                        isPushCapable = pushController.backendManager.getBackend(legacyAccountDto.id).isPushCapable();
                        break;
                    default:
                        legacyAccountDto.getClass();
                        DefaultFolderRepository defaultFolderRepository = pushController.folderRepository;
                        AccountId accountId = legacyAccountDto.id;
                        defaultFolderRepository.getClass();
                        accountId.getClass();
                        isPushCapable = ((K9MessageStore) defaultFolderRepository.messageStoreManager.getMessageStore(accountId).messageStore.val$folders).hasPushEnabledFolder();
                        break;
                }
                return Boolean.valueOf(isPushCapable);
            }
        }));
        Iterable iterable = (z || z2 || !isNetworkAvailable || !canScheduleExactAlarms) ? EmptyList.INSTANCE : set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(((LegacyAccountDto) it.next()).uuid);
        }
        synchronized (this.lock) {
            try {
                Set keySet = this.pushers.keySet();
                List<String> minus = CollectionsKt.minus((Iterable) arrayList, (Iterable) keySet);
                Set minus2 = Validate.minus(keySet, (Iterable) arrayList);
                if (!minus2.isEmpty()) {
                    Log.v("..Stopping PushController for accounts: %s", minus2);
                    Iterator it2 = minus2.iterator();
                    while (it2.hasNext()) {
                        AccountPushController accountPushController = (AccountPushController) this.pushers.remove((String) it2.next());
                        if (accountPushController != null) {
                            accountPushController.stop();
                        }
                    }
                }
                if (!minus.isEmpty()) {
                    Log.v("..Starting PushController for accounts: %s", minus);
                    for (String str : minus) {
                        AccountId of = AccountIdFactory.INSTANCE.of(str);
                        LinkedHashMap linkedHashMap = this.pushers;
                        AccountPushControllerFactory accountPushControllerFactory = this.accountPushControllerFactory;
                        accountPushControllerFactory.getClass();
                        BackendManager backendManager = accountPushControllerFactory.backendManager;
                        DefaultFolderRepository defaultFolderRepository = accountPushControllerFactory.folderRepository;
                        LegacyAccountDtoManager legacyAccountDtoManager = accountPushControllerFactory.accountManager;
                        MessagingController messagingController = accountPushControllerFactory.messagingController;
                        Logger logger = accountPushControllerFactory.logger;
                        AccountPushController accountPushController2 = new AccountPushController(backendManager, defaultFolderRepository, new LocalStore.AnonymousClass7(legacyAccountDtoManager, messagingController, defaultFolderRepository, of, logger, 14), of, logger);
                        accountPushController2.start();
                        linkedHashMap.put(str, accountPushController2);
                    }
                }
                Log.v("..Running PushControllers: %s", this.pushers.keySet());
                isEmpty = this.pushers.isEmpty();
            } catch (Throwable th) {
                throw th;
            }
        }
        updatePushEnabledListeners(SequencesKt.toSet(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i3, ((Preferences) this.accountManager).getAccounts()), true, new Function1(this) { // from class: com.fsck.k9.controller.push.PushController$$ExternalSyntheticLambda0
            public final /* synthetic */ PushController f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean isPushCapable;
                int i4 = i;
                PushController pushController = this.f$0;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj;
                switch (i4) {
                    case 0:
                        legacyAccountDto.getClass();
                        isPushCapable = pushController.backendManager.getBackend(legacyAccountDto.id).isPushCapable();
                        break;
                    default:
                        legacyAccountDto.getClass();
                        DefaultFolderRepository defaultFolderRepository2 = pushController.folderRepository;
                        AccountId accountId = legacyAccountDto.id;
                        defaultFolderRepository2.getClass();
                        accountId.getClass();
                        isPushCapable = ((K9MessageStore) defaultFolderRepository2.messageStoreManager.getMessageStore(accountId).messageStore.val$folders).hasPushEnabledFolder();
                        break;
                }
                return Boolean.valueOf(isPushCapable);
            }
        })));
        if (set.isEmpty()) {
            stopServices();
            return;
        }
        if (z) {
            setPushNotificationState(PushNotificationState.WAIT_BACKGROUND_SYNC);
            startServices();
            return;
        }
        if (!isNetworkAvailable) {
            setPushNotificationState(PushNotificationState.WAIT_NETWORK);
            startServices();
        } else if (!canScheduleExactAlarms) {
            setPushNotificationState(PushNotificationState.ALARM_PERMISSION_MISSING);
            startServices();
        } else if (isEmpty) {
            stopServices();
        } else {
            setPushNotificationState(PushNotificationState.LISTENING);
            startServices();
        }
    }
}
