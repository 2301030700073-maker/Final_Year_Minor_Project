package net.thunderbird.core.preference.interaction;

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
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultInteractionSettingsPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultInteractionSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
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
        return (InteractionSettings) this.configState.getValue();
    }

    public final InteractionSettings loadConfig() {
        K9StoragePersister k9StoragePersister = this.storagePersister;
        boolean z = k9StoragePersister.loadValues().getBoolean("useVolumeKeysForNavigation", false);
        InMemoryStorage loadValues = k9StoragePersister.loadValues();
        PostMarkAsUnreadNavigation postMarkAsUnreadNavigation = InteractionSettingsKt.INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION;
        String stringOrNull = loadValues.getStringOrNull("messageViewPostDeleteAction");
        if (stringOrNull == null) {
            stringOrNull = "ReturnToMessageList";
        }
        String str = stringOrNull;
        InMemoryStorage loadValues2 = k9StoragePersister.loadValues();
        PostMarkAsUnreadNavigation postMarkAsUnreadNavigation2 = InteractionSettingsKt.INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION;
        String stringOrNull2 = loadValues2.getStringOrNull("messageViewPostMarkAsReadAction");
        if (stringOrNull2 != null) {
            try {
                PostMarkAsUnreadNavigation valueOf = PostMarkAsUnreadNavigation.valueOf(stringOrNull2);
                if (valueOf != null) {
                    postMarkAsUnreadNavigation2 = valueOf;
                }
            } catch (IllegalArgumentException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [messageViewPostMarkAsReadAction] value [" + stringOrNull2 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(PostMarkAsUnreadNavigation.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(PostMarkAsUnreadNavigation.values(), null, null, null, null, 63)), (Throwable) e);
                return null;
            }
        }
        InMemoryStorage loadValues3 = k9StoragePersister.loadValues();
        SwipeActions swipeActions = InteractionSettingsKt.INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION;
        SwipeAction swipeAction = swipeActions.leftAction;
        String stringOrNull3 = loadValues3.getStringOrNull("swipeLeftAction");
        if (stringOrNull3 != null) {
            try {
                SwipeAction valueOf2 = SwipeAction.valueOf(stringOrNull3);
                if (valueOf2 != null) {
                    swipeAction = valueOf2;
                }
            } catch (IllegalArgumentException e2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [swipeLeftAction] value [" + stringOrNull3 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(SwipeAction.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SwipeAction.values(), null, null, null, null, 63)), (Throwable) e2);
                return null;
            }
        }
        InMemoryStorage loadValues4 = k9StoragePersister.loadValues();
        SwipeAction swipeAction2 = swipeActions.rightAction;
        String stringOrNull4 = loadValues4.getStringOrNull("swipeRightAction");
        if (stringOrNull4 != null) {
            try {
                SwipeAction valueOf3 = SwipeAction.valueOf(stringOrNull4);
                if (valueOf3 != null) {
                    swipeAction2 = valueOf3;
                }
            } catch (IllegalArgumentException e3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [swipeRightAction] value [" + stringOrNull4 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(SwipeAction.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SwipeAction.values(), null, null, null, null, 63)), (Throwable) e3);
                return null;
            }
        }
        return new InteractionSettings(z, str, postMarkAsUnreadNavigation2, new SwipeActions(swipeAction, swipeAction2), k9StoragePersister.loadValues().getBoolean("confirmDelete", false), k9StoragePersister.loadValues().getBoolean("confirmDeleteStarred", false), k9StoragePersister.loadValues().getBoolean("confirmDeleteFromNotification", true), k9StoragePersister.loadValues().getBoolean("confirmSpam", false), k9StoragePersister.loadValues().getBoolean("confirmDiscardMessage", true), k9StoragePersister.loadValues().getBoolean("confirmMarkAllRead", true));
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.INTERACTION) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        final InteractionSettings interactionSettings = (InteractionSettings) obj;
        interactionSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                InteractionSettings interactionSettings2 = interactionSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + interactionSettings2;
                    default:
                        return "writeConfig() called with: config = " + interactionSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultInteractionSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultInteractionSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                InteractionSettings interactionSettings2 = interactionSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + interactionSettings2;
                    default:
                        return "writeConfig() called with: config = " + interactionSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, interactionSettings, (Continuation) null, 25), 2);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, interactionSettings));
    }
}
