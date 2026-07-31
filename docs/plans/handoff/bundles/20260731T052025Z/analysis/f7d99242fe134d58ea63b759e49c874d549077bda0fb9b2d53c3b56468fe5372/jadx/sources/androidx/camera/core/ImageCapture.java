package androidx.camera.core;

import android.util.Log;
import android.util.Pair;
import androidx.appcompat.widget.TooltipPopup;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.Preview;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.ImageFormatFeature;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.ScreenFlashWrapper;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.transition.Transition;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Dispatcher;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageCapture extends UseCase {
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    public final int mCaptureMode;
    public SessionConfig.CloseableErrorListener mCloseableErrorListener;
    public final int mFlashMode;
    public final Transition.AnonymousClass1 mImageCaptureControl;
    public Dispatcher mImagePipeline;
    public final AtomicReference mLockedFlashMode;
    public final ScreenFlashWrapper mScreenFlashWrapper;
    public SessionConfig.Builder mSessionConfigBuilder;
    public TakePictureManagerImpl mTakePictureManager;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Defaults {
        public static final ImageCaptureConfig DEFAULT_CONFIG;

        static {
            StreamUseCase streamUseCase = StreamUseCase.STILL_CAPTURE;
            ResolutionSelector resolutionSelector = new ResolutionSelector(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY, ResolutionStrategy.HIGHEST_AVAILABLE_STRATEGY, null);
            Preview.Builder builder = new Preview.Builder(5);
            AutoValue_Config_Option autoValue_Config_Option = UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY;
            MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
            mutableOptionsBundle.insertOption(autoValue_Config_Option, 4);
            mutableOptionsBundle.insertOption(UseCaseConfig.OPTION_STREAM_USE_CASE, streamUseCase);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, 0);
            mutableOptionsBundle.insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            mutableOptionsBundle.insertOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT, 0);
            mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.SDR);
            DEFAULT_CONFIG = new ImageCaptureConfig(OptionsBundle.from(mutableOptionsBundle));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ScreenFlash {
        void clear();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ScreenFlashListener {
        void onCompleted();
    }

    public ImageCapture(ImageCaptureConfig imageCaptureConfig) {
        super(imageCaptureConfig);
        Object retrieveOption;
        this.mLockedFlashMode = new AtomicReference(null);
        this.mFlashMode = -1;
        this.mImageCaptureControl = new Transition.AnonymousClass1(this);
        ImageCaptureConfig imageCaptureConfig2 = (ImageCaptureConfig) this.mCurrentConfig;
        AutoValue_Config_Option autoValue_Config_Option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        if (imageCaptureConfig2.containsOption(autoValue_Config_Option)) {
            retrieveOption = imageCaptureConfig2.getConfig().retrieveOption(autoValue_Config_Option);
            this.mCaptureMode = ((Integer) retrieveOption).intValue();
        } else {
            this.mCaptureMode = 1;
        }
        ((Integer) ((OptionsBundle) imageCaptureConfig2.getConfig()).retrieveOption(ImageCaptureConfig.OPTION_FLASH_TYPE, 0)).getClass();
        this.mScreenFlashWrapper = new ScreenFlashWrapper((ScreenFlash) ((OptionsBundle) imageCaptureConfig2.getConfig()).retrieveOption(ImageCaptureConfig.OPTION_SCREEN_FLASH, null));
    }

    public static boolean isImageFormatSupported(int i, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Integer) ((Pair) it.next()).first).equals(Integer.valueOf(i))) {
                return true;
            }
        }
        return false;
    }

    public final void clearPipeline(boolean z) {
        TakePictureManagerImpl takePictureManagerImpl;
        Log.d("ImageCapture", "clearPipeline");
        Validate.checkMainThread();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        Dispatcher dispatcher = this.mImagePipeline;
        if (dispatcher != null) {
            dispatcher.close();
            this.mImagePipeline = null;
        }
        if (!z && (takePictureManagerImpl = this.mTakePictureManager) != null) {
            takePictureManagerImpl.abortRequests();
            this.mTakePictureManager = null;
        }
        getCameraControl().clearZslConfig();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.SessionConfig.Builder createPipeline(java.lang.String r17, androidx.camera.core.impl.ImageCaptureConfig r18, androidx.camera.core.impl.AutoValue_StreamSpec r19) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.ImageCapture.createPipeline(java.lang.String, androidx.camera.core.impl.ImageCaptureConfig, androidx.camera.core.impl.AutoValue_StreamSpec):androidx.camera.core.impl.SessionConfig$Builder");
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        DEFAULT_CONFIG.getClass();
        ImageCaptureConfig imageCaptureConfig = Defaults.DEFAULT_CONFIG;
        imageCaptureConfig.getClass();
        Config config = useCaseConfigFactory.getConfig(Config.CC.$default$getCaptureType(imageCaptureConfig), this.mCaptureMode);
        if (z) {
            config = Config.CC.mergeConfigs(config, imageCaptureConfig);
        }
        if (config == null) {
            return null;
        }
        return new ImageCaptureConfig(OptionsBundle.from(((Preview.Builder) getUseCaseConfigBuilder(config)).mMutableConfig));
    }

    public final int getFlashMode() {
        int i;
        Object retrieveOption;
        synchronized (this.mLockedFlashMode) {
            i = this.mFlashMode;
            if (i == -1) {
                ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) this.mCurrentConfig;
                imageCaptureConfig.getClass();
                retrieveOption = imageCaptureConfig.getConfig().retrieveOption(ImageCaptureConfig.OPTION_FLASH_MODE, 2);
                i = ((Integer) retrieveOption).intValue();
            }
        }
        return i;
    }

    @Override // androidx.camera.core.UseCase
    public final Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(4);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return new Preview.Builder(MutableOptionsBundle.from(config), 5);
    }

    @Override // androidx.camera.core.UseCase
    public final boolean isAutoRotationSupported() {
        return true;
    }

    @Override // androidx.camera.core.UseCase
    public final void onBind() {
        RelationUtil.checkNotNull(getCamera(), "Attached camera cannot be null");
        if (getFlashMode() == 3) {
            CameraInternal camera = getCamera();
            if ((camera != null ? camera.getCameraInfo().getLensFacing() : -1) == 0) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("Not a front camera despite setting FLASH_MODE_SCREEN in ImageCapture");
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void onCameraControlReady() {
        Utf8.SafeProcessor.d("ImageCapture", "onCameraControlReady");
        synchronized (this.mLockedFlashMode) {
            try {
                if (this.mLockedFlashMode.get() == null) {
                    getCameraControl().setFlashMode(getFlashMode());
                }
            } finally {
            }
        }
        getCameraControl().setScreenFlash(this.mScreenFlashWrapper);
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        HashSet<GroupableFeature> hashSet = this.mFeatureGroup;
        boolean z = false;
        if (hashSet != null) {
            int i = 0;
            for (GroupableFeature groupableFeature : hashSet) {
                if (groupableFeature instanceof ImageFormatFeature) {
                    i = ((ImageFormatFeature) groupableFeature).imageCaptureOutputFormat;
                }
            }
            builder.getMutableConfig().insertOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT, Integer.valueOf(i));
        }
        if (cameraInfoInternal.getCameraQuirks().contains(SoftwareJpegEncodingPreferredQuirk.class)) {
            Boolean bool = Boolean.FALSE;
            MutableOptionsBundle mutableConfig = builder.getMutableConfig();
            AutoValue_Config_Option autoValue_Config_Option = ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER;
            Boolean bool2 = Boolean.TRUE;
            if (bool.equals(mutableConfig.retrieveOption(autoValue_Config_Option, bool2))) {
                Utf8.SafeProcessor.w("ImageCapture", "Device quirk suggests software JPEG encoder, but it has been explicitly disabled.");
            } else {
                Utf8.SafeProcessor.i("ImageCapture", "Requesting software JPEG due to device quirk.");
                builder.getMutableConfig().insertOption(autoValue_Config_Option, bool2);
            }
        }
        MutableOptionsBundle mutableConfig2 = builder.getMutableConfig();
        Boolean bool3 = Boolean.TRUE;
        AutoValue_Config_Option autoValue_Config_Option2 = ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER;
        Boolean bool4 = Boolean.FALSE;
        if (bool3.equals(mutableConfig2.retrieveOption(autoValue_Config_Option2, bool4))) {
            if (getCamera() != null) {
                ((BiometricPrompt) getCamera().getExtendedConfig()).getSessionProcessor();
            }
            Integer num = (Integer) mutableConfig2.retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num == null || num.intValue() == 256) {
                z = true;
            } else {
                Utf8.SafeProcessor.w("ImageCapture", "Software JPEG cannot be used with non-JPEG output buffer format.");
            }
            if (!z) {
                Utf8.SafeProcessor.w("ImageCapture", "Unable to support software JPEG. Disabling.");
                mutableConfig2.insertOption(autoValue_Config_Option2, bool4);
            }
        }
        Integer num2 = (Integer) builder.getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
        if (num2 != null) {
            if (getCamera() != null) {
                ((BiometricPrompt) getCamera().getExtendedConfig()).getSessionProcessor();
            }
            builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, Integer.valueOf(z ? 35 : num2.intValue()));
        } else {
            MutableOptionsBundle mutableConfig3 = builder.getMutableConfig();
            AutoValue_Config_Option autoValue_Config_Option3 = ImageCaptureConfig.OPTION_OUTPUT_FORMAT;
            if (Objects.equals(mutableConfig3.retrieveOption(autoValue_Config_Option3, null), 2)) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 32);
            } else if (Objects.equals(builder.getMutableConfig().retrieveOption(autoValue_Config_Option3, null), 3)) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 32);
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_SECONDARY_INPUT_FORMAT, 256);
            } else if (Objects.equals(builder.getMutableConfig().retrieveOption(autoValue_Config_Option3, null), 1)) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 4101);
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
            } else if (z) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 35);
            } else {
                List list = (List) builder.getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, null);
                if (list == null) {
                    builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
                } else if (isImageFormatSupported(256, list)) {
                    builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
                } else if (isImageFormatSupported(35, list)) {
                    builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 35);
                }
            }
        }
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public final void onSessionStop() {
        ScreenFlashWrapper screenFlashWrapper = this.mScreenFlashWrapper;
        screenFlashWrapper.completePendingScreenFlashListener();
        screenFlashWrapper.completePendingScreenFlashClear();
        TakePictureManagerImpl takePictureManagerImpl = this.mTakePictureManager;
        if (takePictureManagerImpl != null) {
            takePictureManagerImpl.abortRequests();
        }
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
        Utf8.SafeProcessor.d("ImageCapture", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + autoValue_StreamSpec + ", secondaryStreamSpec " + autoValue_StreamSpec2);
        SessionConfig.Builder createPipeline = createPipeline(getCameraId(), (ImageCaptureConfig) this.mCurrentConfig, autoValue_StreamSpec);
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        notifyActive();
        return autoValue_StreamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void onUnbind() {
        ScreenFlashWrapper screenFlashWrapper = this.mScreenFlashWrapper;
        screenFlashWrapper.completePendingScreenFlashListener();
        screenFlashWrapper.completePendingScreenFlashClear();
        TakePictureManagerImpl takePictureManagerImpl = this.mTakePictureManager;
        if (takePictureManagerImpl != null) {
            takePictureManagerImpl.abortRequests();
        }
        clearPipeline(false);
        getCameraControl().setScreenFlash(null);
    }

    public final String toString() {
        return "ImageCapture:".concat(getName());
    }
}
