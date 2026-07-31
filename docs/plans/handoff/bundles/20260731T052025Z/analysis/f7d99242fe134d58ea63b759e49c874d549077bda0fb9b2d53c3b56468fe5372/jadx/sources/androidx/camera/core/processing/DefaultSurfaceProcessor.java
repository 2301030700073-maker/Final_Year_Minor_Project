package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.SurfaceRequest$$ExternalSyntheticLambda1;
import androidx.camera.core.imagecapture.CaptureNode$1$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.processing.util.GLUtils;
import androidx.compose.ui.unit.IntRectKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Triple;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    public final HandlerScheduledExecutorService mGlExecutor;
    public final Handler mGlHandler;
    public final OpenGlRenderer mGlRenderer;
    public final HandlerThread mGlThread;
    public int mInputSurfaceCount;
    public final AtomicBoolean mIsReleaseRequested;
    public boolean mIsReleased;
    public final LinkedHashMap mOutputSurfaces;
    public final ArrayList mPendingSnapshots;
    public final float[] mSurfaceOutputMatrix;
    public final float[] mTextureMatrix;

    public DefaultSurfaceProcessor(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mTextureMatrix = new float[16];
        this.mSurfaceOutputMatrix = new float[16];
        this.mOutputSurfaces = new LinkedHashMap();
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mPendingSnapshots = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = new HandlerScheduledExecutorService(handler);
        this.mGlRenderer = new OpenGlRenderer();
        try {
            initGlRenderer(dynamicRange);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    public final void checkReadyToRelease() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            LinkedHashMap linkedHashMap = this.mOutputSurfaces;
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutputImpl) it.next()).close();
            }
            Iterator it2 = this.mPendingSnapshots.iterator();
            if (it2.hasNext()) {
                ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) it2.next()).getClass();
                new Exception("Failed to snapshot: DefaultSurfaceProcessor is released.");
                throw null;
            }
            linkedHashMap.clear();
            OpenGlRenderer openGlRenderer = this.mGlRenderer;
            if (((AtomicBoolean) openGlRenderer.mInitialized).getAndSet(false)) {
                GLUtils.checkGlThreadOrThrow((Thread) openGlRenderer.mGlThread);
                openGlRenderer.releaseInternal();
            }
            this.mGlThread.quit();
        }
    }

    public final void executeSafely(Runnable runnable, Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, runnable2, runnable, 5));
        } catch (RejectedExecutionException e) {
            Utf8.SafeProcessor.w("DefaultSurfaceProcessor", "Unable to executor runnable", e);
            runnable2.run();
        }
    }

    public final void failAllPendingSnapshots(Exception exc) {
        ArrayList arrayList = this.mPendingSnapshots;
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) it.next()).getClass();
            throw null;
        }
        arrayList.clear();
    }

    public final Bitmap getBitmap(Size size, float[] fArr, int i) {
        float[] fArr2 = (float[]) fArr.clone();
        IntRectKt.preRotate(fArr2, i);
        IntRectKt.preVerticalFlip(fArr2);
        Size rotateSize = TransformUtils.rotateSize(i, size);
        OpenGlRenderer openGlRenderer = this.mGlRenderer;
        openGlRenderer.getClass();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(rotateSize.getHeight() * rotateSize.getWidth() * 4);
        RelationUtil.checkArgument("ByteBuffer capacity is not equal to width * height * 4.", allocateDirect.capacity() == (rotateSize.getHeight() * rotateSize.getWidth()) * 4);
        RelationUtil.checkArgument("ByteBuffer is not direct.", allocateDirect.isDirect());
        int[] iArr = GLUtils.EMPTY_ATTRIBS;
        int[] iArr2 = new int[1];
        GLES20.glGenTextures(1, iArr2, 0);
        GLUtils.checkGlErrorOrThrow("glGenTextures");
        int i2 = iArr2[0];
        GLES20.glActiveTexture(33985);
        GLUtils.checkGlErrorOrThrow("glActiveTexture");
        GLES20.glBindTexture(3553, i2);
        GLUtils.checkGlErrorOrThrow("glBindTexture");
        GLES20.glTexImage2D(3553, 0, 6407, rotateSize.getWidth(), rotateSize.getHeight(), 0, 6407, 5121, null);
        GLUtils.checkGlErrorOrThrow("glTexImage2D");
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10241, 9729);
        int[] iArr3 = new int[1];
        GLES20.glGenFramebuffers(1, iArr3, 0);
        GLUtils.checkGlErrorOrThrow("glGenFramebuffers");
        int i3 = iArr3[0];
        GLES20.glBindFramebuffer(36160, i3);
        GLUtils.checkGlErrorOrThrow("glBindFramebuffer");
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        GLUtils.checkGlErrorOrThrow("glFramebufferTexture2D");
        GLES20.glActiveTexture(33984);
        GLUtils.checkGlErrorOrThrow("glActiveTexture");
        GLES20.glBindTexture(36197, openGlRenderer.mExternalTextureId);
        GLUtils.checkGlErrorOrThrow("glBindTexture");
        openGlRenderer.mCurrentSurface = null;
        GLES20.glViewport(0, 0, rotateSize.getWidth(), rotateSize.getHeight());
        GLES20.glScissor(0, 0, rotateSize.getWidth(), rotateSize.getHeight());
        GLUtils.Program2D program2D = (GLUtils.Program2D) openGlRenderer.mCurrentProgram;
        program2D.getClass();
        if (program2D instanceof GLUtils.SamplerShaderProgram) {
            GLES20.glUniformMatrix4fv(((GLUtils.SamplerShaderProgram) program2D).mTexMatrixLoc, 1, false, fArr2, 0);
            GLUtils.checkGlErrorOrThrow("glUniformMatrix4fv");
        }
        GLES20.glDrawArrays(5, 0, 4);
        GLUtils.checkGlErrorOrThrow("glDrawArrays");
        GLES20.glReadPixels(0, 0, rotateSize.getWidth(), rotateSize.getHeight(), 6408, 5121, allocateDirect);
        GLUtils.checkGlErrorOrThrow("glReadPixels");
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glDeleteTextures(1, new int[]{i2}, 0);
        GLUtils.checkGlErrorOrThrow("glDeleteTextures");
        GLES20.glDeleteFramebuffers(1, new int[]{i3}, 0);
        GLUtils.checkGlErrorOrThrow("glDeleteFramebuffers");
        int i4 = openGlRenderer.mExternalTextureId;
        GLES20.glActiveTexture(33984);
        GLUtils.checkGlErrorOrThrow("glActiveTexture");
        GLES20.glBindTexture(36197, i4);
        GLUtils.checkGlErrorOrThrow("glBindTexture");
        Bitmap createBitmap = Bitmap.createBitmap(rotateSize.getWidth(), rotateSize.getHeight(), Bitmap.Config.ARGB_8888);
        allocateDirect.rewind();
        ImageProcessingUtil.copyByteBufferToBitmap(createBitmap, allocateDirect, rotateSize.getWidth() * 4);
        return createBitmap;
    }

    public final void initGlRenderer(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            executeSafely(new Processor$$ExternalSyntheticLambda1(this, dynamicRange, callbackToFutureAdapter$Completer), new CaptureNode$1$$ExternalSyntheticLambda0(3));
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
        if (this.mIsReleaseRequested.get()) {
            return;
        }
        surfaceTexture.updateTexImage();
        float[] fArr = this.mTextureMatrix;
        surfaceTexture.getTransformMatrix(fArr);
        Triple triple = null;
        for (Map.Entry entry : this.mOutputSurfaces.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutputImpl surfaceOutputImpl = (SurfaceOutputImpl) entry.getKey();
            float[] fArr2 = surfaceOutputImpl.mAdditionalTransform;
            float[] fArr3 = this.mSurfaceOutputMatrix;
            Matrix.multiplyMM(fArr3, 0, fArr, 0, fArr2, 0);
            int i = surfaceOutputImpl.mFormat;
            if (i == 34) {
                try {
                    this.mGlRenderer.render(surfaceTexture.getTimestamp(), fArr3, surface);
                } catch (RuntimeException e) {
                    Utf8.SafeProcessor.e("DefaultSurfaceProcessor", "Failed to render with OpenGL.", e);
                }
            } else {
                RelationUtil.checkState("Unsupported format: " + i, i == 256);
                RelationUtil.checkState("Only one JPEG output is supported.", triple == null);
                triple = new Triple(surface, surfaceOutputImpl.mSize, (float[]) fArr3.clone());
            }
        }
        try {
            takeSnapshotAndDrawJpeg(triple);
        } catch (RuntimeException e2) {
            failAllPendingSnapshots(e2);
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void onInputSurface(SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
        } else {
            executeSafely(new CameraX$$ExternalSyntheticLambda2(22, this, surfaceRequest), new SurfaceRequest$$ExternalSyntheticLambda1(surfaceRequest, 1));
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void onOutputSurface(SurfaceOutputImpl surfaceOutputImpl) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutputImpl.close();
            return;
        }
        CameraX$$ExternalSyntheticLambda2 cameraX$$ExternalSyntheticLambda2 = new CameraX$$ExternalSyntheticLambda2(21, this, surfaceOutputImpl);
        Objects.requireNonNull(surfaceOutputImpl);
        executeSafely(cameraX$$ExternalSyntheticLambda2, new Preview$$ExternalSyntheticLambda0(12, surfaceOutputImpl));
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public final void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely(new Preview$$ExternalSyntheticLambda0(13, this), new CaptureNode$1$$ExternalSyntheticLambda0(3));
    }

    public final void takeSnapshotAndDrawJpeg(Triple triple) {
        ArrayList arrayList = this.mPendingSnapshots;
        if (arrayList.isEmpty()) {
            return;
        }
        if (triple == null) {
            failAllPendingSnapshots(new Exception("Failed to snapshot: no JPEG Surface."));
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Iterator it = arrayList.iterator();
                if (!it.hasNext()) {
                    byteArrayOutputStream.close();
                    return;
                }
                ((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) it.next()).getClass();
                Bitmap bitmap = getBitmap((Size) triple.second, (float[]) triple.third, 0);
                byteArrayOutputStream.reset();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Surface surface = (Surface) triple.first;
                Objects.requireNonNull(byteArray);
                ImageProcessingUtil.writeJpegBytesToSurface(byteArray, surface);
                throw null;
            } finally {
            }
        } catch (IOException e) {
            failAllPendingSnapshots(e);
        }
    }
}
