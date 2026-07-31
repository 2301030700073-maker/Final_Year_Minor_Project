package androidx.compose.foundation.gestures;

import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.pipe.compat.AndroidCameraState;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2;
import androidx.compose.runtime.State;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.eygraber.uri.Uri;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;
import okhttp3.Dispatcher;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode$drag$2 extends SuspendLambda implements Function2 {
    public Object $forEachDelta;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$drag$2(Function2 function2, Object obj, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 24;
        this.$forEachDelta = function2;
        this.L$0 = obj;
        this.this$0 = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                DraggableNode$drag$2 draggableNode$drag$2 = new DraggableNode$drag$2((DragGestureNode$startListeningForEvents$1) this.$forEachDelta, (DraggableNode) obj2, continuation, 0);
                draggableNode$drag$2.L$0 = obj;
                return draggableNode$drag$2;
            case 1:
                DraggableNode$drag$2 draggableNode$drag$22 = new DraggableNode$drag$2((QuotedMessagePresenter) this.$forEachDelta, (Ref$BooleanRef) obj2, continuation, 1);
                draggableNode$drag$22.L$0 = obj;
                return draggableNode$drag$22;
            case 2:
                return new DraggableNode$drag$2((DeferredUseCaseCameraRequestControl) this.L$0, continuation, (Map) this.$forEachDelta, (Config.OptionPriority) obj2, 2);
            case 3:
                return new DraggableNode$drag$2((DeferredUseCaseCameraRequestControl) this.L$0, continuation, (Camera2ImplConfig) this.$forEachDelta, (Map) obj2, 3);
            case 4:
                return new DraggableNode$drag$2((StillCaptureRequestControl) obj2, continuation, 4);
            case 5:
                return new DraggableNode$drag$2((Camera2Backend) obj2, continuation, 5);
            case 6:
                return new DraggableNode$drag$2((Dispatcher) this.L$0, (String) this.$forEachDelta, (Camera2CameraAvailabilityMonitor$startMonitoring$2) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new DraggableNode$drag$2((LockableDatabase) this.L$0, (String) this.$forEachDelta, (AndroidCameraState) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                DraggableNode$drag$2 draggableNode$drag$23 = new DraggableNode$drag$2((Uri.Builder) obj2, continuation, 8);
                draggableNode$drag$23.L$0 = obj;
                return draggableNode$drag$23;
            case 9:
                DraggableNode$drag$2 draggableNode$drag$24 = new DraggableNode$drag$2((Transition) this.$forEachDelta, (MutableState) obj2, continuation, 9);
                draggableNode$drag$24.L$0 = obj;
                return draggableNode$drag$24;
            case 10:
                return new DraggableNode$drag$2((DnsQueryResult) obj2, continuation, 10);
            case 11:
                return new DraggableNode$drag$2((MutableInteractionSourceImpl) this.L$0, (PressInteraction.Cancel) this.$forEachDelta, (DisposableHandle) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new DraggableNode$drag$2((MutableInteractionSourceImpl) this.L$0, (Interaction) this.$forEachDelta, (DisposableHandle) obj2, continuation, 12);
            case 13:
                DraggableNode$drag$2 draggableNode$drag$25 = new DraggableNode$drag$2((DefaultScrollableState) this.$forEachDelta, (Function2) obj2, continuation, 13);
                draggableNode$drag$25.L$0 = obj;
                return draggableNode$drag$25;
            case 14:
                return new DraggableNode$drag$2((DefaultScrollableState) this.L$0, (MutatePriority) this.$forEachDelta, (Function2) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                DraggableNode$drag$2 draggableNode$drag$26 = new DraggableNode$drag$2((DraggableNode) obj2, (DragEvent.DragStopped) this.$forEachDelta, continuation);
                draggableNode$drag$26.L$0 = obj;
                return draggableNode$drag$26;
            case 16:
                DraggableNode$drag$2 draggableNode$drag$27 = new DraggableNode$drag$2((DragGestureNode$startListeningForEvents$1) this.$forEachDelta, (ScrollingLogic) obj2, continuation, 16);
                draggableNode$drag$27.L$0 = obj;
                return draggableNode$drag$27;
            case 17:
                DraggableNode$drag$2 draggableNode$drag$28 = new DraggableNode$drag$2((ScrollingLogic) this.$forEachDelta, (Function2) obj2, continuation, 17);
                draggableNode$drag$28.L$0 = obj;
                return draggableNode$drag$28;
            case 18:
                return new DraggableNode$drag$2((TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1) this.L$0, (PressGestureScopeImpl) this.$forEachDelta, (PointerInputChange) obj2, continuation, 18);
            case 19:
                DraggableNode$drag$2 draggableNode$drag$29 = new DraggableNode$drag$2((Job) this.$forEachDelta, (Function2) obj2, continuation, 19);
                draggableNode$drag$29.L$0 = obj;
                return draggableNode$drag$29;
            case 20:
                return new DraggableNode$drag$2((LazyLayoutItemAnimation) this.L$0, (FiniteAnimationSpec) this.$forEachDelta, (GraphicsLayer) obj2, continuation, 20);
            case 21:
                return new DraggableNode$drag$2((BringIntoViewResponderNode) this.L$0, (NodeCoordinator) this.$forEachDelta, (FocusTargetNode$invalidateFocus$1) obj2, continuation, 21);
            case 22:
                return new DraggableNode$drag$2((TextContextMenuToolbarHandlerNode) this.$forEachDelta, (TextContextMenuProvider) obj2, continuation, 22);
            case 23:
                DraggableNode$drag$2 draggableNode$drag$210 = new DraggableNode$drag$2((State) this.$forEachDelta, (Animatable) obj2, continuation, 23);
                draggableNode$drag$210.L$0 = obj;
                return draggableNode$drag$210;
            case 24:
                return new DraggableNode$drag$2((Function2) this.$forEachDelta, this.L$0, (CoroutineScope) obj2, continuation);
            case 25:
                DraggableNode$drag$2 draggableNode$drag$211 = new DraggableNode$drag$2((Function0) this.$forEachDelta, (Function2) obj2, continuation, 25);
                draggableNode$drag$211.L$0 = obj;
                return draggableNode$drag$211;
            case 26:
                DraggableNode$drag$2 draggableNode$drag$212 = new DraggableNode$drag$2((Function3) this.$forEachDelta, (AnchoredDraggableState) obj2, continuation, 26);
                draggableNode$drag$212.L$0 = obj;
                return draggableNode$drag$212;
            case 27:
                DraggableNode$drag$2 draggableNode$drag$213 = new DraggableNode$drag$2((Function4) this.$forEachDelta, (AnchoredDraggableState) obj2, continuation, 27);
                draggableNode$drag$213.L$0 = obj;
                return draggableNode$drag$213;
            case 28:
                return new DraggableNode$drag$2((MutableStateFlow) this.$forEachDelta, (TooltipStateImpl) obj2, continuation, 28);
            default:
                DraggableNode$drag$2 draggableNode$drag$214 = new DraggableNode$drag$2((Recomposer$runRecomposeAndApplyChanges$2) this.$forEachDelta, (BroadcastFrameClock) obj2, continuation, 29);
                draggableNode$drag$214.L$0 = obj;
                return draggableNode$drag$214;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((DraggableNode$drag$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0217, code lost:
    
        if (r1 == r8) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x020b, code lost:
    
        if (r0.showTextContextMenu(r6, r16) == r8) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0300, code lost:
    
        if (r1 == r2) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0394, code lost:
    
        if (r2.invoke(r1, r16) == r0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0385, code lost:
    
        if (r2.join(r16) == r0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008f, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.collectLatest(r1, r0, r16) == r8) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ab, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007b, code lost:
    
        if (r6.show(r0, r16) == r8) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x06ad, code lost:
    
        if (r11.doSelectSuspend(r16) == r8) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x07f8, code lost:
    
        if (r6 == r0) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x085f, code lost:
    
        if (r6.awaitInternal(r16) == r0) goto L417;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0667 A[Catch: all -> 0x0648, CancellationException -> 0x06f0, TRY_ENTER, TryCatch #10 {CancellationException -> 0x06f0, all -> 0x0648, blocks: (B:376:0x0644, B:381:0x0667, B:383:0x0688, B:384:0x0694, B:386:0x06a0, B:390:0x06a5), top: B:375:0x0644 }] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:397:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x07d5  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x081c  */
    /* JADX WARN: Type inference failed for: r1v143 */
    /* JADX WARN: Type inference failed for: r1v144 */
    /* JADX WARN: Type inference failed for: r1v145 */
    /* JADX WARN: Type inference failed for: r1v146 */
    /* JADX WARN: Type inference failed for: r1v62, types: [android.hardware.camera2.CameraDevice$StateCallback, androidx.camera.camera2.pipe.compat.AndroidCameraState] */
    /* JADX WARN: Type inference failed for: r1v63, types: [androidx.camera.camera2.pipe.compat.AndroidCameraState] */
    /* JADX WARN: Type inference failed for: r1v65 */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r1v72, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v18, types: [androidx.cardview.widget.CardView$1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r7v13, types: [android.hardware.camera2.CameraDevice] */
    /* JADX WARN: Type inference failed for: r7v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v77 */
    /* JADX WARN: Type inference failed for: r7v78 */
    /* JADX WARN: Type inference failed for: r7v79 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:400:0x07f8 -> B:395:0x07fb). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 2572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableNode$drag$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$drag$2(DraggableNode draggableNode, DragEvent.DragStopped dragStopped, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 15;
        this.this$0 = draggableNode;
        this.$forEachDelta = dragStopped;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$drag$2(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$forEachDelta = obj2;
        this.this$0 = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$drag$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$forEachDelta = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$drag$2(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$drag$2(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, Object obj, Object obj2, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = deferredUseCaseCameraRequestControl;
        this.$forEachDelta = obj;
        this.this$0 = obj2;
    }
}
