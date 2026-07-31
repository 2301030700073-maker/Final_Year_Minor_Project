package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameInfo;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.TagBundle;
import androidx.room.util.DBUtil;
import java.util.Collections;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferredImpl;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraControlCompatImpl implements Request.Listener {
    public CompletableDeferredImpl pendingSignal;
    public CompletableDeferredImpl updateSignal;
    public final Object lock = new Object();
    public final Object updateSignalLock = new Object();
    public Preview.Builder configBuilder = new Preview.Builder(1);

    public final CompletableDeferredImpl applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z) {
        Camera2ImplConfig build;
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        synchronized (this.lock) {
            build = this.configBuilder.build();
        }
        synchronized (this.updateSignalLock) {
            try {
                if (useCaseCameraRequestControl != null) {
                    CompletableDeferredImpl completableDeferredImpl2 = this.updateSignal;
                    if (z) {
                        if (completableDeferredImpl2 != null) {
                            completableDeferredImpl2.completeExceptionally(new InstanceCreationException("Camera2CameraControl was updated with new options."));
                        }
                    } else if (completableDeferredImpl2 != null) {
                        DBUtil.propagateTo(completableDeferredImpl, completableDeferredImpl2);
                    }
                    this.updateSignal = completableDeferredImpl;
                    Map singletonMap = Collections.singletonMap("Camera2CameraControl.tag", Integer.valueOf(completableDeferredImpl.hashCode()));
                    singletonMap.getClass();
                    useCaseCameraRequestControl.updateCamera2ConfigAsync(build, singletonMap);
                } else {
                    CompletableDeferredImpl completableDeferredImpl3 = this.pendingSignal;
                    if (completableDeferredImpl3 != null) {
                        completableDeferredImpl3.completeExceptionally(new InstanceCreationException("Camera2CameraControl was updated with new options."));
                    }
                    this.pendingSignal = completableDeferredImpl;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return completableDeferredImpl;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onAborted(Request request) {
        request.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
    public final void mo3onBufferLostDlC0U5Y(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onCaptureProgress(RequestMetadata requestMetadata, int i) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onComplete-CcXjc1I, reason: not valid java name */
    public final void mo5onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
        synchronized (this.updateSignalLock) {
            CompletableDeferredImpl completableDeferredImpl = this.updateSignal;
            if (completableDeferredImpl != null) {
                if (Intrinsics.areEqual(((TagBundle) requestMetadata.getOrDefault(TagsKt.CAMERAX_TAG_BUNDLE, TagBundle.EMPTY_TAGBUNDLE)).mTagMap.get("Camera2CameraControl.tag"), Integer.valueOf(completableDeferredImpl.hashCode()))) {
                    completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(null);
                    this.updateSignal = null;
                    CompletableDeferredImpl completableDeferredImpl2 = this.pendingSignal;
                    if (completableDeferredImpl2 != null) {
                        completableDeferredImpl2.makeCompleting$kotlinx_coroutines_core(null);
                        this.pendingSignal = null;
                    }
                }
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
    public final void mo7onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameMetadata androidFrameMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
    public final void mo8onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    public final void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
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
    /* renamed from: onStarted-uGKBvU4, reason: not valid java name */
    public final void mo10onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onFailed-CcXjc1I, reason: not valid java name */
    public final /* synthetic */ void mo6onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onTotalCaptureResult-CcXjc1I, reason: not valid java name */
    public final /* synthetic */ void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, AndroidFrameInfo androidFrameInfo) {
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
    public final void mo4onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
    }
}
