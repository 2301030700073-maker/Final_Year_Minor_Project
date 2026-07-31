package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageAnalysisConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.internal.compat.quirk.OnePixelShiftQuirk;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeAnalyzer;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageAnalysis extends UseCase {
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    public final Object mAnalysisLock;
    public SessionConfig.CloseableErrorListener mCloseableErrorListener;
    public SurfaceRequest.AnonymousClass2 mDeferrableSurface;
    public ImageAnalysisAbstractAnalyzer mImageAnalysisAbstractAnalyzer;
    public Matrix mSensorToBufferTransformMatrix;
    public SessionConfig.Builder mSessionConfigBuilder;
    public QrCodeAnalyzer mSubscribedAnalyzer;
    public ExecutorService mSubscribedAnalyzerExecutor;
    public Rect mViewPortCropRect;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Analyzer {
        void analyze(SettableImageProxy settableImageProxy);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface BackpressureStrategy {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Defaults {
        public static final ImageAnalysisConfig DEFAULT_CONFIG;

        static {
            Object size = new Size(640, 480);
            Object resolutionSelector = new ResolutionSelector(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY, new ResolutionStrategy(SizeUtil.RESOLUTION_VGA), null);
            Preview.Builder builder = new Preview.Builder(4);
            AutoValue_Config_Option autoValue_Config_Option = ImageOutputConfig.OPTION_DEFAULT_RESOLUTION;
            MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
            mutableOptionsBundle.insertOption(autoValue_Config_Option, size);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, 1);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, 0);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            DynamicRange dynamicRange = DynamicRange.SDR;
            if (!dynamicRange.equals(dynamicRange)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("ImageAnalysis currently only supports SDR");
            } else {
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
                DEFAULT_CONFIG = new ImageAnalysisConfig(OptionsBundle.from(mutableOptionsBundle));
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputImageFormat {
    }

    public ImageAnalysis(ImageAnalysisConfig imageAnalysisConfig) {
        super(imageAnalysisConfig);
        this.mAnalysisLock = new Object();
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0128, code lost:
    
        if (r14.equals((java.lang.Boolean) r7) != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0131 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.SessionConfig.Builder createPipeline(androidx.camera.core.impl.ImageAnalysisConfig r18, androidx.camera.core.impl.AutoValue_StreamSpec r19) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageAnalysis.createPipeline(androidx.camera.core.impl.ImageAnalysisConfig, androidx.camera.core.impl.AutoValue_StreamSpec):androidx.camera.core.impl.SessionConfig$Builder");
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        DEFAULT_CONFIG.getClass();
        ImageAnalysisConfig imageAnalysisConfig = Defaults.DEFAULT_CONFIG;
        imageAnalysisConfig.getClass();
        Config config = useCaseConfigFactory.getConfig(Config.CC.$default$getCaptureType(imageAnalysisConfig), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, imageAnalysisConfig);
        }
        if (config == null) {
            return null;
        }
        return new ImageAnalysisConfig(OptionsBundle.from(((Preview.Builder) getUseCaseConfigBuilder(config)).mMutableConfig));
    }

    public final int getOutputImageFormat() {
        Object retrieveOption;
        ImageAnalysisConfig imageAnalysisConfig = (ImageAnalysisConfig) this.mCurrentConfig;
        imageAnalysisConfig.getClass();
        retrieveOption = imageAnalysisConfig.getConfig().retrieveOption(ImageAnalysisConfig.OPTION_OUTPUT_IMAGE_FORMAT, 1);
        return ((Integer) retrieveOption).intValue();
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return new Preview.Builder(MutableOptionsBundle.from(config), 4);
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        synchronized (this.mAnalysisLock) {
        }
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        TooltipPopup builder = this.mAttachedStreamSpec.toBuilder();
        builder.mTmpAnchorPos = config;
        return builder.build();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecUpdated(AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        Utf8.SafeProcessor.d("ImageAnalysis", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + autoValue_StreamSpec + ", secondaryStreamSpec " + autoValue_StreamSpec2);
        ImageAnalysisConfig imageAnalysisConfig = (ImageAnalysisConfig) this.mCurrentConfig;
        getCameraId();
        SessionConfig.Builder createPipeline = createPipeline(imageAnalysisConfig, autoValue_StreamSpec);
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        return autoValue_StreamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void onUnbind() {
        Validate.checkMainThread();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        SurfaceRequest.AnonymousClass2 anonymousClass2 = this.mDeferrableSurface;
        if (anonymousClass2 != null) {
            anonymousClass2.close();
            this.mDeferrableSurface = null;
        }
        synchronized (this.mAnalysisLock) {
            ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = this.mImageAnalysisAbstractAnalyzer;
            imageAnalysisAbstractAnalyzer.mIsAttached = false;
            imageAnalysisAbstractAnalyzer.clearCache();
            this.mImageAnalysisAbstractAnalyzer = null;
        }
    }

    public final void recreateImageAnalysisAbstractAnalyzer() {
        Object retrieveOption;
        Object retrieveOption2;
        QrCodeAnalyzer qrCodeAnalyzer;
        synchronized (this.mAnalysisLock) {
            try {
                ImageAnalysisConfig imageAnalysisConfig = (ImageAnalysisConfig) this.mCurrentConfig;
                if (((Integer) ((OptionsBundle) imageAnalysisConfig.getConfig()).retrieveOption(ImageAnalysisConfig.OPTION_BACKPRESSURE_STRATEGY, 0)).intValue() == 1) {
                    this.mImageAnalysisAbstractAnalyzer = new ImageAnalysisBlockingAnalyzer();
                } else {
                    this.mImageAnalysisAbstractAnalyzer = new ImageAnalysisNonBlockingAnalyzer((Executor) imageAnalysisConfig.retrieveOption(ThreadConfig.OPTION_BACKGROUND_EXECUTOR, Util.highPriorityExecutor()));
                }
                this.mImageAnalysisAbstractAnalyzer.mOutputImageFormat = getOutputImageFormat();
                ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = this.mImageAnalysisAbstractAnalyzer;
                ImageAnalysisConfig imageAnalysisConfig2 = (ImageAnalysisConfig) this.mCurrentConfig;
                Boolean bool = Boolean.FALSE;
                imageAnalysisConfig2.getClass();
                retrieveOption = imageAnalysisConfig2.getConfig().retrieveOption(ImageAnalysisConfig.OPTION_OUTPUT_IMAGE_ROTATION_ENABLED, bool);
                imageAnalysisAbstractAnalyzer.mOutputImageRotationEnabled = ((Boolean) retrieveOption).booleanValue();
                CameraInternal camera = getCamera();
                ImageAnalysisConfig imageAnalysisConfig3 = (ImageAnalysisConfig) this.mCurrentConfig;
                imageAnalysisConfig3.getClass();
                retrieveOption2 = imageAnalysisConfig3.getConfig().retrieveOption(ImageAnalysisConfig.OPTION_ONE_PIXEL_SHIFT_ENABLED, null);
                Boolean bool2 = (Boolean) retrieveOption2;
                boolean contains = camera != null ? camera.getCameraInfoInternal().getCameraQuirks().contains(OnePixelShiftQuirk.class) : false;
                ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer2 = this.mImageAnalysisAbstractAnalyzer;
                if (bool2 != null) {
                    contains = bool2.booleanValue();
                }
                imageAnalysisAbstractAnalyzer2.mOnePixelShiftEnabled = contains;
                if (camera != null) {
                    this.mImageAnalysisAbstractAnalyzer.mRelativeRotation = getRelativeRotation(camera, false);
                }
                Rect rect = this.mViewPortCropRect;
                if (rect != null) {
                    this.mImageAnalysisAbstractAnalyzer.setViewPortCropRect(rect);
                }
                Matrix matrix = this.mSensorToBufferTransformMatrix;
                if (matrix != null) {
                    this.mImageAnalysisAbstractAnalyzer.setSensorToBufferTransformMatrix(matrix);
                }
                ExecutorService executorService = this.mSubscribedAnalyzerExecutor;
                if (executorService != null && (qrCodeAnalyzer = this.mSubscribedAnalyzer) != null) {
                    this.mImageAnalysisAbstractAnalyzer.setAnalyzer(executorService, qrCodeAnalyzer);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void setSensorToBufferTransformMatrix(Matrix matrix) {
        super.setSensorToBufferTransformMatrix(matrix);
        synchronized (this.mAnalysisLock) {
            try {
                ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = this.mImageAnalysisAbstractAnalyzer;
                if (imageAnalysisAbstractAnalyzer != null) {
                    imageAnalysisAbstractAnalyzer.setSensorToBufferTransformMatrix(matrix);
                }
                this.mSensorToBufferTransformMatrix = matrix;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void setViewPortCropRect(Rect rect) {
        super.mViewPortCropRect = rect;
        synchronized (this.mAnalysisLock) {
            try {
                ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = this.mImageAnalysisAbstractAnalyzer;
                if (imageAnalysisAbstractAnalyzer != null) {
                    imageAnalysisAbstractAnalyzer.setViewPortCropRect(rect);
                }
                this.mViewPortCropRect = rect;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        return "ImageAnalysis:".concat(getName());
    }

    public final void tryUpdateRelativeRotation() {
        synchronized (this.mAnalysisLock) {
            try {
                CameraInternal camera = getCamera();
                if (camera != null) {
                    this.mImageAnalysisAbstractAnalyzer.mRelativeRotation = getRelativeRotation(camera, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
