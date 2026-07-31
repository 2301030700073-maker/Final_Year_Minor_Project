package androidx.compose.ui.draw;

import android.util.Size;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageAnalysisAbstractAnalyzer;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.ImageAnalysisConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeAnalyzer;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawResult {
    public Function1 block;

    public List getUseCases() {
        QrCodeAnalyzer qrCodeAnalyzer = new QrCodeAnalyzer(this.block);
        ResolutionSelector resolutionSelector = new ResolutionSelector(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY, new ResolutionStrategy(new Size(1920, 1080)), null);
        int i = 4;
        Preview.Builder builder = new Preview.Builder(4);
        builder.mMutableConfig.insertOption(ImageAnalysisConfig.OPTION_IMAGE_QUEUE_DEPTH, 1);
        builder.mMutableConfig.insertOption(ImageAnalysisConfig.OPTION_OUTPUT_IMAGE_FORMAT, 1);
        builder.mMutableConfig.insertOption(ImageAnalysisConfig.OPTION_BACKPRESSURE_STRATEGY, 0);
        builder.mMutableConfig.insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
        ImageAnalysisConfig imageAnalysisConfig = new ImageAnalysisConfig(OptionsBundle.from(builder.mMutableConfig));
        ImageOutputConfig.CC.validateConfig(imageAnalysisConfig);
        ImageAnalysis imageAnalysis = new ImageAnalysis(imageAnalysisConfig);
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        synchronized (imageAnalysis.mAnalysisLock) {
            try {
                ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = imageAnalysis.mImageAnalysisAbstractAnalyzer;
                if (imageAnalysisAbstractAnalyzer != null) {
                    imageAnalysisAbstractAnalyzer.setAnalyzer(newSingleThreadExecutor, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i, qrCodeAnalyzer));
                }
                if (imageAnalysis.mSubscribedAnalyzer == null) {
                    imageAnalysis.notifyActive();
                }
                imageAnalysis.mSubscribedAnalyzerExecutor = newSingleThreadExecutor;
                imageAnalysis.mSubscribedAnalyzer = qrCodeAnalyzer;
            } catch (Throwable th) {
                throw th;
            }
        }
        return IntOffsetKt.listOf(imageAnalysis);
    }
}
