package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import com.fsck.k9.activity.MessageLoaderHelper$4$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComboRequestListener implements Request.Listener {
    public final LinkedHashMap requestListeners = new LinkedHashMap();
    public volatile Map listeners = EmptyMap.INSTANCE;

    public final void addListener(Request.Listener listener, UseCaseThreads$$ExternalSyntheticLambda0 useCaseThreads$$ExternalSyntheticLambda0) {
        useCaseThreads$$ExternalSyntheticLambda0.getClass();
        if (this.listeners.containsKey(listener)) {
            throw new IllegalStateException((listener + " was already registered!").toString());
        }
        synchronized (this.requestListeners) {
            this.requestListeners.put(listener, useCaseThreads$$ExternalSyntheticLambda0);
            this.listeners = MapsKt__MapsKt.toMap(this.requestListeners);
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onAborted(Request request) {
        request.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new CameraX$$ExternalSyntheticLambda2(5, (Request.Listener) entry.getKey(), request));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-DlC0U5Y */
    public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4 */
    public final void mo4onBufferLostiiEMlm4(final RequestMetadata requestMetadata, final long j, final int i, final int i2) {
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    Request.Listener.this.mo4onBufferLostiiEMlm4(requestMetadata, j, i, i2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I */
    public final void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new ComboRequestListener$$ExternalSyntheticLambda3((Request.Listener) entry.getKey(), requestMetadata, j, androidFrameInfo, 1));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I */
    public final void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new MessageLoaderHelper$4$$ExternalSyntheticLambda0((Request.Listener) entry.getKey(), requestMetadata, j, requestFailure, 1));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new MessageLoaderHelper$4$$ExternalSyntheticLambda0((Request.Listener) entry.getKey(), requestMetadata, j, androidFrameMetadata, 2));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onReadoutStarted-mP9r-9w */
    public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new ComboRequestListener$$ExternalSyntheticLambda1((Request.Listener) entry.getKey(), requestMetadata, 0));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onRequestSequenceCompleted-RuT0dZU */
    public final void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new CameraCallbackMap$$ExternalSyntheticLambda11((Request.Listener) entry.getKey(), requestMetadata, j, 1));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new ComboRequestListener$$ExternalSyntheticLambda1((Request.Listener) entry.getKey(), requestMetadata, 1));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new ComboRequestListener$$ExternalSyntheticLambda1((Request.Listener) entry.getKey(), requestMetadata, 2));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onStarted-uGKBvU4 */
    public final void mo10onStarteduGKBvU4(final RequestMetadata requestMetadata, final long j, final long j2) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.listeners.entrySet()) {
            final Request.Listener listener = (Request.Listener) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.impl.ComboRequestListener$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    Request.Listener.this.mo10onStarteduGKBvU4(requestMetadata, j, j2);
                }
            });
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I */
    public final void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        for (Map.Entry entry : this.listeners.entrySet()) {
            ((Executor) entry.getValue()).execute(new ComboRequestListener$$ExternalSyntheticLambda3((Request.Listener) entry.getKey(), requestMetadata, j, androidFrameInfo, 0));
        }
    }

    public final void removeListener(Request.Listener listener) {
        listener.getClass();
        synchronized (this.requestListeners) {
            this.requestListeners.remove(listener);
            this.listeners = MapsKt__MapsKt.toMap(this.requestListeners);
        }
    }
}
