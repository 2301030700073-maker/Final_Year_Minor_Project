package net.thunderbird.feature.changelog.internal;

import androidx.camera.core.impl.Config;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$2;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.internal.CombineKt;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangelogViewModel extends BaseViewModel {
    public final ChangeLogManager changeLogManager;
    public final GeneralSettingsManager generalSettingsManager;
    public final ChangeLogMode mode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.changelog.internal.ChangelogViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;
        public final /* synthetic */ ChangelogViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(ChangelogViewModel changelogViewModel, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = changelogViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            ChangelogViewModel changelogViewModel = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass1(changelogViewModel, continuation, 0);
                default:
                    return new AnonymousClass1(changelogViewModel, continuation, 1);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
                case 0:
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                default:
                    ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
                    return CoroutineSingletons.COROUTINE_SUSPENDED;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            ChangelogViewModel changelogViewModel = this.this$0;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            Continuation continuation = null;
            switch (i) {
                case 0:
                    int i2 = this.label;
                    Unit unit = Unit.INSTANCE;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        ReadonlyStateFlow readonlyStateFlow = ((DefaultGeneralSettingsManager) changelogViewModel.generalSettingsManager).generalSettings;
                        Flow flow = (Flow) changelogViewModel.changeLogManager.changeLogFlow$delegate.getValue();
                        int i3 = 12;
                        DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$2 = new DefaultGeneralSettingsManager$generalSettings$2(3, continuation, i3);
                        Object combineInternal = CombineKt.combineInternal(this, FlowKt__ZipKt$nullArrayFactory$1.INSTANCE, new FlowKt__ZipKt$combine$1$1(defaultGeneralSettingsManager$generalSettings$2, null, 0), new ImageLoadKt$ImageLoad$1$1$1(i3, changelogViewModel), new Flow[]{readonlyStateFlow, flow});
                        if (combineInternal != coroutineSingletons) {
                            combineInternal = unit;
                        }
                        if (combineInternal == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return unit;
                default:
                    int i4 = this.label;
                    if (i4 != 0) {
                        if (i4 == 1) {
                            throw Config.CC.m92m(obj);
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow = changelogViewModel.effect;
                    DefaultChangelogNavigation$registerRoutes$lambda$0$0$$inlined$observe$2$1 defaultChangelogNavigation$registerRoutes$lambda$0$0$$inlined$observe$2$1 = new DefaultChangelogNavigation$registerRoutes$lambda$0$0$$inlined$observe$2$1();
                    this.label = 1;
                    readonlySharedFlow.collect(defaultChangelogNavigation$registerRoutes$lambda$0$0$$inlined$observe$2$1, this);
                    return coroutineSingletons;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangelogViewModel(GeneralSettingsManager generalSettingsManager, ChangeLogManager changeLogManager, ChangeLogMode changeLogMode) {
        super(new ChangelogContract$State(SmallPersistentVector.EMPTY, false));
        changeLogMode.getClass();
        this.generalSettingsManager = generalSettingsManager;
        this.changeLogManager = changeLogManager;
        this.mode = changeLogMode;
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(this, null, 0), 3);
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        ChangelogContract$Event$OnShowRecentChangesCheck changelogContract$Event$OnShowRecentChangesCheck = (ChangelogContract$Event$OnShowRecentChangesCheck) obj;
        changelogContract$Event$OnShowRecentChangesCheck.getClass();
        boolean z = !changelogContract$Event$OnShowRecentChangesCheck.isChecked;
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
        GeneralSettings config = defaultGeneralSettingsManager.getConfig();
        DisplaySettings displaySettings = config.display;
        DisplayMiscSettings displayMiscSettings = displaySettings.miscSettings;
        boolean z2 = displayMiscSettings.shouldShowSetupArchiveFolderDialog;
        displayMiscSettings.getClass();
        defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, DisplaySettings.copy$default(displaySettings, null, null, null, new DisplayMiscSettings(z, z2), 7), null, null, null, 119));
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        ChangeLogManager changeLogManager = this.changeLogManager;
        JobKt.launch$default(changeLogManager.appCoroutineScope, changeLogManager.backgroundDispatcher, null, new ChangeLogManager$changeLogFlow$2$1(changeLogManager, null, 1), 2);
    }
}
