package androidx.compose.material3;

import android.content.Context;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.pipe.compat.ActiveCamera;
import androidx.camera.camera2.pipe.compat.AndroidCameraState;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.MagnifierNode;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.LinkStateInteractionSourceObserver;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.material3.ModalBottomSheetDialogWrapper;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.glance.appwidget.GlanceRemoteViewsService;
import com.eygraber.uri.Uri;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DeferredCoroutine;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThumbNode$onAttach$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThumbNode$onAttach$1(ScrollableState scrollableState, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.this$0 = scrollableState;
        this.label = i;
    }

    private final Object invokeSuspend$androidx$camera$camera2$pipe$core$WakeLock$startTimeout$1(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (JobKt.delay(1000L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        NodeChain.Differ differ = (NodeChain.Differ) this.this$0;
        synchronized (differ.after) {
            if (!differ.shouldAttachOnInsert && differ.offset == 0) {
                differ.this$0 = null;
                differ.shouldAttachOnInsert = true;
                ((Recomposer$$ExternalSyntheticLambda6) ((NodeChain.Differ) this.this$0).before).invoke();
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new ThumbNode$onAttach$1((ThumbNode) obj2, continuation, 0);
            case 1:
                return new ThumbNode$onAttach$1(continuation, (UseCaseCameraImpl) obj2);
            case 2:
                return new ThumbNode$onAttach$1((List) obj2, continuation, 2);
            case 3:
                return new ThumbNode$onAttach$1((ActiveCamera) obj2, continuation, 3);
            case 4:
                return new ThumbNode$onAttach$1((Camera2CameraStatusMonitor) obj2, continuation, 4);
            case 5:
                return new ThumbNode$onAttach$1((LockableDatabase) obj2, continuation, 5);
            case 6:
                return new ThumbNode$onAttach$1((AndroidCameraState) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new ThumbNode$onAttach$1((LocalStore.AnonymousClass7) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new ThumbNode$onAttach$1((Uri.Builder) obj2, continuation, 8);
            case 9:
                return new ThumbNode$onAttach$1((DeferredCoroutine) obj2, continuation, 9);
            case 10:
                return new ThumbNode$onAttach$1((NodeChain.Differ) obj2, continuation, 10);
            case 11:
                return new ThumbNode$onAttach$1((GraphCommand.RequestProcessor) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new ThumbNode$onAttach$1((CameraBackendsImpl) obj2, continuation, 12);
            case 13:
                return new ThumbNode$onAttach$1((SeekableTransitionState) obj2, continuation, 13);
            case 14:
                return new ThumbNode$onAttach$1((DefaultDebugIndication.DefaultDebugIndicationInstance) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new ThumbNode$onAttach$1((FocusableNode) obj2, continuation, 15);
            case 16:
                return new ThumbNode$onAttach$1((MagnifierNode) obj2, continuation, 16);
            case 17:
                return new ThumbNode$onAttach$1((MouseWheelScrollingLogic) obj2, continuation, 17);
            case 18:
                return new ThumbNode$onAttach$1((LazyListState) obj2, this.label, continuation, 18);
            case 19:
                return new ThumbNode$onAttach$1((LazyGridState) obj2, this.label, continuation, 19);
            case 20:
                return new ThumbNode$onAttach$1((CardView.AnonymousClass1) obj2, continuation, 20);
            case 21:
                return new ThumbNode$onAttach$1((CursorAnimationState) obj2, continuation, 21);
            case 22:
                return new ThumbNode$onAttach$1((LinkStateInteractionSourceObserver) obj2, continuation, 22);
            case 23:
                return new ThumbNode$onAttach$1((ModalBottomSheetDialogWrapper.PredictiveBackOnBackPressedCallback) obj2, continuation, 23);
            case 24:
                return new ThumbNode$onAttach$1((Animatable) obj2, continuation, 24);
            case 25:
                return new ThumbNode$onAttach$1((SnackbarHostState$SnackbarDataImpl) null, (AccessibilityManager) obj2, continuation);
            case 26:
                return new ThumbNode$onAttach$1((DataStoreImpl$doWithWriteFileLock$2) obj2, continuation, 26);
            case 27:
                return new ThumbNode$onAttach$1((SuspendingPointerInputModifierNodeImpl) obj2, continuation, 27);
            case 28:
                return new ThumbNode$onAttach$1((GlanceRemoteViewsService.GlanceRemoteViewsFactory) obj2, continuation, 28);
            default:
                return new ThumbNode$onAttach$1((Context) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 16:
                ((ThumbNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 18:
                ((ThumbNode$onAttach$1) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 19:
                ((ThumbNode$onAttach$1) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((ThumbNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02f6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:154:0x02f4 -> B:147:0x02e5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:156:0x030e -> B:145:0x0312). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 1890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ThumbNode$onAttach$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThumbNode$onAttach$1(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, AccessibilityManager accessibilityManager, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 25;
        this.this$0 = accessibilityManager;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThumbNode$onAttach$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThumbNode$onAttach$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.this$0 = useCaseCameraImpl;
    }
}
