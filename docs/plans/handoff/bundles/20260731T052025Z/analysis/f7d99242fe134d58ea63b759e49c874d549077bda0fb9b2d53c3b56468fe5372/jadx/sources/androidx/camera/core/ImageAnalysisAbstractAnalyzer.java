package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ImageWriter;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.SchemaInfoUtilKt;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import okhttp3.internal.connection.RouteSelector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImageAnalysisAbstractAnalyzer implements ImageReaderProxy.OnImageAvailableListener {
    public ByteBuffer mNV21UVDelegatedBuffer;
    public ByteBuffer mNV21YDelegatedBuffer;
    public volatile boolean mOnePixelShiftEnabled;
    public volatile boolean mOutputImageRotationEnabled;
    public volatile int mPrevBufferRotationDegrees;
    public RouteSelector mProcessedImageReaderProxy;
    public ImageWriter mProcessedImageWriter;
    public ByteBuffer mRGBConvertedBuffer;
    public volatile int mRelativeRotation;
    public ImageAnalysis.Analyzer mSubscribedAnalyzer;
    public ByteBuffer mURotatedBuffer;
    public Executor mUserExecutor;
    public ByteBuffer mVRotatedBuffer;
    public ByteBuffer mYRotatedBuffer;
    public volatile int mOutputImageFormat = 1;
    public Rect mOriginalViewPortCropRect = new Rect();
    public Rect mUpdatedViewPortCropRect = new Rect();
    public Matrix mOriginalSensorToBufferTransformMatrix = new Matrix();
    public Matrix mUpdatedSensorToBufferTransformMatrix = new Matrix();
    public final Object mAnalyzerLock = new Object();
    public boolean mIsAttached = true;

    public abstract ImageProxy acquireImage(ImageReaderProxy imageReaderProxy);

    /* JADX WARN: Can't wrap try/catch for region: R(7:(5:6|7|(1:100)(1:11)|(1:13)|14)|(6:(11:16|(1:18)|19|20|21|22|23|24|25|26|27)|23|24|25|26|27)|98|19|20|21|22) */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0121, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0122, code lost:
    
        r14 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture analyzeImage(final androidx.camera.core.ImageProxy r18) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageAnalysisAbstractAnalyzer.analyzeImage(androidx.camera.core.ImageProxy):com.google.common.util.concurrent.ListenableFuture");
    }

    public abstract void clearCache();

    public final void createHelperBuffer(ImageProxy imageProxy) {
        if (this.mOutputImageFormat != 1 && this.mOutputImageFormat != 3) {
            if (this.mOutputImageFormat == 2 && this.mRGBConvertedBuffer == null) {
                this.mRGBConvertedBuffer = ByteBuffer.allocateDirect(imageProxy.getHeight() * imageProxy.getWidth() * 4);
                return;
            }
            return;
        }
        if (this.mYRotatedBuffer == null) {
            this.mYRotatedBuffer = ByteBuffer.allocateDirect(imageProxy.getHeight() * imageProxy.getWidth());
        }
        this.mYRotatedBuffer.position(0);
        if (this.mURotatedBuffer == null) {
            this.mURotatedBuffer = ByteBuffer.allocateDirect((imageProxy.getHeight() * imageProxy.getWidth()) / 4);
        }
        this.mURotatedBuffer.position(0);
        if (this.mVRotatedBuffer == null) {
            this.mVRotatedBuffer = ByteBuffer.allocateDirect((imageProxy.getHeight() * imageProxy.getWidth()) / 4);
        }
        this.mVRotatedBuffer.position(0);
        if (this.mOutputImageFormat == 3) {
            if (this.mNV21YDelegatedBuffer == null) {
                this.mNV21YDelegatedBuffer = ByteBuffer.allocateDirect(imageProxy.getHeight() * imageProxy.getWidth());
            }
            this.mNV21YDelegatedBuffer.position(0);
            if (this.mNV21UVDelegatedBuffer == null) {
                this.mNV21UVDelegatedBuffer = ByteBuffer.allocateDirect((imageProxy.getHeight() * imageProxy.getWidth()) / 2);
            }
            this.mNV21UVDelegatedBuffer.position(0);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy acquireImage = acquireImage(imageReaderProxy);
            if (acquireImage != null) {
                onValidImageAvailable(acquireImage);
            }
        } catch (IllegalStateException e) {
            Utf8.SafeProcessor.e("ImageAnalysisAnalyzer", "Failed to acquire image.", e);
        }
    }

    public abstract void onValidImageAvailable(ImageProxy imageProxy);

    public final void recalculateTransformMatrixAndCropRect(int i, int i2, int i3, int i4) {
        int i5 = this.mRelativeRotation;
        Matrix matrix = new Matrix();
        if (i5 > 0) {
            RectF rectF = new RectF(0.0f, 0.0f, i, i2);
            RectF rectF2 = TransformUtils.NORMALIZED_RECT;
            Matrix.ScaleToFit scaleToFit = Matrix.ScaleToFit.FILL;
            matrix.setRectToRect(rectF, rectF2, scaleToFit);
            matrix.postRotate(i5);
            RectF rectF3 = new RectF(0.0f, 0.0f, i3, i4);
            Matrix matrix2 = new Matrix();
            matrix2.setRectToRect(rectF2, rectF3, scaleToFit);
            matrix.postConcat(matrix2);
        }
        RectF rectF4 = new RectF(this.mOriginalViewPortCropRect);
        matrix.mapRect(rectF4);
        Rect rect = new Rect();
        rectF4.round(rect);
        this.mUpdatedViewPortCropRect = rect;
        this.mUpdatedSensorToBufferTransformMatrix.setConcat(this.mOriginalSensorToBufferTransformMatrix, matrix);
    }

    public final void recreateImageReaderProxy(ImageProxy imageProxy, int i) {
        RouteSelector routeSelector = this.mProcessedImageReaderProxy;
        if (routeSelector == null) {
            return;
        }
        routeSelector.safeClose();
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        int imageFormat = this.mProcessedImageReaderProxy.getImageFormat();
        int maxImages = this.mProcessedImageReaderProxy.getMaxImages();
        boolean z = i == 90 || i == 270;
        int i2 = z ? height : width;
        if (!z) {
            width = height;
        }
        this.mProcessedImageReaderProxy = new RouteSelector(SchemaInfoUtilKt.createIsolatedReader(i2, width, imageFormat, maxImages));
        if (this.mOutputImageFormat == 1) {
            ImageWriter imageWriter = this.mProcessedImageWriter;
            if (imageWriter != null) {
                imageWriter.close();
            }
            this.mProcessedImageWriter = ImageWriter.newInstance(this.mProcessedImageReaderProxy.getSurface(), this.mProcessedImageReaderProxy.getMaxImages());
        }
    }

    public final void setAnalyzer(ExecutorService executorService, ImageAnalysis.Analyzer analyzer) {
        if (analyzer == null) {
            clearCache();
        }
        synchronized (this.mAnalyzerLock) {
            this.mSubscribedAnalyzer = analyzer;
            this.mUserExecutor = executorService;
        }
    }

    public final void setProcessedImageReaderProxy(RouteSelector routeSelector) {
        synchronized (this.mAnalyzerLock) {
            this.mProcessedImageReaderProxy = routeSelector;
        }
    }

    public final void setSensorToBufferTransformMatrix(Matrix matrix) {
        synchronized (this.mAnalyzerLock) {
            this.mOriginalSensorToBufferTransformMatrix = matrix;
            this.mUpdatedSensorToBufferTransformMatrix = new Matrix(this.mOriginalSensorToBufferTransformMatrix);
        }
    }

    public final void setViewPortCropRect(Rect rect) {
        synchronized (this.mAnalyzerLock) {
            this.mOriginalViewPortCropRect = rect;
            this.mUpdatedViewPortCropRect = new Rect(this.mOriginalViewPortCropRect);
        }
    }
}
