package net.thunderbird.core.preference.notification;

import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultNotificationPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        ContextScope CoroutineScope = JobKt.CoroutineScope(JobKt.SupervisorJob$default());
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.storagePersister = k9StoragePersister;
        this.storageEditor = k9StorageEditor;
        this.ioDispatcher = defaultIoScheduler;
        this.scope = CoroutineScope;
        ((DefaultPreferenceChangeBroker) preferenceChangeBroker).subscribe(this);
        this.mutex = new MutexImpl();
        this.configState = FlowKt.MutableStateFlow(getConfigFromStorage(k9StoragePersister.loadValues()));
    }

    public final Object getConfig() {
        return (NotificationPreference) this.configState.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e2 A[LOOP:0: B:18:0x00dc->B:20:0x00e2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.thunderbird.core.preference.notification.NotificationPreference getConfigFromStorage(net.thunderbird.core.preference.storage.InMemoryStorage r22) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager.getConfigFromStorage(net.thunderbird.core.preference.storage.InMemoryStorage):net.thunderbird.core.preference.notification.NotificationPreference");
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.NOTIFICATION) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, getConfigFromStorage(this.storagePersister.loadValues())));
        }
    }
}
