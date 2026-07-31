package net.thunderbird.core.preference.debugging;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
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
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.app.common.core.logging.DefaultLogLevelManager;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.storage.InMemoryStorage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDebuggingSettingsPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final DefaultLogLevelManager logLevelManager;
    public final Logger logger;
    public final MutexImpl mutex;
    public final AndroidPlatformConfigProvider platformConfigProvider;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultDebuggingSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, DefaultLogLevelManager defaultLogLevelManager, AndroidPlatformConfigProvider androidPlatformConfigProvider, PreferenceChangeBroker preferenceChangeBroker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        ContextScope CoroutineScope = JobKt.CoroutineScope(JobKt.SupervisorJob$default());
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.storagePersister = k9StoragePersister;
        this.storageEditor = k9StorageEditor;
        this.logLevelManager = defaultLogLevelManager;
        this.ioDispatcher = defaultIoScheduler;
        this.scope = CoroutineScope;
        this.platformConfigProvider = androidPlatformConfigProvider;
        ((DefaultPreferenceChangeBroker) preferenceChangeBroker).subscribe(this);
        this.configState = FlowKt.MutableStateFlow(loadConfig());
        this.mutex = new MutexImpl();
    }

    public final DebuggingSettings loadConfig() {
        Object value;
        Object value2;
        K9StoragePersister k9StoragePersister = this.storagePersister;
        InMemoryStorage loadValues = k9StoragePersister.loadValues();
        this.platformConfigProvider.getClass();
        boolean z = loadValues.getBoolean("enableDebugLogging", false);
        DebuggingSettings debuggingSettings = new DebuggingSettings(z, k9StoragePersister.loadValues().getBoolean("enableSyncDebugLogging", false), k9StoragePersister.loadValues().getBoolean("enableSensitiveLogging", false));
        DefaultLogLevelManager defaultLogLevelManager = this.logLevelManager;
        if (z) {
            defaultLogLevelManager.getClass();
            StateFlowImpl stateFlowImpl = defaultLogLevelManager.logLevel;
            do {
                value2 = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value2, LogLevel.VERBOSE));
        } else {
            LogLevel logLevel = defaultLogLevelManager.defaultLevel;
            logLevel.getClass();
            StateFlowImpl stateFlowImpl2 = defaultLogLevelManager.logLevel;
            do {
                value = stateFlowImpl2.getValue();
            } while (!stateFlowImpl2.compareAndSet(value, logLevel));
        }
        return debuggingSettings;
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.DEBUGGING) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        Object value2;
        Object value3;
        final DebuggingSettings debuggingSettings = (DebuggingSettings) obj;
        debuggingSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DebuggingSettings debuggingSettings2 = debuggingSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + debuggingSettings2;
                    default:
                        return "writeConfig() called with: config = " + debuggingSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultDebuggingSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultDebuggingSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DebuggingSettings debuggingSettings2 = debuggingSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + debuggingSettings2;
                    default:
                        return "writeConfig() called with: config = " + debuggingSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, debuggingSettings, (Continuation) null, 20), 2);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
            boolean z = debuggingSettings.isDebugLoggingEnabled;
            DefaultLogLevelManager defaultLogLevelManager = this.logLevelManager;
            if (z) {
                defaultLogLevelManager.getClass();
                StateFlowImpl stateFlowImpl2 = defaultLogLevelManager.logLevel;
                do {
                    value3 = stateFlowImpl2.getValue();
                } while (!stateFlowImpl2.compareAndSet(value3, LogLevel.VERBOSE));
            } else {
                LogLevel logLevel = defaultLogLevelManager.defaultLevel;
                logLevel.getClass();
                StateFlowImpl stateFlowImpl3 = defaultLogLevelManager.logLevel;
                do {
                    value2 = stateFlowImpl3.getValue();
                } while (!stateFlowImpl3.compareAndSet(value2, logLevel));
            }
        } while (!stateFlowImpl.compareAndSet(value, debuggingSettings));
    }
}
