package net.thunderbird.feature.mail.message.list.internal.ui.dialog;

import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetAccountFolders;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$Event;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SetupArchiveFolderDialogViewModel extends SetupArchiveFolderDialogContract$ViewModel {
    public final AccountId accountId;
    public final CreateArchiveFolder createArchiveFolder;
    public final GeneralSettingsManager generalSettingsManager;
    public final GetAccountFolders getAccountFolders;
    public final Logger logger;
    public final StringsResourceManager resourceManager;
    public final SetArchiveFolder setArchiveFolder;

    public SetupArchiveFolderDialogViewModel(AccountId accountId, Logger logger, GetAccountFolders getAccountFolders, CreateArchiveFolder createArchiveFolder, SetArchiveFolder setArchiveFolder, StringsResourceManager stringsResourceManager, GeneralSettingsManager generalSettingsManager) {
        super(((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().display.miscSettings.shouldShowSetupArchiveFolderDialog ? new SetupArchiveFolderDialogContract$State.EmailCantBeArchived(false) : new SetupArchiveFolderDialogContract$State.Closed(true));
        this.accountId = accountId;
        this.logger = logger;
        this.getAccountFolders = getAccountFolders;
        this.createArchiveFolder = createArchiveFolder;
        this.setArchiveFolder = setArchiveFolder;
        this.resourceManager = stringsResourceManager;
        this.generalSettingsManager = generalSettingsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$onCreateArchiveFolderSuccess(net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel r10, net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel.access$onCreateArchiveFolderSuccess(net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel, net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Success, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        Object obj2;
        Object value2;
        Object obj3;
        Object value3;
        Object obj4;
        Object value4;
        Object value5;
        SetupArchiveFolderDialogContract$Event setupArchiveFolderDialogContract$Event = (SetupArchiveFolderDialogContract$Event) obj;
        setupArchiveFolderDialogContract$Event.getClass();
        boolean equals = setupArchiveFolderDialogContract$Event.equals(SetupArchiveFolderDialogContract$Event.MoveNext.INSTANCE);
        ReadonlyStateFlow readonlyStateFlow = this.state;
        StateFlowImpl stateFlowImpl = this._state;
        List list = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (equals) {
            SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) readonlyStateFlow.$$delegate_0.getValue();
            if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) {
                do {
                    value5 = stateFlowImpl.getValue();
                    ((SetupArchiveFolderDialogContract$State) value5).getClass();
                } while (!stateFlowImpl.compareAndSet(value5, new SetupArchiveFolderDialogContract$State.CreateArchiveFolder("", null, null)));
                return;
            } else {
                if (!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.EmailCantBeArchived)) {
                    Regex$$ExternalSyntheticBUOutline0.m(setupArchiveFolderDialogContract$State, "' state doesn't support the MoveNext event", "The '");
                    return;
                }
                do {
                    value4 = stateFlowImpl.getValue();
                    ((SetupArchiveFolderDialogContract$State) value4).getClass();
                } while (!stateFlowImpl.compareAndSet(value4, new SetupArchiveFolderDialogContract$State.ChooseArchiveFolder(true, list, (String) (objArr5 == true ? 1 : 0), 30)));
                JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, objArr4 == true ? 1 : 0, 26), 3);
                return;
            }
        }
        if (setupArchiveFolderDialogContract$Event.equals(SetupArchiveFolderDialogContract$Event.OnDoneClicked.INSTANCE)) {
            SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State2 = (SetupArchiveFolderDialogContract$State) readonlyStateFlow.$$delegate_0.getValue();
            if (!(setupArchiveFolderDialogContract$State2 instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder)) {
                UriKt$$ExternalSyntheticBUOutline0.m(setupArchiveFolderDialogContract$State2, "' state doesn't support the OnDoneClicked event", "The '");
                return;
            }
            SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder = (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) setupArchiveFolderDialogContract$State2;
            RemoteFolder remoteFolder = chooseArchiveFolder.selectedFolder;
            if (remoteFolder == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("The selected folder is null. This should not happen.");
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new StringResourcesKt$stringResource$str$3$1((Object) this, (Object) remoteFolder, (Object) chooseArchiveFolder, (Continuation) (objArr3 == true ? 1 : 0), 6), 3);
            return;
        }
        if (setupArchiveFolderDialogContract$Event.equals(SetupArchiveFolderDialogContract$Event.OnDismissClicked.INSTANCE)) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new WakeLock$release$2((Object) this, (Continuation) (objArr2 == true ? 1 : 0), 18), 3);
            return;
        }
        if (setupArchiveFolderDialogContract$Event instanceof SetupArchiveFolderDialogContract$Event.OnDoNotShowDialogAgainChanged) {
            boolean z = ((SetupArchiveFolderDialogContract$Event.OnDoNotShowDialogAgainChanged) setupArchiveFolderDialogContract$Event).isChecked;
            do {
                value3 = stateFlowImpl.getValue();
                obj4 = (SetupArchiveFolderDialogContract$State) value3;
                obj4.getClass();
                if (obj4 instanceof SetupArchiveFolderDialogContract$State.EmailCantBeArchived) {
                    obj4 = new SetupArchiveFolderDialogContract$State.EmailCantBeArchived(z);
                }
            } while (!stateFlowImpl.compareAndSet(value3, obj4));
            return;
        }
        if (!(setupArchiveFolderDialogContract$Event instanceof SetupArchiveFolderDialogContract$Event.OnCreateFolderClicked)) {
            if (!(setupArchiveFolderDialogContract$Event instanceof SetupArchiveFolderDialogContract$Event.OnFolderSelected)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            RemoteFolder remoteFolder2 = ((SetupArchiveFolderDialogContract$Event.OnFolderSelected) setupArchiveFolderDialogContract$Event).folder;
            do {
                value = stateFlowImpl.getValue();
                obj2 = (SetupArchiveFolderDialogContract$State) value;
                obj2.getClass();
                if (obj2 instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) {
                    obj2 = SetupArchiveFolderDialogContract$State.ChooseArchiveFolder.copy$default((SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj2, remoteFolder2, null, 23);
                }
            } while (!stateFlowImpl.compareAndSet(value, obj2));
            return;
        }
        String str = ((SetupArchiveFolderDialogContract$Event.OnCreateFolderClicked) setupArchiveFolderDialogContract$Event).newFolderName;
        do {
            value2 = stateFlowImpl.getValue();
            obj3 = (SetupArchiveFolderDialogContract$State) value2;
            obj3.getClass();
            if (obj3 instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder) {
                obj3 = SetupArchiveFolderDialogContract$State.CreateArchiveFolder.copy$default((SetupArchiveFolderDialogContract$State.CreateArchiveFolder) obj3, str, ((AndroidResourceManager) this.resourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_syncing), null, 2);
            }
        } while (!stateFlowImpl.compareAndSet(value2, obj3));
        CreateArchiveFolder createArchiveFolder = this.createArchiveFolder;
        createArchiveFolder.getClass();
        AccountId accountId = this.accountId;
        accountId.getClass();
        str.getClass();
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new SafeFlow(0, new AsyncCache$getOrLoad$2(str, createArchiveFolder, accountId, (Continuation) null)), new OutboxFolderManager$getOutboxFolderIdSync$1(this, objArr == true ? 1 : 0, 7), 2), ViewModelKt.getViewModelScope(this));
    }
}
