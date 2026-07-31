package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import com.eygraber.uri.Uri;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$updateSpecialFolders$1;
import com.fsck.k9.mailstore.K9BackendStorage$K9BackendFolderUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.domain.SetAccountFolderOutcome$Success;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode$bringIntoView$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $boundsProvider;
    public final /* synthetic */ Object $childCoordinates;
    public final /* synthetic */ Object $parentRect;
    public final /* synthetic */ int $r8$classId = 0;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(Dispatcher dispatcher, RemoteFolder remoteFolder, Uri.Builder builder, SetArchiveFolder setArchiveFolder, LegacyAccount legacyAccount, Continuation continuation) {
        super(2, continuation);
        this.L$0 = dispatcher;
        this.this$0 = remoteFolder;
        this.$childCoordinates = builder;
        this.$boundsProvider = setArchiveFolder;
        this.$parentRect = legacyAccount;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$parentRect;
        Object obj3 = this.$boundsProvider;
        Object obj4 = this.$childCoordinates;
        Object obj5 = this.this$0;
        switch (i) {
            case 0:
                BringIntoViewResponderNode$bringIntoView$2 bringIntoViewResponderNode$bringIntoView$2 = new BringIntoViewResponderNode$bringIntoView$2((BringIntoViewResponderNode) obj5, (NodeCoordinator) obj4, (FocusTargetNode$invalidateFocus$1) obj3, (ConnectPlan$$ExternalSyntheticLambda0) obj2, continuation);
                bringIntoViewResponderNode$bringIntoView$2.L$0 = obj;
                return bringIntoViewResponderNode$bringIntoView$2;
            default:
                return new BringIntoViewResponderNode$bringIntoView$2((Dispatcher) this.L$0, (RemoteFolder) obj5, (Uri.Builder) obj4, (SetArchiveFolder) obj3, (LegacyAccount) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((BringIntoViewResponderNode$bringIntoView$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.$parentRect;
        Object obj3 = this.$boundsProvider;
        Object obj4 = this.$childCoordinates;
        Object obj5 = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                BringIntoViewResponderNode bringIntoViewResponderNode = (BringIntoViewResponderNode) obj5;
                Continuation continuation = null;
                JobKt.launch$default(coroutineScope, null, null, new DraggableNode$drag$2(bringIntoViewResponderNode, (NodeCoordinator) obj4, (FocusTargetNode$invalidateFocus$1) obj3, continuation, 21), 3);
                return JobKt.launch$default(coroutineScope, null, null, new RippleNode$onAttach$1(bringIntoViewResponderNode, (ConnectPlan$$ExternalSyntheticLambda0) obj2, continuation, 20), 3);
            default:
                ResultKt.throwOnFailure(obj);
                Dispatcher dispatcher = (Dispatcher) this.L$0;
                K9BackendStorage$K9BackendFolderUpdater k9BackendStorage$K9BackendFolderUpdater = new K9BackendStorage$K9BackendFolderUpdater(dispatcher);
                RemoteFolder remoteFolder = (RemoteFolder) obj5;
                Uri.Builder builder = (Uri.Builder) obj4;
                CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) builder.path;
                CoroutineScope coroutineScope2 = (CoroutineScope) builder.fragment;
                SetArchiveFolder setArchiveFolder = (SetArchiveFolder) obj3;
                LegacyAccount legacyAccount = (LegacyAccount) obj2;
                try {
                    ((ListenableMessageStore) dispatcher.executorServiceOrNull).changeFolder(remoteFolder.serverId, remoteFolder.name, FolderType.ARCHIVE);
                    Continuation continuation2 = null;
                    JobKt.launch$default(coroutineScope2, coroutineDispatcher, null, new DataStoreImpl$data$1$3(builder, new Long(remoteFolder.id), continuation2, 29), 2);
                    JobKt.launch$default(coroutineScope2, coroutineDispatcher, null, new DefaultSpecialFolderUpdater$updateSpecialFolders$1(builder, continuation2, 0), 2);
                    DefaultLegacyAccountManager defaultLegacyAccountManager = setArchiveFolder.accountManager;
                    defaultLegacyAccountManager.getClass();
                    defaultLegacyAccountManager.saveAccount(legacyAccount);
                    Outcome.Success success = new Outcome.Success(SetAccountFolderOutcome$Success.INSTANCE);
                    k9BackendStorage$K9BackendFolderUpdater.close();
                    return success;
                } finally {
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, FocusTargetNode$invalidateFocus$1 focusTargetNode$invalidateFocus$1, ConnectPlan$$ExternalSyntheticLambda0 connectPlan$$ExternalSyntheticLambda0, Continuation continuation) {
        super(2, continuation);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = nodeCoordinator;
        this.$boundsProvider = focusTargetNode$invalidateFocus$1;
        this.$parentRect = connectPlan$$ExternalSyntheticLambda0;
    }
}
