package androidx.camera.camera2.pipe.graph;

import android.util.Log;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicLong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CaptureLimiter implements Request.Listener, GraphLoop.Listener {
    public GraphLoop _graphLoop;
    public final AtomicLong frameCount;
    public final long requestsUntilActive;

    public CaptureLimiter(long j) {
        this.requestsUntilActive = j;
        if (j <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            throw null;
        }
        AtomicLong atomicLong = new AtomicLong();
        atomicLong.value = 0L;
        this.frameCount = atomicLong;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onAborted(Request request) {
        request.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-DlC0U5Y */
    public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I */
    public final void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        long j2;
        long j3;
        AtomicLong atomicLong = this.frameCount;
        do {
            j2 = atomicLong.value;
            j3 = j2 != -1 ? 1 + j2 : -1L;
        } while (!AtomicLong.FU.compareAndSet(atomicLong, j2, j3));
        if (j3 == this.requestsUntilActive) {
            Log.w("CXCP", "Capture processing is now enabled for " + this._graphLoop + " after " + j3 + " frames.");
            GraphLoop graphLoop = this._graphLoop;
            graphLoop.getClass();
            graphLoop.setCaptureProcessingEnabled(true);
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphShutdown() {
        this.frameCount.value = -1L;
        GraphLoop graphLoop = this._graphLoop;
        graphLoop.getClass();
        graphLoop.setCaptureProcessingEnabled(false);
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphStopped() {
        long j;
        AtomicLong atomicLong = this.frameCount;
        do {
            j = atomicLong.value;
        } while (!AtomicLong.FU.compareAndSet(atomicLong, j, j != -1 ? 0L : -1L));
        GraphLoop graphLoop = this._graphLoop;
        graphLoop.getClass();
        graphLoop.setCaptureProcessingEnabled(false);
        StringBuilder sb = new StringBuilder("Capture processing has been disabled for ");
        GraphLoop graphLoop2 = this._graphLoop;
        graphLoop2.getClass();
        sb.append(graphLoop2);
        sb.append(" until ");
        sb.append(this.requestsUntilActive);
        sb.append(" frames have been completed.");
        Log.w("CXCP", sb.toString());
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onReadoutStarted-mP9r-9w */
    public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onRequestSequenceCompleted-RuT0dZU */
    public final void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onStarted-uGKBvU4 */
    public final void mo10onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onStopRepeating() {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I */
    public final /* synthetic */ void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I */
    public final /* synthetic */ void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4 */
    public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
    }
}
