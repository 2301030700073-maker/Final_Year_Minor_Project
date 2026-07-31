package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Listener3A implements Request.Listener, GraphLoop.Listener {
    public final CopyOnWriteArrayList listeners = new CopyOnWriteArrayList();

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

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphShutdown() {
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Result3AStateListenerImpl) it.next()).onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public final void onGraphStopped() {
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Result3AStateListenerImpl) it.next()).onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        requestMetadata.getClass();
        m81updateListenersvoPkFw(requestMetadata.mo20getRequestNumbermy6kx4g(), androidFrameMetadata);
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
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            Result3AStateListenerImpl result3AStateListenerImpl = (Result3AStateListenerImpl) it.next();
            long mo20getRequestNumbermy6kx4g = requestMetadata.mo20getRequestNumbermy6kx4g();
            synchronized (result3AStateListenerImpl) {
                if (result3AStateListenerImpl.initialRequestNumber == null) {
                    result3AStateListenerImpl.initialRequestNumber = new RequestNumber(mo20getRequestNumbermy6kx4g);
                }
            }
        }
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
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Result3AStateListenerImpl) it.next()).onStopRepeating();
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I */
    public final void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        m81updateListenersvoPkFw(requestMetadata.mo20getRequestNumbermy6kx4g(), (AndroidFrameMetadata) androidFrameInfo.result);
    }

    /* renamed from: updateListeners-voP-kFw, reason: not valid java name */
    public final void m81updateListenersvoPkFw(long j, AndroidFrameMetadata androidFrameMetadata) {
        Integer num;
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            Result3AStateListenerImpl result3AStateListenerImpl = (Result3AStateListenerImpl) it.next();
            result3AStateListenerImpl.getClass();
            androidFrameMetadata.getClass();
            if (!result3AStateListenerImpl._result.isCompleted() && !result3AStateListenerImpl._result.isCancelled()) {
                synchronized (result3AStateListenerImpl) {
                    RequestNumber requestNumber = result3AStateListenerImpl.initialRequestNumber;
                    if (requestNumber != null && j >= requestNumber.value) {
                        CaptureResult.Key key = CaptureResult.SENSOR_TIMESTAMP;
                        key.getClass();
                        Long l = (Long) androidFrameMetadata.captureResult.get(key);
                        long frameNumber = androidFrameMetadata.captureResult.getFrameNumber();
                        if (l != null && result3AStateListenerImpl.timestampOfFirstUpdateNs == null) {
                            result3AStateListenerImpl.timestampOfFirstUpdateNs = l;
                        }
                        Long l2 = result3AStateListenerImpl.timestampOfFirstUpdateNs;
                        if (result3AStateListenerImpl.timeLimitNs == null || l2 == null || l == null || l.longValue() - l2.longValue() <= result3AStateListenerImpl.timeLimitNs.longValue()) {
                            if (result3AStateListenerImpl.frameNumberOfFirstUpdate == null) {
                                result3AStateListenerImpl.frameNumberOfFirstUpdate = new FrameNumber(frameNumber);
                            }
                            FrameNumber frameNumber2 = result3AStateListenerImpl.frameNumberOfFirstUpdate;
                            if (frameNumber2 != null && (num = result3AStateListenerImpl.frameLimit) != null && frameNumber - frameNumber2.value > num.intValue()) {
                                result3AStateListenerImpl._result.makeCompleting$kotlinx_coroutines_core(new Result3A(1, androidFrameMetadata));
                            } else if (((Boolean) result3AStateListenerImpl.exitCondition.invoke(androidFrameMetadata)).booleanValue()) {
                                result3AStateListenerImpl._result.makeCompleting$kotlinx_coroutines_core(new Result3A(0, androidFrameMetadata));
                            }
                        } else {
                            result3AStateListenerImpl._result.makeCompleting$kotlinx_coroutines_core(new Result3A(2, androidFrameMetadata));
                        }
                    }
                }
            }
            this.listeners.remove(result3AStateListenerImpl);
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I */
    public final /* synthetic */ void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I */
    public final /* synthetic */ void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4 */
    public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
    }
}
