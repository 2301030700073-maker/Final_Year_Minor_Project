package androidx.room;

import android.os.Build;
import android.view.View;
import android.view.contentcapture.ContentCaptureSession;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusInvalidationManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.core.os.BuildCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.ViewModelKt;
import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.SQLite;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.edit.ui.server.settings.save.BaseSaveServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.BaseSaveServerSettingsViewModel$updateSuccess$2;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountViewModel;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsViewModel;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerActivity;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Effect;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import com.fsck.k9.backend.imap.BackendIdleRefreshManager;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.mail.store.imap.RealImapFolderIdler;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RoomDatabase$closeBarrier$1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        NodeChain nodeChain;
        ContentCaptureSession contentCaptureSession;
        Object value;
        Object value2;
        int i = 8;
        int i2 = 1;
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                RoomDatabase roomDatabase = (RoomDatabase) this.receiver;
                ContextScope contextScope = roomDatabase.coroutineScope;
                if (contextScope == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    throw null;
                }
                JobKt.cancel(contextScope, (CancellationException) null);
                roomDatabase.getInvalidationTracker();
                RoomConnectionManager roomConnectionManager = roomDatabase.connectionManager;
                if (roomConnectionManager != null) {
                    ((ConnectionPool) roomConnectionManager.connectionPool).close();
                    return Unit.INSTANCE;
                }
                Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
                throw null;
            case 1:
                return Boolean.valueOf(((FocusableNode) this.receiver).focusTargetNode.m420requestFocus3ESFkO8(7));
            case 2:
                return ((TextContextMenuDataProvider) this.receiver).data();
            case 3:
                FocusStateImpl focusStateImpl = FocusStateImpl.Inactive;
                FocusInvalidationManager focusInvalidationManager = (FocusInvalidationManager) this.receiver;
                MutableScatterSet mutableScatterSet = focusInvalidationManager.focusTargetNodes;
                MutableScatterSet mutableScatterSet2 = focusInvalidationManager.focusEventNodes;
                FocusOwnerImpl focusOwnerImpl = focusInvalidationManager.focusOwner;
                FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                long j = -9187201950435737472L;
                if (activeFocusTargetNode == null) {
                    Object[] objArr = mutableScatterSet2.elements;
                    long[] jArr = mutableScatterSet2.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j2 = jArr[i3];
                            long[] jArr2 = jArr;
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                for (int i5 = 0; i5 < i4; i5++) {
                                    if ((j2 & 255) < 128) {
                                        ((FocusEventModifierNode) objArr[(i3 << 3) + i5]).onFocusEvent(focusStateImpl);
                                    }
                                    j2 >>= 8;
                                }
                                if (i4 != 8) {
                                }
                            }
                            if (i3 != length) {
                                i3++;
                                jArr = jArr2;
                            }
                        }
                    }
                } else if (activeFocusTargetNode.isAttached) {
                    if (mutableScatterSet.contains(activeFocusTargetNode)) {
                        activeFocusTargetNode.invalidateFocus$ui();
                    }
                    FocusStateImpl focusState = activeFocusTargetNode.getFocusState();
                    if (!activeFocusTargetNode.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node = activeFocusTargetNode.node;
                    LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
                    int i6 = 0;
                    while (requireLayoutNode != null) {
                        if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 5120) != 0) {
                            while (node != null) {
                                int i7 = node.kindSet;
                                if ((i7 & 5120) != 0) {
                                    if ((i7 & 1024) != 0) {
                                        i6++;
                                    }
                                    if ((node instanceof FocusEventModifierNode) && mutableScatterSet2.contains(node)) {
                                        if (i6 <= 1) {
                                            ((FocusEventModifierNode) node).onFocusEvent(focusState);
                                        } else {
                                            ((FocusEventModifierNode) node).onFocusEvent(FocusStateImpl.ActiveParent);
                                        }
                                        mutableScatterSet2.remove(node);
                                    }
                                }
                                node = node.parent;
                            }
                        }
                        requireLayoutNode = requireLayoutNode.getParent$ui();
                        node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                    }
                    Object[] objArr2 = mutableScatterSet2.elements;
                    long[] jArr3 = mutableScatterSet2.metadata;
                    int length2 = jArr3.length - 2;
                    if (length2 >= 0) {
                        int i8 = 0;
                        while (true) {
                            long j3 = jArr3[i8];
                            if ((((~j3) << 7) & j3 & j) != j) {
                                int i9 = 8 - ((~(i8 - length2)) >>> 31);
                                for (int i10 = 0; i10 < i9; i10++) {
                                    if ((j3 & 255) < 128) {
                                        ((FocusEventModifierNode) objArr2[(i8 << 3) + i10]).onFocusEvent(focusStateImpl);
                                    }
                                    j3 >>= 8;
                                }
                                if (i9 != 8) {
                                }
                            }
                            if (i8 != length2) {
                                i8++;
                                j = -9187201950435737472L;
                            }
                        }
                    }
                }
                if (focusOwnerImpl.getActiveFocusTargetNode() == null || focusOwnerImpl.rootFocusNode.getFocusState() == focusStateImpl) {
                    focusOwnerImpl.clearOwnerFocus();
                }
                mutableScatterSet.clear();
                mutableScatterSet2.clear();
                focusInvalidationManager.isInvalidationScheduled = false;
                return Unit.INSTANCE;
            case 4:
                View view = (View) this.receiver;
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 30) {
                    BuildCompat.Api30Impl.setImportantForContentCapture(view);
                }
                if (i11 < 29 || (contentCaptureSession = TraceApi29Impl.getContentCaptureSession(view)) == null) {
                    return null;
                }
                return new ContentCaptureSessionCompat(contentCaptureSession, view);
            case 5:
                BaseSaveServerSettingsViewModel baseSaveServerSettingsViewModel = (BaseSaveServerSettingsViewModel) this.receiver;
                baseSaveServerSettingsViewModel.getClass();
                JobKt.launch$default(ViewModelKt.getViewModelScope(baseSaveServerSettingsViewModel), null, null, new BaseSaveServerSettingsViewModel$updateSuccess$2(baseSaveServerSettingsViewModel, continuation, i2), 3);
                return Unit.INSTANCE;
            case 6:
                ((IncomingServerSettingsViewModel) this.receiver).loadAccountState();
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((OutgoingServerSettingsViewModel) this.receiver).loadAccountState();
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                BaseServerValidationViewModel baseServerValidationViewModel = (BaseServerValidationViewModel) this.receiver;
                StateFlowImpl stateFlowImpl = baseServerValidationViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                    ((ServerValidationContract$State) value).getClass();
                } while (!stateFlowImpl.compareAndSet(value, SQLite.toServerValidationState(((InMemoryAccountStateRepository) baseServerValidationViewModel.accountStateRepository).state, baseServerValidationViewModel.isIncomingValidation)));
                baseServerValidationViewModel.onValidateConfig();
                return Unit.INSTANCE;
            case 9:
                CreateAccountViewModel createAccountViewModel = (CreateAccountViewModel) this.receiver;
                JobKt.launch$default(ViewModelKt.getViewModelScope(createAccountViewModel), null, null, new BlockRunner$maybeRun$1(createAccountViewModel, ((InMemoryAccountStateRepository) createAccountViewModel.accountStateRepository).state, continuation, 24), 3);
                return Unit.INSTANCE;
            case 10:
                DisplayOptionsViewModel displayOptionsViewModel = (DisplayOptionsViewModel) this.receiver;
                displayOptionsViewModel.getClass();
                JobKt.launch$default(ViewModelKt.getViewModelScope(displayOptionsViewModel), null, null, new BlockRunner$cancel$1(displayOptionsViewModel, continuation, i), 3);
                return Unit.INSTANCE;
            case 11:
                SyncOptionsViewModel syncOptionsViewModel = (SyncOptionsViewModel) this.receiver;
                StateFlowImpl stateFlowImpl2 = syncOptionsViewModel._state;
                do {
                    value2 = stateFlowImpl2.getValue();
                    ((SyncOptionsContract$State) value2).getClass();
                } while (!stateFlowImpl2.compareAndSet(value2, SyncOptionsScreenKt.toSyncOptionsState(((InMemoryAccountStateRepository) syncOptionsViewModel.accountStateRepository).state)));
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                SpecialFoldersViewModel specialFoldersViewModel = (SpecialFoldersViewModel) this.receiver;
                specialFoldersViewModel.getClass();
                JobKt.launch$default(ViewModelKt.getViewModelScope(specialFoldersViewModel), null, null, new BlockRunner$cancel$1(specialFoldersViewModel, continuation, 9), 3);
                return Unit.INSTANCE;
            case 13:
                ((QrCodeScannerActivity) this.receiver).finish();
                return Unit.INSTANCE;
            case 14:
                ((QrCodeScannerViewModel) this.receiver).emitEffect(QrCodeScannerContract$Effect.RequestCameraPermission.INSTANCE);
                return Unit.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) this.receiver;
                permissionsViewModel.getClass();
                JobKt.launch$default(ViewModelKt.getViewModelScope(permissionsViewModel), null, null, new BlockRunner$cancel$1(permissionsViewModel, continuation, 11), 3);
                return Unit.INSTANCE;
            case 16:
                ((BackendIdleRefreshManager) this.receiver).onTimeout();
                return Unit.INSTANCE;
            case 17:
                ((BackendIdleRefreshManager) this.receiver).onTimeout();
                return Unit.INSTANCE;
            case 18:
                ImapBackendPusher imapBackendPusher = (ImapBackendPusher) this.receiver;
                imapBackendPusher.getClass();
                Log.v("Refreshing ImapBackendPusher (at least one retry timer has expired)", new Object[0]);
                imapBackendPusher.updateFolders$1();
                return Unit.INSTANCE;
            case 19:
                RealImapFolderIdler realImapFolderIdler = (RealImapFolderIdler) this.receiver;
                synchronized (realImapFolderIdler) {
                    Log.v("%s.idleRefresh()", realImapFolderIdler.logTag);
                    if (!realImapFolderIdler.idleSent || realImapFolderIdler.doneSent) {
                        Log.v("%s: Connection is not in a state where it can be refreshed.", realImapFolderIdler.logTag);
                    } else {
                        try {
                            realImapFolderIdler.sendDone();
                        } catch (IOException e) {
                            Log.v(e, "%s: IOException while sending DONE", realImapFolderIdler.logTag);
                        }
                    }
                }
                return Unit.INSTANCE;
            case 20:
                NotificationActionsReorderController notificationActionsReorderController = (NotificationActionsReorderController) this.receiver;
                boolean z = notificationActionsReorderController.dragDidMove;
                notificationActionsReorderController.draggedOffsetY$delegate.setFloatValue(0.0f);
                notificationActionsReorderController.draggedKey$delegate.setValue(null);
                notificationActionsReorderController.dragDidMove = false;
                if (z) {
                    notificationActionsReorderController.notifyStateChanged();
                }
                return Unit.INSTANCE;
            default:
                ((SentFolderNotFoundConfirmationDialogFragment) this.receiver).dismissInternal(false, false);
                return Unit.INSTANCE;
        }
    }
}
