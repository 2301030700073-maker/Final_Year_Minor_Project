package androidx.compose.runtime.internal;

import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableNode$onKeyEvent$1;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.Velocity;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.compose.common.mvi.BaseStateMachineViewModel;
import net.thunderbird.feature.mail.folder.api.FolderServerId;
import net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Error;
import net.thunderbird.feature.mail.message.list.domain.CreateArchiveFolderOutcome$Error$SyncError$Failed;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableLambdaImpl$invoke$1 extends AdaptedFunctionReference implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ComposableLambdaImpl$invoke$1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String stringResource;
        Object value;
        Object obj3;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.receiver;
        switch (i) {
            case 0:
                ((ComposableLambdaImpl) obj4).invoke((Composer) obj, ((Number) obj2).intValue());
                return unit;
            case 1:
                ScrollableNode scrollableNode = (ScrollableNode) obj4;
                JobKt.launch$default(scrollableNode.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(scrollableNode, ((Velocity) obj).packedValue, null, 2), 3);
                return unit;
            case 2:
                ScrollableNode scrollableNode2 = (ScrollableNode) obj4;
                JobKt.launch$default(scrollableNode2.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(scrollableNode2, ((Velocity) obj).packedValue, null, 1), 3);
                return unit;
            case 3:
                ((BaseStateMachineViewModel) obj4).event(obj);
                return unit;
            case 4:
                ((BaseStateMachineViewModel) obj4).emitEffect(obj);
                return unit;
            default:
                CreateArchiveFolderOutcome$Error createArchiveFolderOutcome$Error = (CreateArchiveFolderOutcome$Error) obj;
                SetupArchiveFolderDialogViewModel setupArchiveFolderDialogViewModel = (SetupArchiveFolderDialogViewModel) obj4;
                StringsResourceManager stringsResourceManager = setupArchiveFolderDialogViewModel.resourceManager;
                Logger logger = setupArchiveFolderDialogViewModel.logger;
                int i2 = 13;
                if (Intrinsics.areEqual(createArchiveFolderOutcome$Error, CreateArchiveFolderOutcome$Error.AccountNotFound.INSTANCE)) {
                    stringResource = ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_account_not_found, setupArchiveFolderDialogViewModel.accountId);
                    Sink$CC.error$default(logger, null, null, new PathPart$$ExternalSyntheticLambda0(stringResource, i2), 3);
                } else if (createArchiveFolderOutcome$Error instanceof CreateArchiveFolderOutcome$Error$SyncError$Failed) {
                    CreateArchiveFolderOutcome$Error$SyncError$Failed createArchiveFolderOutcome$Error$SyncError$Failed = (CreateArchiveFolderOutcome$Error$SyncError$Failed) createArchiveFolderOutcome$Error;
                    stringResource = ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_failed_sync_folder, new FolderServerId(createArchiveFolderOutcome$Error$SyncError$Failed.serverId), createArchiveFolderOutcome$Error$SyncError$Failed.message);
                    Sink$CC.error$default(logger, null, null, new PathPart$$ExternalSyntheticLambda0(stringResource, i2), 1);
                } else if (createArchiveFolderOutcome$Error instanceof CreateArchiveFolderOutcome$Error.UnhandledError) {
                    MessagingException messagingException = ((CreateArchiveFolderOutcome$Error.UnhandledError) createArchiveFolderOutcome$Error).throwable;
                    String stringResource2 = ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_unhandled_error, messagingException.message);
                    Sink$CC.error$default(logger, null, messagingException, new PathPart$$ExternalSyntheticLambda0(stringResource2, i2), 1);
                    stringResource = stringResource2;
                } else if (createArchiveFolderOutcome$Error instanceof CreateArchiveFolderOutcome$Error.InvalidFolderName) {
                    String str = ((CreateArchiveFolderOutcome$Error.InvalidFolderName) createArchiveFolderOutcome$Error).folderName;
                    stringResource = StringsKt.isBlank(str) ? ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_error_folder_name_blank) : ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_invalid_folder_name, str);
                } else {
                    if (!(createArchiveFolderOutcome$Error instanceof CreateArchiveFolderOutcome$Error.LocalFolderCreationError)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    stringResource = ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.setup_archive_folder_create_archive_folder_failed_create_local_folder, ((CreateArchiveFolderOutcome$Error.LocalFolderCreationError) createArchiveFolderOutcome$Error).folderName);
                }
                StateFlowImpl stateFlowImpl = setupArchiveFolderDialogViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                    obj3 = (SetupArchiveFolderDialogContract$State) value;
                    obj3.getClass();
                    if (obj3 instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder) {
                        obj3 = SetupArchiveFolderDialogContract$State.CreateArchiveFolder.copy$default((SetupArchiveFolderDialogContract$State.CreateArchiveFolder) obj3, null, null, stringResource, 3);
                    }
                } while (!stateFlowImpl.compareAndSet(value, obj3));
                return unit;
        }
    }
}
