package androidx.camera.core.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.appcompat.app.ActionBar;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.AdapterCameraControl;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AdapterCameraInternal;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.cardview.widget.CardView;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraUseCaseAdapter implements Camera {
    public final CameraConfig mCameraConfig;
    public final CameraCoordinatorAdapter mCameraCoordinator;
    public final CameraIdentifier mCameraIdentifier;
    public final AdapterCameraInternal mCameraInternal;
    public final SurfaceRequest.AnonymousClass1 mCompositionSettings;
    public UseCase mPlaceholderForExtensions;
    public final AdapterCameraInternal mSecondaryCameraInternal;
    public final SurfaceRequest.AnonymousClass1 mSecondaryCompositionSettings;
    public StreamSharing mStreamSharing;
    public final CardView.AnonymousClass1 mStreamSpecsCalculator;
    public final UseCaseConfigFactory mUseCaseConfigFactory;
    public final ArrayList mAppUseCases = new ArrayList();
    public final ArrayList mCameraUseCases = new ArrayList();
    public List mEffects = Collections.EMPTY_LIST;
    public Range mFrameRate = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
    public final Object mLock = new Object();
    public boolean mAttached = true;
    public Config mInteropConfig = null;
    public final CardView.AnonymousClass1 mStreamSharingForceEnabler = new CardView.AnonymousClass1(15);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CameraException extends Exception {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConfigPair {
        public UseCaseConfig mCameraConfig;
        public UseCaseConfig mExtendedConfig;
    }

    public CameraUseCaseAdapter(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, SurfaceRequest.AnonymousClass1 anonymousClass1, SurfaceRequest.AnonymousClass1 anonymousClass12, CameraCoordinatorAdapter cameraCoordinatorAdapter, CardView.AnonymousClass1 anonymousClass13, UseCaseConfigFactory useCaseConfigFactory) {
        this.mCameraConfig = adapterCameraInfo.mCameraConfig;
        this.mCameraInternal = new AdapterCameraInternal(cameraInternal, adapterCameraInfo);
        if (cameraInternal2 == null || adapterCameraInfo2 == null) {
            this.mSecondaryCameraInternal = null;
        } else {
            this.mSecondaryCameraInternal = new AdapterCameraInternal(cameraInternal2, adapterCameraInfo2);
        }
        this.mCompositionSettings = anonymousClass1;
        this.mSecondaryCompositionSettings = anonymousClass12;
        this.mCameraCoordinator = cameraCoordinatorAdapter;
        this.mUseCaseConfigFactory = useCaseConfigFactory;
        this.mCameraIdentifier = ActionBar.fromAdapterInfos(adapterCameraInfo, adapterCameraInfo2);
        this.mStreamSpecsCalculator = anonymousClass13;
    }

    public static HashMap applyFeatureGroup(LinkedHashSet linkedHashSet, ResolvedFeatureGroup resolvedFeatureGroup) {
        HashMap hashMap = new HashMap();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            hashMap.put(useCase, useCase.mFeatureGroup);
            HashSet hashSet = null;
            LinkedHashSet linkedHashSet2 = resolvedFeatureGroup != null ? resolvedFeatureGroup.features : null;
            if (linkedHashSet2 != null) {
                hashSet = new HashSet(linkedHashSet2);
            }
            useCase.mFeatureGroup = hashSet;
        }
        return hashMap;
    }

    public static Matrix calculateSensorToBufferTransformMatrix(Rect rect, Size size) {
        RelationUtil.checkArgument("Cannot compute viewport crop rects zero sized sensor rect.", rect.width() > 0 && rect.height() > 0);
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(0.0f, 0.0f, size.getWidth(), size.getHeight()), rectF, Matrix.ScaleToFit.CENTER);
        matrix.invert(matrix);
        return matrix;
    }

    public static ImageCapture createExtraImageCapture() {
        Preview.Builder builder = new Preview.Builder(5);
        AutoValue_Config_Option autoValue_Config_Option = TargetConfig.OPTION_TARGET_NAME;
        MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
        mutableOptionsBundle.insertOption(autoValue_Config_Option, "ImageCapture-Extra");
        Integer num = (Integer) mutableOptionsBundle.retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
        if (num != null) {
            mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, num);
        } else {
            ImageCapture.Defaults defaults = ImageCapture.DEFAULT_CONFIG;
            AutoValue_Config_Option autoValue_Config_Option2 = ImageCaptureConfig.OPTION_OUTPUT_FORMAT;
            if (Objects.equals(mutableOptionsBundle.retrieveOption(autoValue_Config_Option2, null), 2)) {
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 32);
            } else if (Objects.equals(mutableOptionsBundle.retrieveOption(autoValue_Config_Option2, null), 3)) {
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 32);
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_SECONDARY_INPUT_FORMAT, 256);
            } else if (Objects.equals(mutableOptionsBundle.retrieveOption(autoValue_Config_Option2, null), 1)) {
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 4101);
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
            } else {
                mutableOptionsBundle.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
            }
        }
        ImageCaptureConfig imageCaptureConfig = new ImageCaptureConfig(OptionsBundle.from(mutableOptionsBundle));
        ImageOutputConfig.CC.validateConfig(imageCaptureConfig);
        ImageCapture imageCapture = new ImageCapture(imageCaptureConfig);
        Size size = (Size) mutableOptionsBundle.retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, null);
        if (size != null) {
            new Rational(size.getWidth(), size.getHeight());
        }
        RelationUtil.checkNotNull((Executor) mutableOptionsBundle.retrieveOption(IoConfig.OPTION_IO_EXECUTOR, Util.ioExecutor()), "The IO executor can't be null");
        AutoValue_Config_Option autoValue_Config_Option3 = ImageCaptureConfig.OPTION_FLASH_MODE;
        if (mutableOptionsBundle.mOptions.containsKey(autoValue_Config_Option3)) {
            Integer num2 = (Integer) mutableOptionsBundle.retrieveOption(autoValue_Config_Option3);
            if (num2 == null || !(num2.intValue() == 0 || num2.intValue() == 1 || num2.intValue() == 3 || num2.intValue() == 2)) {
                Regex$$ExternalSyntheticBUOutline0.m$2(num2, "The flash mode is not allowed to set: ");
                return null;
            }
            if (num2.intValue() == 3 && mutableOptionsBundle.retrieveOption(ImageCaptureConfig.OPTION_SCREEN_FLASH, null) == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("A ScreenFlash instance is required for FLASH_MODE_SCREEN but was not found. If value from PreviewView.getScreenFlash() is set to ImageCapture.setScreenFlash(), ensure PreviewView.setScreenFlashWindow() is invoked first.");
                return null;
            }
        }
        return imageCapture;
    }

    public static HashMap getConfigs(ArrayList arrayList, UseCaseConfigFactory useCaseConfigFactory, UseCaseConfigFactory useCaseConfigFactory2, Range range) {
        UseCaseConfig defaultConfig;
        HashMap hashMap = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase instanceof StreamSharing) {
                StreamSharing streamSharing = (StreamSharing) useCase;
                PreviewConfig previewConfig = new PreviewConfig(OptionsBundle.from(new Preview.Builder(0).mMutableConfig));
                ImageOutputConfig.CC.validateConfig(previewConfig);
                Preview preview = new Preview(previewConfig);
                preview.mSurfaceProviderExecutor = Preview.DEFAULT_SURFACE_PROVIDER_EXECUTOR;
                UseCaseConfig defaultConfig2 = preview.getDefaultConfig(false, useCaseConfigFactory);
                if (defaultConfig2 == null) {
                    defaultConfig = null;
                } else {
                    MutableOptionsBundle from = MutableOptionsBundle.from((Config) defaultConfig2);
                    from.removeOption(TargetConfig.OPTION_TARGET_CLASS);
                    defaultConfig = ((Preview.Builder) streamSharing.getUseCaseConfigBuilder(from)).getUseCaseConfig();
                }
            } else {
                defaultConfig = useCase.getDefaultConfig(false, useCaseConfigFactory);
            }
            UseCaseConfig defaultConfig3 = useCase.getDefaultConfig(true, useCaseConfigFactory2);
            MutableOptionsBundle from2 = defaultConfig3 != null ? MutableOptionsBundle.from((Config) defaultConfig3) : MutableOptionsBundle.create();
            from2.insertOption(UseCaseConfig.OPTION_SESSION_TYPE, 0);
            if (!AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED.equals(range)) {
                from2.insertOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, Config.OptionPriority.HIGH_PRIORITY_REQUIRED, range);
                from2.insertOption(UseCaseConfig.OPTION_IS_STRICT_FRAME_RATE_REQUIRED, Boolean.TRUE);
            }
            UseCaseConfig useCaseConfig = useCase.getUseCaseConfigBuilder(from2).getUseCaseConfig();
            ConfigPair configPair = new ConfigPair();
            configPair.mExtendedConfig = defaultConfig;
            configPair.mCameraConfig = useCaseConfig;
            hashMap.put(useCase, configPair);
        }
        return hashMap;
    }

    public static void restoreFeatureGroup(HashMap hashMap) {
        HashSet hashSet;
        for (Map.Entry entry : hashMap.entrySet()) {
            UseCase useCase = (UseCase) entry.getKey();
            Set set = (Set) entry.getValue();
            if (set != null) {
                useCase.getClass();
                hashSet = new HashSet(set);
            } else {
                hashSet = null;
            }
            useCase.mFeatureGroup = hashSet;
        }
    }

    public static ArrayList setEffectsOnUseCases(ArrayList arrayList, List list) {
        ArrayList arrayList2 = new ArrayList(list);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).getClass();
            Iterator it2 = list.iterator();
            if (it2.hasNext()) {
                throw Config.CC.m(it2);
            }
        }
        return arrayList2;
    }

    public final void addUseCases(Collection collection, ResolvedFeatureGroup resolvedFeatureGroup) {
        Utf8.SafeProcessor.d("CameraUseCaseAdapter", "addUseCases: appUseCasesToAdd = " + collection + ", featureGroup = " + resolvedFeatureGroup);
        synchronized (this.mLock) {
            try {
                AdapterCameraInternal adapterCameraInternal = this.mCameraInternal;
                CameraConfig cameraConfig = this.mCameraConfig;
                adapterCameraInternal.setExtendedConfig(cameraConfig);
                AdapterCameraInternal adapterCameraInternal2 = this.mSecondaryCameraInternal;
                if (adapterCameraInternal2 != null) {
                    adapterCameraInternal2.setExtendedConfig(cameraConfig);
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(this.mAppUseCases);
                linkedHashSet.addAll(collection);
                HashMap applyFeatureGroup = applyFeatureGroup(linkedHashSet, resolvedFeatureGroup);
                try {
                    applyCalculatedUseCaseChanges(calculateAndValidateUseCases(linkedHashSet, this.mSecondaryCameraInternal != null));
                } catch (IllegalArgumentException e) {
                    restoreFeatureGroup(applyFeatureGroup);
                    throw new CameraException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void applyCalculatedUseCaseChanges(CalculatedUseCaseInfo calculatedUseCaseInfo) {
        Map map = calculatedUseCaseInfo.primaryStreamSpecResult.streamSpecs;
        ArrayList arrayList = calculatedUseCaseInfo.cameraUseCases;
        synchronized (this.mLock) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    UseCase useCase = (UseCase) it.next();
                    Rect sensorRect = this.mCameraInternal.mAdapterCameraInfo.mCameraInfoInternal.getSensorRect();
                    AutoValue_StreamSpec autoValue_StreamSpec = (AutoValue_StreamSpec) map.get(useCase);
                    autoValue_StreamSpec.getClass();
                    useCase.setSensorToBufferTransformMatrix(calculateSensorToBufferTransformMatrix(sensorRect, autoValue_StreamSpec.resolution));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        List list = this.mEffects;
        ArrayList arrayList2 = calculatedUseCaseInfo.cameraUseCases;
        LinkedHashSet linkedHashSet = calculatedUseCaseInfo.appUseCases;
        ArrayList effectsOnUseCases = setEffectsOnUseCases(arrayList2, list);
        ArrayList arrayList3 = new ArrayList(linkedHashSet);
        arrayList3.removeAll(arrayList2);
        ArrayList effectsOnUseCases2 = setEffectsOnUseCases(arrayList3, effectsOnUseCases);
        if (!effectsOnUseCases2.isEmpty()) {
            Utf8.SafeProcessor.w("CameraUseCaseAdapter", "Unused effects: " + effectsOnUseCases2);
        }
        Iterator it2 = calculatedUseCaseInfo.cameraUseCasesToDetach.iterator();
        while (it2.hasNext()) {
            ((UseCase) it2.next()).unbindFromCamera(this.mCameraInternal);
        }
        this.mCameraInternal.detachUseCases(calculatedUseCaseInfo.cameraUseCasesToDetach);
        if (this.mSecondaryCameraInternal != null) {
            Iterator it3 = calculatedUseCaseInfo.cameraUseCasesToDetach.iterator();
            while (it3.hasNext()) {
                UseCase useCase2 = (UseCase) it3.next();
                AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                Objects.requireNonNull(adapterCameraInternal);
                useCase2.unbindFromCamera(adapterCameraInternal);
            }
            AdapterCameraInternal adapterCameraInternal2 = this.mSecondaryCameraInternal;
            Objects.requireNonNull(adapterCameraInternal2);
            adapterCameraInternal2.detachUseCases(calculatedUseCaseInfo.cameraUseCasesToDetach);
        }
        if (calculatedUseCaseInfo.cameraUseCasesToDetach.isEmpty()) {
            Iterator it4 = calculatedUseCaseInfo.cameraUseCasesToKeep.iterator();
            while (it4.hasNext()) {
                UseCase useCase3 = (UseCase) it4.next();
                Map map2 = calculatedUseCaseInfo.primaryStreamSpecResult.streamSpecs;
                if (map2.containsKey(useCase3)) {
                    AutoValue_StreamSpec autoValue_StreamSpec2 = (AutoValue_StreamSpec) map2.get(useCase3);
                    Objects.requireNonNull(autoValue_StreamSpec2);
                    Config config = autoValue_StreamSpec2.implementationOptions;
                    if (config != null) {
                        SessionConfig sessionConfig = useCase3.mAttachedSessionConfig;
                        OptionsBundle optionsBundle = sessionConfig.mRepeatingCaptureConfig.mImplementationOptions;
                        Objects.requireNonNull(config);
                        if (config.listOptions().size() == sessionConfig.mRepeatingCaptureConfig.mImplementationOptions.listOptions().size()) {
                            for (AutoValue_Config_Option autoValue_Config_Option : config.listOptions()) {
                                if (optionsBundle.mOptions.containsKey(autoValue_Config_Option) && Objects.equals(optionsBundle.retrieveOption(autoValue_Config_Option), config.retrieveOption(autoValue_Config_Option))) {
                                }
                            }
                        }
                        useCase3.mAttachedStreamSpec = useCase3.onSuggestedStreamSpecImplementationOptionsUpdated(config);
                        if (this.mAttached) {
                            this.mCameraInternal.onUseCaseUpdated(useCase3);
                            AdapterCameraInternal adapterCameraInternal3 = this.mSecondaryCameraInternal;
                            if (adapterCameraInternal3 != null) {
                                adapterCameraInternal3.onUseCaseUpdated(useCase3);
                            }
                        }
                    }
                }
            }
        }
        Iterator it5 = calculatedUseCaseInfo.cameraUseCasesToAttach.iterator();
        while (it5.hasNext()) {
            UseCase useCase4 = (UseCase) it5.next();
            ConfigPair configPair = (ConfigPair) calculatedUseCaseInfo.useCaseConfigs.get(useCase4);
            Objects.requireNonNull(configPair);
            AdapterCameraInternal adapterCameraInternal4 = this.mSecondaryCameraInternal;
            AdapterCameraInternal adapterCameraInternal5 = this.mCameraInternal;
            UseCaseConfig useCaseConfig = configPair.mExtendedConfig;
            if (adapterCameraInternal4 != null) {
                useCase4.bindToCamera(adapterCameraInternal5, adapterCameraInternal4, useCaseConfig, configPair.mCameraConfig);
                AutoValue_StreamSpec autoValue_StreamSpec3 = (AutoValue_StreamSpec) calculatedUseCaseInfo.primaryStreamSpecResult.streamSpecs.get(useCase4);
                autoValue_StreamSpec3.getClass();
                StreamSpecQueryResult streamSpecQueryResult = calculatedUseCaseInfo.secondaryStreamSpecResult;
                streamSpecQueryResult.getClass();
                useCase4.updateSuggestedStreamSpec(autoValue_StreamSpec3, (AutoValue_StreamSpec) streamSpecQueryResult.streamSpecs.get(useCase4));
            } else {
                useCase4.bindToCamera(adapterCameraInternal5, null, useCaseConfig, configPair.mCameraConfig);
                AutoValue_StreamSpec autoValue_StreamSpec4 = (AutoValue_StreamSpec) calculatedUseCaseInfo.primaryStreamSpecResult.streamSpecs.get(useCase4);
                autoValue_StreamSpec4.getClass();
                useCase4.updateSuggestedStreamSpec(autoValue_StreamSpec4, null);
            }
        }
        if (this.mAttached) {
            this.mCameraInternal.attachUseCases(calculatedUseCaseInfo.cameraUseCasesToAttach);
            AdapterCameraInternal adapterCameraInternal6 = this.mSecondaryCameraInternal;
            if (adapterCameraInternal6 != null) {
                adapterCameraInternal6.attachUseCases(calculatedUseCaseInfo.cameraUseCasesToAttach);
            }
        }
        Iterator it6 = calculatedUseCaseInfo.cameraUseCasesToAttach.iterator();
        while (it6.hasNext()) {
            ((UseCase) it6.next()).notifyState();
        }
        this.mAppUseCases.clear();
        this.mAppUseCases.addAll(calculatedUseCaseInfo.appUseCases);
        this.mCameraUseCases.clear();
        this.mCameraUseCases.addAll(calculatedUseCaseInfo.cameraUseCases);
        this.mPlaceholderForExtensions = calculatedUseCaseInfo.placeholderForExtensions;
        this.mStreamSharing = calculatedUseCaseInfo.streamSharing;
    }

    public final void attachUseCases() {
        synchronized (this.mLock) {
            try {
                if (!this.mAttached) {
                    if (!this.mCameraUseCases.isEmpty()) {
                        this.mCameraInternal.setExtendedConfig(this.mCameraConfig);
                        AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                        if (adapterCameraInternal != null) {
                            adapterCameraInternal.setExtendedConfig(this.mCameraConfig);
                        }
                    }
                    this.mCameraInternal.attachUseCases(this.mCameraUseCases);
                    AdapterCameraInternal adapterCameraInternal2 = this.mSecondaryCameraInternal;
                    if (adapterCameraInternal2 != null) {
                        adapterCameraInternal2.attachUseCases(this.mCameraUseCases);
                    }
                    restoreInteropConfig();
                    Iterator it = this.mCameraUseCases.iterator();
                    while (it.hasNext()) {
                        ((UseCase) it.next()).notifyState();
                    }
                    this.mAttached = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void cacheInteropConfig() {
        synchronized (this.mLock) {
            AdapterCameraControl adapterCameraControl = this.mCameraInternal.mAdapterCameraControl;
            this.mInteropConfig = adapterCameraControl.mCameraControlInternal.getInteropConfig();
            adapterCameraControl.clearInteropConfig();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
    
        throw new java.lang.IllegalArgumentException("Ultra HDR image and Raw capture does not support for use with CameraEffect.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0163, code lost:
    
        return calculateAndValidateUseCases(r19, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015d, code lost:
    
        if (r3 != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.internal.CalculatedUseCaseInfo calculateAndValidateUseCases(java.util.LinkedHashSet r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.internal.CameraUseCaseAdapter.calculateAndValidateUseCases(java.util.LinkedHashSet, boolean):androidx.camera.core.internal.CalculatedUseCaseInfo");
    }

    public final UseCase calculatePlaceholderForExtensions(LinkedHashSet linkedHashSet, StreamSharing streamSharing) {
        UseCase useCase;
        synchronized (this.mLock) {
            try {
                ArrayList arrayList = new ArrayList(linkedHashSet);
                if (streamSharing != null) {
                    arrayList.add(streamSharing);
                    arrayList.removeAll(streamSharing.mVirtualCameraAdapter.mChildren);
                }
                if (isCoexistingPreviewImageCaptureRequired()) {
                    Iterator it = arrayList.iterator();
                    boolean z = false;
                    boolean z2 = false;
                    boolean z3 = false;
                    while (it.hasNext()) {
                        UseCase useCase2 = (UseCase) it.next();
                        if (!(useCase2 instanceof Preview) && !(useCase2 instanceof StreamSharing)) {
                            if (useCase2 instanceof ImageCapture) {
                                z2 = true;
                            }
                        }
                        z3 = true;
                    }
                    if (!z2 || z3) {
                        Iterator it2 = arrayList.iterator();
                        boolean z4 = false;
                        while (it2.hasNext()) {
                            UseCase useCase3 = (UseCase) it2.next();
                            if (!(useCase3 instanceof Preview) && !(useCase3 instanceof StreamSharing)) {
                                if (useCase3 instanceof ImageCapture) {
                                    z4 = true;
                                }
                            }
                            z = true;
                        }
                        if (z && !z4) {
                            UseCase useCase4 = this.mPlaceholderForExtensions;
                            useCase = useCase4 instanceof ImageCapture ? useCase4 : createExtraImageCapture();
                        }
                    } else {
                        UseCase useCase5 = this.mPlaceholderForExtensions;
                        if (!(useCase5 instanceof Preview)) {
                            Preview.Builder builder = new Preview.Builder(0);
                            builder.mMutableConfig.insertOption(TargetConfig.OPTION_TARGET_NAME, "Preview-Extra");
                            PreviewConfig previewConfig = new PreviewConfig(OptionsBundle.from(builder.mMutableConfig));
                            ImageOutputConfig.CC.validateConfig(previewConfig);
                            Preview preview = new Preview(previewConfig);
                            preview.mSurfaceProviderExecutor = Preview.DEFAULT_SURFACE_PROVIDER_EXECUTOR;
                            preview.setSurfaceProvider(new ZslControlImpl$$ExternalSyntheticLambda1());
                            useCase = preview;
                        }
                    }
                }
                useCase = null;
            } finally {
            }
        }
        return useCase;
    }

    public final StreamSharing createOrReuseStreamSharing(LinkedHashSet linkedHashSet, boolean z) {
        boolean z2;
        synchronized (this.mLock) {
            try {
                HashSet streamSharingChildren = getStreamSharingChildren(linkedHashSet, z);
                if (streamSharingChildren.size() < 2) {
                    hasExtension();
                    return null;
                }
                StreamSharing streamSharing = this.mStreamSharing;
                if (streamSharing != null && streamSharing.mVirtualCameraAdapter.mChildren.equals(streamSharingChildren)) {
                    StreamSharing streamSharing2 = this.mStreamSharing;
                    streamSharing2.getClass();
                    HashSet hashSet = ((UseCase) streamSharingChildren.iterator().next()).mFeatureGroup;
                    streamSharing2.mFeatureGroup = hashSet != null ? new HashSet(hashSet) : null;
                    StreamSharing streamSharing3 = this.mStreamSharing;
                    Objects.requireNonNull(streamSharing3);
                    return streamSharing3;
                }
                int[] iArr = {1, 2, 4};
                HashSet hashSet2 = new HashSet();
                Iterator it = streamSharingChildren.iterator();
                while (it.hasNext()) {
                    UseCase useCase = (UseCase) it.next();
                    for (int i = 0; i < 3; i++) {
                        int i2 = iArr[i];
                        Iterator it2 = useCase.getSupportedEffectTargets().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z2 = false;
                                break;
                            }
                            int intValue = ((Integer) it2.next()).intValue();
                            if ((i2 & intValue) == intValue) {
                                z2 = true;
                                break;
                            }
                        }
                        if (z2) {
                            if (hashSet2.contains(Integer.valueOf(i2))) {
                                return null;
                            }
                            hashSet2.add(Integer.valueOf(i2));
                        }
                    }
                }
                return new StreamSharing(this.mCameraInternal, this.mSecondaryCameraInternal, this.mCompositionSettings, this.mSecondaryCompositionSettings, streamSharingChildren, this.mUseCaseConfigFactory);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void detachUseCases() {
        synchronized (this.mLock) {
            try {
                if (this.mAttached) {
                    this.mCameraInternal.detachUseCases(new ArrayList(this.mCameraUseCases));
                    AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                    if (adapterCameraInternal != null) {
                        adapterCameraInternal.detachUseCases(new ArrayList(this.mCameraUseCases));
                    }
                    cacheInteropConfig();
                    this.mAttached = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.Camera
    public final CameraInfo getCameraInfo() {
        throw null;
    }

    public final int getCameraMode() {
        synchronized (this.mLock) {
            try {
                return this.mCameraCoordinator.getCameraOperatingMode() == 2 ? 1 : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HashSet getStreamSharingChildren(LinkedHashSet linkedHashSet, boolean z) {
        int i;
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            Iterator it = this.mEffects.iterator();
            if (it.hasNext()) {
                if (it.next() == null) {
                    throw null;
                }
                throw new ClassCastException();
            }
            i = z ? 3 : 0;
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            UseCase useCase = (UseCase) it2.next();
            RelationUtil.checkArgument("Only support one level of sharing for now.", !(useCase instanceof StreamSharing));
            Iterator it3 = useCase.getSupportedEffectTargets().iterator();
            while (true) {
                if (it3.hasNext()) {
                    int intValue = ((Integer) it3.next()).intValue();
                    if ((i & intValue) == intValue) {
                        hashSet.add(useCase);
                        break;
                    }
                }
            }
        }
        return hashSet;
    }

    public final List getUseCases() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mAppUseCases);
        }
        return arrayList;
    }

    public final void hasExtension() {
        synchronized (this.mLock) {
            ((BiometricPrompt) this.mCameraConfig).getSessionProcessor();
        }
    }

    public final boolean isCoexistingPreviewImageCaptureRequired() {
        Object retrieveOption;
        boolean z;
        synchronized (this.mLock) {
            BiometricPrompt biometricPrompt = (BiometricPrompt) this.mCameraConfig;
            biometricPrompt.getClass();
            int i = CameraConfig.CC.$r8$clinit;
            retrieveOption = biometricPrompt.getConfig().retrieveOption(CameraConfig.OPTION_USE_CASE_COMBINATION_REQUIRED_RULE, 0);
            z = ((Integer) retrieveOption).intValue() == 1;
        }
        return z;
    }

    public final void removeUseCases(ArrayList arrayList) {
        synchronized (this.mLock) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((UseCase) it.next()).mFeatureGroup = null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.mAppUseCases);
            linkedHashSet.removeAll(arrayList);
            applyCalculatedUseCaseChanges(calculateAndValidateUseCases(linkedHashSet, this.mSecondaryCameraInternal != null));
        }
    }

    public final void restoreInteropConfig() {
        synchronized (this.mLock) {
            try {
                Config config = this.mInteropConfig;
                if (config != null) {
                    this.mCameraInternal.mAdapterCameraControl.addInteropConfig(config);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setEffects(List list) {
        synchronized (this.mLock) {
            this.mEffects = list;
        }
    }

    public final void setFrameRate(Range range) {
        synchronized (this.mLock) {
            this.mFrameRate = range;
        }
    }

    public final void setSessionType() {
        synchronized (this.mLock) {
        }
    }

    public final void setViewPort() {
        synchronized (this.mLock) {
        }
    }
}
