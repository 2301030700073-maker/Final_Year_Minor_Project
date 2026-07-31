package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BuildSwipeActions {
    public final DefaultLegacyAccountManager accountManager;
    public final ReadonlyStateFlow swipeActions;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwipeAction.values().length];
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BuildSwipeActions(GeneralSettingsManager generalSettingsManager, DefaultLegacyAccountManager defaultLegacyAccountManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), handlerContext));
        handlerContext.getClass();
        this.accountManager = defaultLegacyAccountManager;
        ReadonlyStateFlow readonlyStateFlow = ((DefaultGeneralSettingsManager) generalSettingsManager).generalSettings;
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this, null, 20);
        int i = FlowKt__MergeKt.$r8$clinit;
        this.swipeActions = FlowKt.stateIn(new SafeFlow(7, new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(readonlyStateFlow, interruptibleKt$runInterruptible$2, 0)), CoroutineScope, SharingStarted.Companion.Eagerly, EmptyMap.INSTANCE);
    }

    public static final SwipeAction access$buildSwipeAction(BuildSwipeActions buildSwipeActions, LegacyAccount legacyAccount, SwipeAction swipeAction, boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[swipeAction.ordinal()];
        SwipeAction swipeAction2 = SwipeAction.ArchiveDisabled;
        return (i == 1 && Intrinsics.areEqual(legacyAccount.incomingServerSettings.type, "pop3")) ? swipeAction2 : (i == 1 && !legacyAccount.hasArchiveFolder() && z) ? SwipeAction.ArchiveSetupArchiveFolder : (i != 1 || legacyAccount.hasArchiveFolder()) ? swipeAction : swipeAction2;
    }
}
