package net.thunderbird.core.preference.network;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
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
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.BackgroundOps;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNetworkSettingsPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultNetworkSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
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
        this.configState = FlowKt.MutableStateFlow(loadConfig());
        this.mutex = new MutexImpl();
    }

    public final NetworkSettings loadConfig() {
        InMemoryStorage loadValues = this.storagePersister.loadValues();
        BackgroundOps backgroundOps = NetworkSettingsKt.NETWORK_SETTINGS_DEFAULT_BACKGROUND_OPS;
        String stringOrNull = loadValues.getStringOrNull("backgroundOperations");
        if (stringOrNull != null) {
            try {
                BackgroundOps valueOf = BackgroundOps.valueOf(stringOrNull);
                if (valueOf != null) {
                    backgroundOps = valueOf;
                }
            } catch (IllegalArgumentException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [backgroundOperations] value [" + stringOrNull + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(BackgroundOps.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(BackgroundOps.values(), null, null, null, null, 63)), (Throwable) e);
                return null;
            }
        }
        return new NetworkSettings(backgroundOps);
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.NETWORK) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        final NetworkSettings networkSettings = (NetworkSettings) obj;
        networkSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.network.DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                NetworkSettings networkSettings2 = networkSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + networkSettings2;
                    default:
                        return "writeConfig() called with: config = " + networkSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultNetworkSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultNetworkSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.network.DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                NetworkSettings networkSettings2 = networkSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + networkSettings2;
                    default:
                        return "writeConfig() called with: config = " + networkSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, networkSettings, (Continuation) null, 26), 2);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, networkSettings));
    }
}
