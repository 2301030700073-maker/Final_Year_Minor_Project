package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.view.Surface;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.TagBundle;
import androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda6;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Reflection;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraCallbackMap implements Request.Listener {
    public final LinkedHashMap callbackMap = new LinkedHashMap();
    public final SynchronizedLazyImpl rejectOperationCameraCaptureSession$delegate = new SynchronizedLazyImpl(new ImmLeaksCleaner$$ExternalSyntheticLambda0(8));
    public volatile Map callbacks = EmptyMap.INSTANCE;

    public static int getCaptureConfigId(RequestMetadata requestMetadata) {
        TagBundle tagBundle = (TagBundle) requestMetadata.get(TagsKt.CAMERAX_TAG_BUNDLE);
        Object obj = tagBundle != null ? tagBundle.mTagMap.get("CAPTURE_CONFIG_ID_KEY") : null;
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final void addCaptureCallback(CameraCaptureCallback cameraCaptureCallback, Executor executor) {
        cameraCaptureCallback.getClass();
        executor.getClass();
        if (this.callbacks.containsKey(cameraCaptureCallback)) {
            throw new IllegalStateException((cameraCaptureCallback + " was already registered!").toString());
        }
        synchronized (this.callbackMap) {
            this.callbackMap.put(cameraCaptureCallback, executor);
            this.callbacks = MapsKt__MapsKt.toMap(this.callbackMap);
        }
    }

    public final CameraCaptureSession getCameraCaptureSession(RequestMetadata requestMetadata) {
        CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
        if (cameraCaptureSession != null) {
            return cameraCaptureSession;
        }
        if (Build.VERSION.SDK_INT < 31 || ((CameraExtensionSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraExtensionSession.class))) == null) {
            return null;
        }
        return (CameraCaptureSession) this.rejectOperationCameraCaptureSession$delegate.getValue();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onAborted(Request request) {
        request.getClass();
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            Object obj = request.extras.get(TagsKt.CAMERAX_TAG_BUNDLE);
            TagBundle tagBundle = obj instanceof TagBundle ? (TagBundle) obj : null;
            Object obj2 = tagBundle != null ? tagBundle.mTagMap.get("CAPTURE_CONFIG_ID_KEY") : null;
            Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
            executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda3(num != null ? num.intValue() : -1, 0, cameraCaptureCallback));
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-DlC0U5Y */
    public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4 */
    public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (Build.VERSION.SDK_INT >= 24 && (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer)) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                Surface surface = (Surface) requestMetadata.getStreams().get(new StreamId(i));
                if (cameraCaptureSession != null && captureRequest != null && surface != null) {
                    executor.execute(new ArchiveOperations$$ExternalSyntheticLambda6((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, surface, j));
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                CaptureResult captureResult = (CaptureResult) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda4((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, captureResult, 0));
                }
            } else {
                executor.execute(new DeviceProfileWriter$$ExternalSyntheticLambda0(cameraCaptureCallback, this, requestMetadata, i));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I */
    public final void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) androidFrameInfo.unwrapAs(Reflection.getOrCreateKotlinClass(TotalCaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && totalCaptureResult != null) {
                    executor.execute(new Schedulers$$ExternalSyntheticLambda1((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, totalCaptureResult, 1));
                }
            } else {
                executor.execute(new Processor$$ExternalSyntheticLambda1(cameraCaptureCallback, this, requestMetadata, new AndroidFrameInfo(requestMetadata, androidFrameInfo), 1));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I */
    public final void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                CaptureFailure captureFailure = (CaptureFailure) requestFailure.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureFailure.class));
                if (cameraCaptureSession != null && captureRequest != null && captureFailure != null) {
                    executor.execute(new Schedulers$$ExternalSyntheticLambda1((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, captureFailure, 2));
                }
            } else {
                executor.execute(new Processor$$ExternalSyntheticLambda1(cameraCaptureCallback, this, requestMetadata, new Path.Companion(), 2));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                CaptureResult captureResult = (CaptureResult) androidFrameMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureResult.class));
                if (cameraCaptureSession != null && captureRequest != null && captureResult != null) {
                    executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda4((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, captureResult, 1));
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onReadoutStarted-mP9r-9w */
    public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda9((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, j2, j, 0));
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = (CameraCaptureSession) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new CameraX$$ExternalSyntheticLambda2(4, (CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession));
                }
            } else {
                executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda13(cameraCaptureCallback, this, requestMetadata, 1));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onRequestSequenceCompleted-RuT0dZU */
    public final void mo9onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
        requestMetadata.getClass();
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda11((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, j, 0));
                }
            }
        }
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
        for (Map.Entry entry : this.callbacks.entrySet()) {
            CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) entry.getKey();
            Executor executor = (Executor) entry.getValue();
            if (cameraCaptureCallback instanceof CameraUseCaseAdapter.CaptureCallbackContainer) {
                CameraCaptureSession cameraCaptureSession = getCameraCaptureSession(requestMetadata);
                CaptureRequest captureRequest = (CaptureRequest) requestMetadata.unwrapAs(Reflection.getOrCreateKotlinClass(CaptureRequest.class));
                if (cameraCaptureSession != null && captureRequest != null) {
                    executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda9((CameraUseCaseAdapter.CaptureCallbackContainer) cameraCaptureCallback, cameraCaptureSession, captureRequest, j2, j, 1));
                }
            } else {
                executor.execute(new CameraCallbackMap$$ExternalSyntheticLambda13(cameraCaptureCallback, this, requestMetadata, 0));
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I */
    public final /* synthetic */ void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }
}
