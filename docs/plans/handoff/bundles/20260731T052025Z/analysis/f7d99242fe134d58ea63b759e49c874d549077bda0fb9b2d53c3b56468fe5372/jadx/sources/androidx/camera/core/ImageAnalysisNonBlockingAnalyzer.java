package androidx.camera.core;

import androidx.biometric.BiometricPrompt;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.core.app.ActivityRecreator;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageAnalysisNonBlockingAnalyzer extends ImageAnalysisAbstractAnalyzer {
    public final Executor mBackgroundExecutor;
    public ImageProxy mCachedImage;
    public final Object mLock = new Object();
    public SingleCloseImageProxy mPostedImage;

    public ImageAnalysisNonBlockingAnalyzer(Executor executor) {
        this.mBackgroundExecutor = executor;
    }

    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final ImageProxy acquireImage(ImageReaderProxy imageReaderProxy) {
        return imageReaderProxy.acquireLatestImage();
    }

    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final void clearCache() {
        synchronized (this.mLock) {
            try {
                ImageProxy imageProxy = this.mCachedImage;
                if (imageProxy != null) {
                    imageProxy.close();
                    this.mCachedImage = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final void onValidImageAvailable(ImageProxy imageProxy) {
        synchronized (this.mLock) {
            try {
                if (!this.mIsAttached) {
                    imageProxy.close();
                    return;
                }
                if (this.mPostedImage != null) {
                    if (imageProxy.getImageInfo().getTimestamp() <= this.mPostedImage.mImage.getImageInfo().getTimestamp()) {
                        imageProxy.close();
                    } else {
                        ImageProxy imageProxy2 = this.mCachedImage;
                        if (imageProxy2 != null) {
                            imageProxy2.close();
                        }
                        this.mCachedImage = imageProxy;
                    }
                    return;
                }
                SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxy, this);
                this.mPostedImage = singleCloseImageProxy;
                ListenableFuture analyzeImage = analyzeImage(singleCloseImageProxy);
                BiometricPrompt biometricPrompt = new BiometricPrompt(23, singleCloseImageProxy);
                analyzeImage.addListener(new ActivityRecreator.AnonymousClass1(1, analyzeImage, biometricPrompt), Util.directExecutor());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
