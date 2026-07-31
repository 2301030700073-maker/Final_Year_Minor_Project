package androidx.camera.core.processing.concurrent;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.SurfaceRequest$$ExternalSyntheticLambda1;
import androidx.camera.core.imagecapture.CaptureNode$1$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.processing.SurfaceOutputImpl;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DualSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    public final HandlerScheduledExecutorService mGlExecutor;
    public final Handler mGlHandler;
    public final DualOpenGlRenderer mGlRenderer;
    public final HandlerThread mGlThread;
    public int mInputSurfaceCount;
    public final AtomicBoolean mIsReleaseRequested;
    public boolean mIsReleased;
    public final LinkedHashMap mOutputSurfaces;
    public SurfaceTexture mPrimarySurfaceTexture;
    public SurfaceTexture mSecondarySurfaceTexture;

    public DualSurfaceProcessor(DynamicRange dynamicRange, SurfaceRequest.AnonymousClass1 anonymousClass1, SurfaceRequest.AnonymousClass1 anonymousClass12) {
        Map map = Collections.EMPTY_MAP;
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mOutputSurfaces = new LinkedHashMap();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = new HandlerScheduledExecutorService(handler);
        this.mGlRenderer = new DualOpenGlRenderer(anonymousClass1, anonymousClass12);
        try {
            initGlRenderer$1(dynamicRange);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    public final void checkReadyToRelease$1() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            LinkedHashMap linkedHashMap = this.mOutputSurfaces;
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutputImpl) it.next()).close();
            }
            linkedHashMap.clear();
            DualOpenGlRenderer dualOpenGlRenderer = this.mGlRenderer;
            if (((AtomicBoolean) dualOpenGlRenderer.mInitialized).getAndSet(false)) {
                GLUtils.checkGlThreadOrThrow((Thread) dualOpenGlRenderer.mGlThread);
                dualOpenGlRenderer.releaseInternal();
            }
            dualOpenGlRenderer.mPrimaryExternalTextureId = -1;
            dualOpenGlRenderer.mSecondaryExternalTextureId = -1;
            this.mGlThread.quit();
        }
    }

    public final void executeSafely$1(Runnable runnable, Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, runnable2, runnable, 9));
        } catch (RejectedExecutionException e) {
            Utf8.SafeProcessor.w("DualSurfaceProcessor", "Unable to executor runnable", e);
            runnable2.run();
        }
    }

    public final void initGlRenderer$1(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            executeSafely$1(new Processor$$ExternalSyntheticLambda1(this, dynamicRange, callbackToFutureAdapter$Completer), new CaptureNode$1$$ExternalSyntheticLambda0(3));
            callbackToFutureAdapter$Completer.tag = "Init GlRenderer";
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        try {
            callbackToFutureAdapter$SafeFuture.get();
        } catch (InterruptedException | ExecutionException e2) {
            e = e2;
            if (e instanceof ExecutionException) {
                e = e.getCause();
            }
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            UriKt$$ExternalSyntheticBUOutline0.m("Failed to create DefaultSurfaceProcessor", e);
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2;
        if (this.mIsReleaseRequested.get() || (surfaceTexture2 = this.mPrimarySurfaceTexture) == null || this.mSecondarySurfaceTexture == null) {
            return;
        }
        surfaceTexture2.updateTexImage();
        this.mSecondarySurfaceTexture.updateTexImage();
        for (Map.Entry entry : this.mOutputSurfaces.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutputImpl surfaceOutputImpl = (SurfaceOutputImpl) entry.getKey();
            if (surfaceOutputImpl.mFormat == 34) {
                try {
                    this.mGlRenderer.render(surfaceTexture.getTimestamp(), surface, surfaceOutputImpl, this.mPrimarySurfaceTexture, this.mSecondarySurfaceTexture);
                } catch (RuntimeException e) {
                    Utf8.SafeProcessor.e("DualSurfaceProcessor", "Failed to render with OpenGL.", e);
                }
            }
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void onInputSurface(SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
        } else {
            executeSafely$1(new CameraX$$ExternalSyntheticLambda2(24, this, surfaceRequest), new SurfaceRequest$$ExternalSyntheticLambda1(surfaceRequest, 1));
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void onOutputSurface(SurfaceOutputImpl surfaceOutputImpl) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutputImpl.close();
            return;
        }
        CameraX$$ExternalSyntheticLambda2 cameraX$$ExternalSyntheticLambda2 = new CameraX$$ExternalSyntheticLambda2(25, this, surfaceOutputImpl);
        Objects.requireNonNull(surfaceOutputImpl);
        executeSafely$1(cameraX$$ExternalSyntheticLambda2, new Preview$$ExternalSyntheticLambda0(12, surfaceOutputImpl));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely$1(new Preview$$ExternalSyntheticLambda0(15, this), new CaptureNode$1$$ExternalSyntheticLambda0(3));
    }
}
