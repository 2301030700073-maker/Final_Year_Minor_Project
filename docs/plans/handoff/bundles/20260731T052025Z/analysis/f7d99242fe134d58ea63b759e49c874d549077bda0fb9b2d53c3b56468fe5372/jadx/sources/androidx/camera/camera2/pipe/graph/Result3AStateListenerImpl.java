package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Result3AStateListenerImpl implements GraphLoop.Listener {
    public final CompletableDeferredImpl _result;
    public final Function1 exitCondition;
    public final Integer frameLimit;
    public volatile FrameNumber frameNumberOfFirstUpdate;
    public RequestNumber initialRequestNumber;
    public final Long timeLimitNs;
    public volatile Long timestampOfFirstUpdateNs;

    public Result3AStateListenerImpl(Function1 function1, Integer num, Long l) {
        function1.getClass();
        this.exitCondition = function1;
        this.frameLimit = num;
        this.timeLimitNs = l;
        this._result = new CompletableDeferredImpl();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphShutdown() {
        this._result.makeCompleting$kotlinx_coroutines_core(new Result3A(3, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphStopped() {
        this._result.makeCompleting$kotlinx_coroutines_core(new Result3A(3, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onStopRepeating() {
        this._result.makeCompleting$kotlinx_coroutines_core(new Result3A(3, null));
    }
}
