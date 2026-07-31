package net.thunderbird.core.preference.display.coreSettings;

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
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayCoreSettingsPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultDisplayCoreSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
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

    public final Object getConfig() {
        return (DisplayCoreSettings) this.configState.getValue();
    }

    public final DisplayCoreSettings loadConfig() {
        K9StoragePersister k9StoragePersister = this.storagePersister;
        boolean z = k9StoragePersister.loadValues().getBoolean("fixedMessageViewTheme", true);
        InMemoryStorage loadValues = k9StoragePersister.loadValues();
        AppTheme appTheme = DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_APP_THEME;
        String stringOrNull = loadValues.getStringOrNull("theme");
        if (stringOrNull != null) {
            try {
                AppTheme valueOf = AppTheme.valueOf(stringOrNull);
                if (valueOf != null) {
                    appTheme = valueOf;
                }
            } catch (IllegalArgumentException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [theme] value [" + stringOrNull + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(AppTheme.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(AppTheme.values(), null, null, null, null, 63)), (Throwable) e);
                return null;
            }
        }
        InMemoryStorage loadValues2 = k9StoragePersister.loadValues();
        SubTheme subTheme = DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME;
        String stringOrNull2 = loadValues2.getStringOrNull("messageViewTheme");
        if (stringOrNull2 != null) {
            try {
                SubTheme valueOf2 = SubTheme.valueOf(stringOrNull2);
                if (valueOf2 != null) {
                    subTheme = valueOf2;
                }
            } catch (IllegalArgumentException e2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [messageViewTheme] value [" + stringOrNull2 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(SubTheme.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SubTheme.values(), null, null, null, null, 63)), (Throwable) e2);
                return null;
            }
        }
        InMemoryStorage loadValues3 = k9StoragePersister.loadValues();
        SubTheme subTheme2 = DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME;
        String stringOrNull3 = loadValues3.getStringOrNull("messageComposeTheme");
        if (stringOrNull3 != null) {
            try {
                SubTheme valueOf3 = SubTheme.valueOf(stringOrNull3);
                if (valueOf3 != null) {
                    subTheme2 = valueOf3;
                }
            } catch (IllegalArgumentException e3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [messageComposeTheme] value [" + stringOrNull3 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(SubTheme.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SubTheme.values(), null, null, null, null, 63)), (Throwable) e3);
                return null;
            }
        }
        String stringOrNull4 = k9StoragePersister.loadValues().getStringOrNull("language");
        if (stringOrNull4 == null) {
            stringOrNull4 = "";
        }
        InMemoryStorage loadValues4 = k9StoragePersister.loadValues();
        SplitViewMode splitViewMode = DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE;
        String stringOrNull5 = loadValues4.getStringOrNull("splitViewMode");
        if (stringOrNull5 != null) {
            try {
                SplitViewMode valueOf4 = SplitViewMode.valueOf(stringOrNull5);
                if (valueOf4 != null) {
                    splitViewMode = valueOf4;
                }
            } catch (IllegalArgumentException e4) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [splitViewMode] value [" + stringOrNull5 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(SplitViewMode.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SplitViewMode.values(), null, null, null, null, 63)), (Throwable) e4);
                return null;
            }
        }
        return new DisplayCoreSettings(z, appTheme, subTheme, subTheme2, stringOrNull4, splitViewMode);
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.DISPLAY_CORE) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        final DisplayCoreSettings displayCoreSettings = (DisplayCoreSettings) obj;
        displayCoreSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DisplayCoreSettings displayCoreSettings2 = displayCoreSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + displayCoreSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayCoreSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultDisplayCoreSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultDisplayCoreSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DisplayCoreSettings displayCoreSettings2 = displayCoreSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + displayCoreSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayCoreSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, displayCoreSettings, (Continuation) null, 21), 2);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, displayCoreSettings));
    }
}
