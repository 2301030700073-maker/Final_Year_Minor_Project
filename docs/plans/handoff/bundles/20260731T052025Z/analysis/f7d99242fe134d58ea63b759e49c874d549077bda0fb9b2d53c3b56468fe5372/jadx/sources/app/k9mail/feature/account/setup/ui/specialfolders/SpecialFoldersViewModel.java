package app.k9mail.feature.account.setup.ui.specialfolders;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderSettings;
import app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions;
import app.k9mail.feature.account.setup.domain.usecase.ValidateSpecialFolderOptions;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Effect;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Event;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFoldersViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final SpecialFoldersFormUiModel formUiModel;
    public final GetSpecialFolderOptions getSpecialFolderOptions;
    public final ValidateSpecialFolderOptions validateSpecialFolderOptions;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SpecialFoldersViewModel(app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormUiModel r13, app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions r14, app.k9mail.feature.account.setup.domain.usecase.ValidateSpecialFolderOptions r15, app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository r16) {
        /*
            r12 = this;
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State r0 = new app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormState r1 = new app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormState
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None r7 = new app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None
            r2 = 1
            r7.<init>(r2)
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None r8 = new app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None
            r8.<init>(r2)
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None r9 = new app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None
            r9.<init>(r2)
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None r10 = new app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None
            r10.<init>(r2)
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None r11 = new app.k9mail.feature.account.common.domain.entity.SpecialFolderOption$None
            r11.<init>(r2)
            kotlin.collections.EmptyList r2 = kotlin.collections.EmptyList.INSTANCE
            r3 = r2
            r4 = r2
            r5 = r2
            r6 = r2
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r3 = 0
            r5 = 1
            r2 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            r12.<init>(r0)
            r12.formUiModel = r13
            r12.getSpecialFolderOptions = r14
            r12.validateSpecialFolderOptions = r15
            r13 = r16
            r12.accountStateRepository = r13
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel.<init>(app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormUiModel, app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions, app.k9mail.feature.account.setup.domain.usecase.ValidateSpecialFolderOptions, app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$loadSpecialFolderOptions(app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel$loadSpecialFolderOptions$1
            if (r0 == 0) goto L13
            r0 = r10
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel$loadSpecialFolderOptions$1 r0 = (app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel$loadSpecialFolderOptions$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel$loadSpecialFolderOptions$1 r0 = new app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel$loadSpecialFolderOptions$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2f
            if (r1 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            goto L48
        L26:
            r0 = move-exception
            r10 = r0
            goto L4b
        L29:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r2
        L2f:
            kotlin.ResultKt.throwOnFailure(r10)
            app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions r10 = r9.getSpecialFolderOptions     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            r0.label = r3     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            kotlinx.coroutines.CoroutineDispatcher r1 = r10.coroutineDispatcher     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            androidx.camera.camera2.pipe.core.WakeLock$release$2 r3 = new androidx.camera.camera2.pipe.core.WakeLock$release$2     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            r4 = 9
            r3.<init>(r10, r2, r4)     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            java.lang.Object r10 = kotlinx.coroutines.JobKt.withContext(r1, r3, r0)     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r0) goto L48
            return r0
        L48:
            app.k9mail.feature.account.common.domain.entity.SpecialFolderOptions r10 = (app.k9mail.feature.account.common.domain.entity.SpecialFolderOptions) r10     // Catch: com.fsck.k9.mail.folders.FolderFetcherException -> L26
            return r10
        L4b:
            r0 = 0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.String r1 = "Error while loading special folders"
            net.thunderbird.core.logging.legacy.Log.e(r10, r1, r0)
            kotlinx.coroutines.flow.StateFlowImpl r9 = r9._state
        L55:
            java.lang.Object r0 = r9.getValue()
            r3 = r0
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State r3 = (app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State) r3
            r3.getClass()
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Failure$LoadFoldersFailed r6 = new app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Failure$LoadFoldersFailed
            java.lang.String r1 = r10.messageFromServer
            r6.<init>(r1)
            r7 = 0
            r8 = 3
            r4 = 0
            r5 = 0
            app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State r1 = app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State.copy$default(r3, r4, r5, r6, r7, r8)
            boolean r0 = r9.compareAndSet(r0, r1)
            if (r0 == 0) goto L55
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel.access$loadSpecialFolderOptions(app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        SpecialFoldersContract$State specialFoldersContract$State;
        SpecialFoldersContract$Event specialFoldersContract$Event = (SpecialFoldersContract$Event) obj;
        specialFoldersContract$Event.getClass();
        if (specialFoldersContract$Event.equals(SpecialFoldersContract$Event.LoadSpecialFolderOptions.INSTANCE)) {
            handleOneTimeEvent(specialFoldersContract$Event, new RoomDatabase$closeBarrier$1(0, this, SpecialFoldersViewModel.class, "onLoadSpecialFolderOptions", "onLoadSpecialFolderOptions()V", 0, 12));
            return;
        }
        if (specialFoldersContract$Event instanceof SpecialFoldersContract$FormEvent) {
            updateState(new DI$$ExternalSyntheticLambda0(13, this, (SpecialFoldersContract$FormEvent) specialFoldersContract$Event));
            return;
        }
        if (specialFoldersContract$Event.equals(SpecialFoldersContract$Event.OnNextClicked.INSTANCE)) {
            saveSpecialFolderSettings();
            navigateNext$6();
            return;
        }
        if (specialFoldersContract$Event.equals(SpecialFoldersContract$Event.OnBackClicked.INSTANCE)) {
            JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
            emitEffect(SpecialFoldersContract$Effect.NavigateBack.INSTANCE);
            return;
        }
        if (!specialFoldersContract$Event.equals(SpecialFoldersContract$Event.OnRetryClicked.INSTANCE)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            specialFoldersContract$State = (SpecialFoldersContract$State) value;
            specialFoldersContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, SpecialFoldersContract$State.copy$default(specialFoldersContract$State, null, false, null, true, 7)));
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, null, 9), 3);
    }

    public final void navigateNext$6() {
        JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
        emitEffect(new SpecialFoldersContract$Effect.NavigateNext(((SpecialFoldersContract$State) this.state.$$delegate_0.getValue()).isManualSetup));
    }

    public final void saveSpecialFolderSettings() {
        StateFlowImpl stateFlowImpl;
        Object value;
        SpecialFoldersContract$State specialFoldersContract$State;
        SpecialFoldersContract$FormState specialFoldersContract$FormState = ((SpecialFoldersContract$State) this.state.$$delegate_0.getValue()).formState;
        SpecialFolderSettings specialFolderSettings = new SpecialFolderSettings(specialFoldersContract$FormState.selectedArchiveSpecialFolderOption, specialFoldersContract$FormState.selectedDraftsSpecialFolderOption, specialFoldersContract$FormState.selectedSentSpecialFolderOption, specialFoldersContract$FormState.selectedSpamSpecialFolderOption, specialFoldersContract$FormState.selectedTrashSpecialFolderOption);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, null, null, null, specialFolderSettings, null, null, 223);
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            specialFoldersContract$State = (SpecialFoldersContract$State) value;
            specialFoldersContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, SpecialFoldersContract$State.copy$default(specialFoldersContract$State, null, false, null, false, 15)));
    }
}
