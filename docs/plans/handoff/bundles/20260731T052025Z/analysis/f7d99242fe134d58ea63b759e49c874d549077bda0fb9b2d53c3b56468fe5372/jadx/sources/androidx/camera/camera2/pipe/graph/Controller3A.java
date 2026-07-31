package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.Result3A;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Controller3A {
    public static final List aeUnlockedStateList;
    public static final List afUnlockedStateList;
    public static final List awbUnlockedStateList;
    public static final CompletableDeferredImpl deferredResult3ASubmitFailed;
    public static final Map parameterForAfTriggerCancel;
    public final Listener3A graphListener3A;
    public final GraphProcessorImpl graphProcessor;
    public final GraphState3A graphState3A;
    public CompletableDeferredImpl lastUpdate3AResult;
    public final CameraMetadata metadata;

    static {
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 4, 3});
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 3});
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 6, 4, 5});
        IntOffsetKt.listOf((Object) 3);
        IntOffsetKt.listOf((Object) 3);
        IntOffsetKt.listOf((Object[]) new Integer[]{4, 5});
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 4, 3});
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 3});
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
        Collections.singletonMap(key, 1).getClass();
        Map singletonMap = Collections.singletonMap(key, 2);
        singletonMap.getClass();
        parameterForAfTriggerCancel = singletonMap;
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER;
        Collections.singletonMap(key2, 1).getClass();
        MapsKt__MapsKt.mapOf(new Pair(key, 1), new Pair(key2, 1));
        deferredResult3ASubmitFailed = JobKt.CompletableDeferred(new Result3A(4, null));
        aeUnlockedStateList = IntOffsetKt.listOf((Object[]) new Integer[]{0, 1, 2, 4});
        List listOf = IntOffsetKt.listOf((Object[]) new Integer[]{0, 3, 1, 2, 6});
        afUnlockedStateList = listOf;
        awbUnlockedStateList = IntOffsetKt.listOf((Object[]) new Integer[]{0, 1, 2});
        CaptureRequest.Key key3 = CaptureRequest.CONTROL_AE_LOCK;
        Boolean bool = Boolean.TRUE;
        Collections.singletonMap(key3, bool).getClass();
        MapsKt__MapsKt.mapOf(new Pair(key, 2), new Pair(key3, bool));
        Collections.singletonMap(key3, Boolean.FALSE).getClass();
        Collections.singletonMap(key2, 2).getClass();
        MapsKt__MapsKt.mapOf(new Pair(key, 2), new Pair(key2, 2));
        Map singletonMap2 = Collections.singletonMap(CaptureResult.CONTROL_AF_STATE, listOf);
        singletonMap2.getClass();
        new Result3AStateListenerKt$$ExternalSyntheticLambda0(0, singletonMap2);
    }

    public Controller3A(GraphProcessorImpl graphProcessorImpl, CameraMetadata cameraMetadata, GraphState3A graphState3A, Listener3A listener3A) {
        graphProcessorImpl.getClass();
        cameraMetadata.getClass();
        graphState3A.getClass();
        listener3A.getClass();
        this.graphProcessor = graphProcessorImpl;
        this.metadata = cameraMetadata;
        this.graphState3A = graphState3A;
        this.graphListener3A = listener3A;
    }

    /* renamed from: update3A-169HPGg$default, reason: not valid java name */
    public static CompletableDeferredImpl m79update3A169HPGg$default(Controller3A controller3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, int i) {
        AfMode afMode2 = (i & 2) != 0 ? null : afMode;
        AwbMode awbMode2 = (i & 4) != 0 ? null : awbMode;
        FlashMode flashMode2 = (i & 8) != 0 ? null : flashMode;
        List list4 = (i & 16) != 0 ? null : list;
        List list5 = (i & 32) != 0 ? null : list2;
        List list6 = (i & 64) != 0 ? null : list3;
        if (controller3A.graphProcessor.graphLoop.getRepeatingRequest() == null) {
            GraphState3A.m80update7jOEVJU$default(controller3A.graphState3A, aeMode, afMode2, awbMode2, flashMode2, list4, list5, list6, null, null, null, 896);
            controller3A.graphProcessor.update3AParameters(controller3A.graphState3A.toCaptureRequestParametersMap());
            return deferredResult3ASubmitFailed;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (aeMode != null) {
            int i2 = aeMode.value;
            CaptureResult.Key key = CaptureResult.CONTROL_AE_MODE;
            key.getClass();
        }
        if (afMode2 != null) {
            int i3 = afMode2.value;
            CaptureResult.Key key2 = CaptureResult.CONTROL_AF_MODE;
            key2.getClass();
        }
        if (awbMode2 != null) {
            int i4 = awbMode2.value;
            CaptureResult.Key key3 = CaptureResult.CONTROL_AWB_MODE;
            key3.getClass();
        }
        if (flashMode2 != null) {
            int i5 = flashMode2.value;
            CaptureResult.Key key4 = CaptureResult.FLASH_MODE;
            key4.getClass();
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(new Result3AStateListenerKt$$ExternalSyntheticLambda0(0, MapsKt__MapsKt.toMap(linkedHashMap)), null, null);
        Listener3A listener3A = controller3A.graphListener3A;
        listener3A.getClass();
        listener3A.listeners.add(result3AStateListenerImpl);
        GraphState3A.m80update7jOEVJU$default(controller3A.graphState3A, aeMode, afMode2, awbMode2, flashMode2, list4, list5, list6, null, null, null, 896);
        controller3A.graphProcessor.update3AParameters(controller3A.graphState3A.toCaptureRequestParametersMap());
        CompletableDeferredImpl completableDeferredImpl = result3AStateListenerImpl._result;
        synchronized (controller3A) {
            try {
                Log.d("CXCP", "Controller3A#update3A: cancelling previous request " + controller3A.lastUpdate3AResult);
                CompletableDeferredImpl completableDeferredImpl2 = controller3A.lastUpdate3AResult;
                if (completableDeferredImpl2 != null) {
                    completableDeferredImpl2.cancel(JobKt.CancellationException("A newer call for 3A state update initiated.", null));
                }
                controller3A.lastUpdate3AResult = completableDeferredImpl;
            } catch (Throwable th) {
                throw th;
            }
        }
        return completableDeferredImpl;
    }
}
