package androidx.camera.core;

import androidx.biometric.BiometricPrompt;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.core.app.ActivityRecreator;
import com.google.common.util.concurrent.ListenableFuture;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageAnalysisBlockingAnalyzer extends ImageAnalysisAbstractAnalyzer {
    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final ImageProxy acquireImage(ImageReaderProxy imageReaderProxy) {
        return imageReaderProxy.acquireNextImage();
    }

    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final void onValidImageAvailable(ImageProxy imageProxy) {
        ListenableFuture analyzeImage = analyzeImage(imageProxy);
        BiometricPrompt biometricPrompt = new BiometricPrompt(22, imageProxy);
        analyzeImage.addListener(new ActivityRecreator.AnonymousClass1(1, analyzeImage, biometricPrompt), Util.directExecutor());
    }

    @Override // androidx.camera.core.ImageAnalysisAbstractAnalyzer
    public final void clearCache() {
    }
}
