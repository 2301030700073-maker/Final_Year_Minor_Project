package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.compose.material3.TooltipStateImpl;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.utils.PackageManagerHelper;
import com.fsck.k9.ui.settings.general.GeneralSettingsUiState;
import com.fsck.k9.ui.settings.general.GeneralSettingsViewModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListFragment$onCreate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ boolean Z$0;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageListFragment$onCreate$2(GeneralSettingsViewModel generalSettingsViewModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.this$0 = generalSettingsViewModel;
        this.Z$0 = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                MessageListFragment$onCreate$2 messageListFragment$onCreate$2 = new MessageListFragment$onCreate$2((MessageListFragment) obj2, continuation, 0);
                messageListFragment$onCreate$2.Z$0 = ((Boolean) obj).booleanValue();
                return messageListFragment$onCreate$2;
            case 1:
                return new MessageListFragment$onCreate$2(continuation, (UseCaseCameraImpl) obj2, this.Z$0);
            case 2:
                MessageListFragment$onCreate$2 messageListFragment$onCreate$22 = new MessageListFragment$onCreate$2((TooltipStateImpl) obj2, continuation, 2);
                messageListFragment$onCreate$22.Z$0 = ((Boolean) obj).booleanValue();
                return messageListFragment$onCreate$22;
            case 3:
                MessageListFragment$onCreate$2 messageListFragment$onCreate$23 = new MessageListFragment$onCreate$2((Context) obj2, continuation, 3);
                messageListFragment$onCreate$23.Z$0 = ((Boolean) obj).booleanValue();
                return messageListFragment$onCreate$23;
            default:
                return new MessageListFragment$onCreate$2((GeneralSettingsViewModel) obj2, this.Z$0, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((MessageListFragment$onCreate$2) create(bool, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                ((MessageListFragment$onCreate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                ((MessageListFragment$onCreate$2) create(bool2, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 3:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                ((MessageListFragment$onCreate$2) create(bool3, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((MessageListFragment$onCreate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                boolean z = this.Z$0;
                ResultKt.throwOnFailure(obj);
                MessageListFragment messageListFragment = (MessageListFragment) this.this$0;
                messageListFragment.showingThreadedList = z;
                LocalMessageSearch localSearch = messageListFragment.getLocalSearch();
                SortType sortType = messageListFragment.sortType;
                MapsKt__MapsKt.toMap(messageListFragment.getLegacyViewModel().messageSortOverrides);
                sortType.getClass();
                SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(localSearch, messageListFragment.getAccountManager$2());
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                if (!((UseCaseCameraImpl) this.this$0).closed.getValue()) {
                    CameraGraphImpl graph = ((UseCaseCameraImpl) this.this$0).useCaseGraphContext.getGraph();
                    boolean z2 = this.Z$0;
                    Camera2CameraController camera2CameraController = graph.cameraController;
                    synchronized (camera2CameraController.lock) {
                        camera2CameraController._isForeground = z2;
                    }
                } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "UseCaseCamera is closed before setActiveResumeMode, skipping setup.");
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                if (!this.Z$0) {
                    ((TooltipStateImpl) this.this$0).dismiss();
                }
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                PackageManagerHelper.setComponentEnabled((Context) this.this$0, RescheduleReceiver.class, this.Z$0);
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                GeneralSettingsViewModel generalSettingsViewModel = (GeneralSettingsViewModel) this.this$0;
                GeneralSettingsViewModel.access$setExportingState(generalSettingsViewModel);
                try {
                    if (this.Z$0) {
                        GeneralSettingsViewModel.access$showSnackbar(generalSettingsViewModel, GeneralSettingsUiState.Success.INSTANCE);
                    } else {
                        GeneralSettingsViewModel.access$showSnackbar(generalSettingsViewModel, GeneralSettingsUiState.Failure.INSTANCE);
                    }
                } catch (Exception e) {
                    net.thunderbird.core.logging.legacy.Log.e(e, "Failed to write log to URI", new Object[0]);
                    GeneralSettingsViewModel.access$showSnackbar(generalSettingsViewModel, GeneralSettingsUiState.Failure.INSTANCE);
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MessageListFragment$onCreate$2(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageListFragment$onCreate$2(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl, boolean z) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.this$0 = useCaseCameraImpl;
        this.Z$0 = z;
    }
}
