package androidx.compose.material.ripple;

import android.hardware.camera2.CameraManager;
import android.view.textclassifier.TextClassifier;
import androidx.activity.compose.ComposePredictiveBackHandler;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$callback$1;
import androidx.camera.camera2.pipe.compat.CameraRequest;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.camera.camera2.pipe.compat.VirtualCameraState;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.NonTouchScrollingLogic;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.InputMethodSession;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import com.eygraber.uri.Uri;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RippleNode$onAttach$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleNode$onAttach$1(Uri.Builder builder, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 10;
        this.this$0 = builder;
        this.L$0 = obj;
    }

    private final Object invokeSuspend$androidx$camera$camera2$pipe$compat$Camera2DeviceCache$createCameraIdListFlow$1(Object obj) {
        ArrayList arrayList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ProducerScope producerScope = (ProducerScope) this.L$0;
            Camera2DeviceCache$createCameraIdListFlow$1$callback$1 camera2DeviceCache$createCameraIdListFlow$1$callback$1 = new Camera2DeviceCache$createCameraIdListFlow$1$callback$1((Camera2DeviceCache) this.this$0, producerScope);
            CameraManager cameraManager = (CameraManager) ((Camera2DeviceCache) this.this$0).cameraManager.get();
            cameraManager.registerAvailabilityCallback(camera2DeviceCache$createCameraIdListFlow$1$callback$1, ((Camera2DeviceCache) this.this$0).threads.getCamera2Handler());
            Camera2DeviceCache camera2DeviceCache = (Camera2DeviceCache) this.this$0;
            synchronized (camera2DeviceCache.lock) {
                arrayList = camera2DeviceCache.openableCameras;
            }
            Camera2DeviceCache camera2DeviceCache2 = (Camera2DeviceCache) this.this$0;
            if (arrayList != null) {
                Camera2DeviceCache.sendCameraIdList(producerScope, arrayList);
            } else {
                ArrayList readCameraIds = camera2DeviceCache2.readCameraIds();
                if (readCameraIds != null) {
                    Camera2DeviceCache.sendCameraIdList(producerScope, readCameraIds);
                }
            }
            Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(7, cameraManager, camera2DeviceCache$createCameraIdListFlow$1$callback$1);
            this.label = 1;
            if (RangesKt.awaitClose(producerScope, recomposer$$ExternalSyntheticLambda6, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1((AndroidRippleNode) obj2, continuation, 0);
                rippleNode$onAttach$1.L$0 = obj;
                return rippleNode$onAttach$1;
            case 1:
                return new RippleNode$onAttach$1((ComposePredictiveBackHandler) obj2, continuation, 1);
            case 2:
                return new RippleNode$onAttach$1((DeferredUseCaseCameraRequestControl) this.L$0, continuation, (List) obj2);
            case 3:
                return new RippleNode$onAttach$1((MenuHostHelper) this.L$0, (CameraGraphConfigProvider.CameraGraphCreationResult) obj2, continuation, 3);
            case 4:
                return new RippleNode$onAttach$1((Function1) this.L$0, (CompletableDeferredImpl) obj2, continuation, 4);
            case 5:
                RippleNode$onAttach$1 rippleNode$onAttach$12 = new RippleNode$onAttach$1((Dispatcher) obj2, continuation, 5);
                rippleNode$onAttach$12.L$0 = obj;
                return rippleNode$onAttach$12;
            case 6:
                RippleNode$onAttach$1 rippleNode$onAttach$13 = new RippleNode$onAttach$1((Camera2CameraStatusMonitor) obj2, continuation, 6);
                rippleNode$onAttach$13.L$0 = obj;
                return rippleNode$onAttach$13;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                RippleNode$onAttach$1 rippleNode$onAttach$14 = new RippleNode$onAttach$1((Camera2DeviceCache) obj2, continuation, 7);
                rippleNode$onAttach$14.L$0 = obj;
                return rippleNode$onAttach$14;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                RippleNode$onAttach$1 rippleNode$onAttach$15 = new RippleNode$onAttach$1((PruningCamera2DeviceManager) obj2, continuation, 8);
                rippleNode$onAttach$15.L$0 = obj;
                return rippleNode$onAttach$15;
            case 9:
                return new RippleNode$onAttach$1((Flow) this.L$0, (VirtualCameraState) obj2, continuation, 9);
            case 10:
                return new RippleNode$onAttach$1((Uri.Builder) obj2, this.L$0, continuation);
            case 11:
                return new RippleNode$onAttach$1((MutableInteractionSourceImpl) this.L$0, (HoverInteraction$Enter) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new RippleNode$onAttach$1((MutableInteractionSourceImpl) this.L$0, (HoverInteraction$Exit) obj2, continuation, 12);
            case 13:
                return new RippleNode$onAttach$1((MenuHostHelper) this.L$0, (Function2) obj2, continuation, 13);
            case 14:
                RippleNode$onAttach$1 rippleNode$onAttach$16 = new RippleNode$onAttach$1((MouseWheelScrollingLogic) obj2, continuation, 14);
                rippleNode$onAttach$16.L$0 = obj;
                return rippleNode$onAttach$16;
            case OffsetKt.Horizontal /* 15 */:
                return new RippleNode$onAttach$1((NonTouchScrollingLogic) this.L$0, (Function2) obj2, continuation, 15);
            case 16:
                RippleNode$onAttach$1 rippleNode$onAttach$17 = new RippleNode$onAttach$1((Channel) obj2, continuation, 16);
                rippleNode$onAttach$17.L$0 = obj;
                return rippleNode$onAttach$17;
            case 17:
                return new RippleNode$onAttach$1((DragEvent.DragStopped) this.L$0, (ScrollableNode) obj2, continuation, 17);
            case 18:
                return new RippleNode$onAttach$1((Job) this.L$0, (PressGestureScopeImpl) obj2, continuation, 18);
            case 19:
                return new RippleNode$onAttach$1((MutableInteractionSourceImpl) this.L$0, (MutableState) obj2, continuation, 19);
            case 20:
                return new RippleNode$onAttach$1((BringIntoViewResponderNode) this.L$0, (ConnectPlan$$ExternalSyntheticLambda0) obj2, continuation, 20);
            case 21:
                return new RippleNode$onAttach$1((PointerInputScope) this.L$0, (TextFieldSelectionManager) obj2, continuation, 21);
            case 22:
                return new RippleNode$onAttach$1((AndroidLegacyPlatformTextInputServiceAdapter) this.L$0, (CardView.AnonymousClass1) obj2, continuation, 22);
            case 23:
                return new RippleNode$onAttach$1((Job) this.L$0, (CursorAnimationState) obj2, continuation, 23);
            case 24:
                return new RippleNode$onAttach$1((LegacyAdaptingPlatformTextInputModifierNode) this.L$0, (NavHostKt$NavHost$29$1) obj2, continuation, 24);
            case 25:
                return new RippleNode$onAttach$1((TextClassifier) this.L$0, (Function2) obj2, continuation, 25);
            case 26:
                return new RippleNode$onAttach$1((StateLayer) this.L$0, (AnimationSpec) obj2, continuation, 26);
            case 27:
                return new RippleNode$onAttach$1((MutableInteractionSourceImpl) this.L$0, (ParcelableSnapshotMutableIntState) obj2, continuation, 27);
            case 28:
                return new RippleNode$onAttach$1((FocusStateImpl) this.L$0, (TooltipStateImpl) obj2, continuation, 28);
            default:
                RippleNode$onAttach$1 rippleNode$onAttach$18 = new RippleNode$onAttach$1((AndroidPlatformTextInputSession) obj2, continuation, 29);
                rippleNode$onAttach$18.L$0 = obj;
                return rippleNode$onAttach$18;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((RippleNode$onAttach$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((RippleNode$onAttach$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((RippleNode$onAttach$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((RippleNode$onAttach$1) create((CameraRequest) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 13:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 14:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case OffsetKt.Horizontal /* 15 */:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 16:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 17:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 18:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 19:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 20:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 21:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 22:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 24:
                ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 25:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 26:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 27:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 28:
                return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((RippleNode$onAttach$1) create((InputMethodSession) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x01a0, code lost:
    
        if (kotlinx.coroutines.JobKt.cancelAndJoin(r5, r4) == r0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x020b, code lost:
    
        if (androidx.compose.runtime.Updater.getMonotonicFrameClock(r4.getContext()).withFrameNanos(new androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2(r6 ? 1 : 0, r1), r4) == r0) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02ea, code lost:
    
        if (r1.reset(r4) == r0) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x02dd, code lost:
    
        if (r1.join(r4) == r0) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0543, code lost:
    
        if (r2 == r1) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x056d, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x056e, code lost:
    
        if (r2 != r1) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0550, code lost:
    
        if (r2 == r1) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x055d, code lost:
    
        if (r2 == r1) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x056a, code lost:
    
        if (r2 == r1) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01c7, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(500, r4) == r0) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:245:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01bb  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v37, types: [java.util.concurrent.CancellationException] */
    /* JADX WARN: Type inference failed for: r10v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v127 */
    /* JADX WARN: Type inference failed for: r1v128 */
    /* JADX WARN: Type inference failed for: r1v70, types: [int] */
    /* JADX WARN: Type inference failed for: r1v71, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r1v75, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:215:0x040b -> B:205:0x03cc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x01c7 -> B:76:0x01cb). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 2146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ripple.RippleNode$onAttach$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleNode$onAttach$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, List list) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.L$0 = deferredUseCaseCameraRequestControl;
        this.this$0 = list;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RippleNode$onAttach$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RippleNode$onAttach$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
