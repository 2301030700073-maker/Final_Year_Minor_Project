package androidx.camera.core.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.InputConfiguration;
import android.media.MediaCodec;
import android.util.ArrayMap;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk;
import androidx.camera.camera2.compat.workaround.PreviewPixelHDRnetKt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Preview;
import androidx.camera.core.Preview$$ExternalSyntheticLambda2;
import androidx.camera.core.internal.compat.quirk.SurfaceOrderQuirk;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.MutableBoolean;
import com.fsck.k9.mailstore.LocalStore;
import com.tokenautocomplete.TokenCompleteTextView$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SessionConfig {
    public static final List SUPPORTED_TEMPLATE_PRIORITY = Arrays.asList(1, 5, 3);
    public final List mDeviceStateCallbacks;
    public final ErrorListener mErrorListener;
    public final InputConfiguration mInputConfiguration;
    public final ArrayList mOutputConfigs;
    public final AutoValue_SessionConfig_OutputConfig mPostviewOutputConfig;
    public final CaptureConfig mRepeatingCaptureConfig;
    public final List mSessionStateCallbacks;
    public final int mSessionType;
    public final List mSingleCameraCaptureCallbacks;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class BaseBuilder {
        public CloseableErrorListener mErrorListener;
        public InputConfiguration mInputConfiguration;
        public AutoValue_SessionConfig_OutputConfig mPostviewOutputConfig;
        public final LinkedHashSet mOutputConfigs = new LinkedHashSet();
        public final RawField mCaptureConfigBuilder = new RawField();
        public final ArrayList mDeviceStateCallbacks = new ArrayList();
        public final ArrayList mSessionStateCallbacks = new ArrayList();
        public final ArrayList mSingleCameraCaptureCallbacks = new ArrayList();
        public int mSessionType = 0;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder extends BaseBuilder {
        public static Builder createFrom(UseCaseConfig useCaseConfig, Size size) {
            if (useCaseConfig.getSessionOptionUnpacker() == null) {
                StreamSharing$$ExternalSyntheticLambda0.m(useCaseConfig.getTargetName(useCaseConfig.toString()), "Implementation is missing option unpacker for ");
                return null;
            }
            Builder builder = new Builder();
            size.getClass();
            SessionConfig defaultSessionConfig$1 = useCaseConfig.getDefaultSessionConfig$1();
            OptionsBundle optionsBundle = OptionsBundle.EMPTY_BUNDLE;
            optionsBundle.getClass();
            int i = SessionConfig.defaultEmptySessionConfig().mRepeatingCaptureConfig.mTemplateType;
            ArrayList arrayList = builder.mSessionStateCallbacks;
            ArrayList arrayList2 = builder.mDeviceStateCallbacks;
            RawField rawField = builder.mCaptureConfigBuilder;
            if (defaultSessionConfig$1 != null) {
                CaptureConfig captureConfig = defaultSessionConfig$1.mRepeatingCaptureConfig;
                i = captureConfig.mTemplateType;
                for (CameraDevice.StateCallback stateCallback : defaultSessionConfig$1.mDeviceStateCallbacks) {
                    if (!arrayList2.contains(stateCallback)) {
                        arrayList2.add(stateCallback);
                    }
                }
                for (CameraCaptureSession.StateCallback stateCallback2 : defaultSessionConfig$1.mSessionStateCallbacks) {
                    if (!arrayList.contains(stateCallback2)) {
                        arrayList.add(stateCallback2);
                    }
                }
                rawField.addAllCameraCaptureCallbacks(captureConfig.mCameraCaptureCallbacks);
                optionsBundle = captureConfig.mImplementationOptions;
            }
            rawField.getClass();
            rawField.name = MutableOptionsBundle.from((Config) optionsBundle);
            if (useCaseConfig instanceof PreviewConfig) {
                Rational rational = PreviewPixelHDRnetKt.ASPECT_RATIO_16_9;
                if (((PreviewPixelHDRnetQuirk) DeviceQuirks.getAll().get(PreviewPixelHDRnetQuirk.class)) != null && !Intrinsics.areEqual(PreviewPixelHDRnetKt.ASPECT_RATIO_16_9, new Rational(size.getWidth(), size.getHeight()))) {
                    MutableOptionsBundle create = MutableOptionsBundle.create();
                    CaptureRequest.Key key = CaptureRequest.TONEMAP_MODE;
                    key.getClass();
                    create.insertOption(Data.Companion.createCaptureRequestOption(key), 2);
                    rawField.addImplementationOptions(new Camera2ImplConfig(OptionsBundle.from(create)));
                }
            }
            new Camera2ImplConfig(useCaseConfig);
            Object retrieveOption = useCaseConfig.retrieveOption(Camera2ImplConfig.TEMPLATE_TYPE_OPTION, Integer.valueOf(i));
            retrieveOption.getClass();
            rawField.delimiterIdx = ((Number) retrieveOption).intValue();
            CameraDevice.StateCallback stateCallback3 = (CameraDevice.StateCallback) useCaseConfig.retrieveOption(Camera2ImplConfig.DEVICE_STATE_CALLBACK_OPTION, null);
            if (stateCallback3 != null && !arrayList2.contains(stateCallback3)) {
                arrayList2.add(stateCallback3);
            }
            CameraCaptureSession.StateCallback stateCallback4 = (CameraCaptureSession.StateCallback) useCaseConfig.retrieveOption(Camera2ImplConfig.SESSION_STATE_CALLBACK_OPTION, null);
            if (stateCallback4 != null && !arrayList.contains(stateCallback4)) {
                arrayList.add(stateCallback4);
            }
            CameraCaptureSession.CaptureCallback captureCallback = (CameraCaptureSession.CaptureCallback) useCaseConfig.retrieveOption(Camera2ImplConfig.SESSION_CAPTURE_CALLBACK_OPTION, null);
            if (captureCallback != null) {
                CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer = new CameraUseCaseAdapter.CaptureCallbackContainer(captureCallback);
                rawField.addCameraCaptureCallback(captureCallbackContainer);
                ArrayList arrayList3 = builder.mSingleCameraCaptureCallbacks;
                if (!arrayList3.contains(captureCallbackContainer)) {
                    arrayList3.add(captureCallbackContainer);
                }
            }
            int previewStabilizationMode = useCaseConfig.getPreviewStabilizationMode();
            if (previewStabilizationMode != 0) {
                rawField.getClass();
                if (previewStabilizationMode != 0) {
                    ((MutableOptionsBundle) rawField.name).insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(previewStabilizationMode));
                }
            }
            int videoStabilizationMode = useCaseConfig.getVideoStabilizationMode();
            if (videoStabilizationMode != 0) {
                rawField.getClass();
                if (videoStabilizationMode != 0) {
                    ((MutableOptionsBundle) rawField.name).insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, Integer.valueOf(videoStabilizationMode));
                }
            }
            MutableOptionsBundle create2 = MutableOptionsBundle.create();
            AutoValue_Config_Option autoValue_Config_Option = Camera2ImplConfig.SESSION_PHYSICAL_CAMERA_ID_OPTION;
            String str = (String) useCaseConfig.retrieveOption(autoValue_Config_Option, null);
            if (str != null) {
                create2.insertOption(autoValue_Config_Option, str);
            }
            AutoValue_Config_Option autoValue_Config_Option2 = Camera2ImplConfig.STREAM_USE_CASE_OPTION;
            Long l = (Long) useCaseConfig.retrieveOption(autoValue_Config_Option2, null);
            if (l != null) {
                create2.insertOption(autoValue_Config_Option2, Long.valueOf(l.longValue()));
            }
            rawField.addImplementationOptions(create2);
            Preview.Builder builder2 = new Preview.Builder(2);
            useCaseConfig.findOptions(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(0, builder2, useCaseConfig));
            rawField.addImplementationOptions(new BiometricPrompt(OptionsBundle.from(builder2.mMutableConfig)));
            return builder;
        }

        public final void addImplementationOptions(Config config) {
            this.mCaptureConfigBuilder.addImplementationOptions(config);
        }

        public final void addSurface(DeferrableSurface deferrableSurface, DynamicRange dynamicRange, int i) {
            LocalStore.AnonymousClass7 builder = AutoValue_SessionConfig_OutputConfig.builder(deferrableSurface);
            if (dynamicRange == null) {
                Regex$$ExternalSyntheticBUOutline0.m("Null dynamicRange");
                return;
            }
            builder.this$0 = dynamicRange;
            builder.val$folder = Integer.valueOf(i);
            this.mOutputConfigs.add(builder.build());
            ((HashSet) this.mCaptureConfigBuilder.raw).add(deferrableSurface);
        }

        public final SessionConfig build() {
            return new SessionConfig(new ArrayList(this.mOutputConfigs), new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), this.mCaptureConfigBuilder.build(), this.mErrorListener, this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CloseableErrorListener implements ErrorListener {
        public final ErrorListener mErrorListener;
        public final AtomicBoolean mIsClosed = new AtomicBoolean(false);

        public CloseableErrorListener(ErrorListener errorListener) {
            this.mErrorListener = errorListener;
        }

        public final void close() {
            this.mIsClosed.set(true);
        }

        @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
        public final void onError(SessionConfig sessionConfig) {
            if (this.mIsClosed.get()) {
                return;
            }
            this.mErrorListener.onError(sessionConfig);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ErrorListener {
        void onError(SessionConfig sessionConfig);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ValidatingBuilder extends BaseBuilder {
        public final ArrayList mErrorListeners;
        public final StringBuilder mInvalidReason;
        public final MutableBoolean mSurfaceSorter;
        public boolean mTemplateSet;
        public boolean mValid;

        public ValidatingBuilder() {
            MutableBoolean mutableBoolean = new MutableBoolean();
            mutableBoolean.value = androidx.camera.core.internal.compat.quirk.DeviceQuirks.sQuirks.get(SurfaceOrderQuirk.class) != null;
            this.mSurfaceSorter = mutableBoolean;
            this.mValid = true;
            this.mInvalidReason = new StringBuilder();
            this.mTemplateSet = false;
            this.mErrorListeners = new ArrayList();
        }

        public final void add(SessionConfig sessionConfig) {
            CaptureConfig captureConfig = sessionConfig.mRepeatingCaptureConfig;
            int i = captureConfig.mTemplateType;
            OptionsBundle optionsBundle = captureConfig.mImplementationOptions;
            RawField rawField = this.mCaptureConfigBuilder;
            if (i != -1) {
                this.mTemplateSet = true;
                int i2 = rawField.delimiterIdx;
                List list = SessionConfig.SUPPORTED_TEMPLATE_PRIORITY;
                if (list.indexOf(Integer.valueOf(i)) < list.indexOf(Integer.valueOf(i2))) {
                    i = i2;
                }
                rawField.delimiterIdx = i;
            }
            Range expectedFrameRateRange = captureConfig.getExpectedFrameRateRange();
            Range range = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            boolean equals = expectedFrameRateRange.equals(range);
            StringBuilder sb = this.mInvalidReason;
            if (!equals) {
                MutableOptionsBundle mutableOptionsBundle = (MutableOptionsBundle) rawField.name;
                AutoValue_Config_Option autoValue_Config_Option = CaptureConfig.OPTION_RESOLVED_FRAME_RATE;
                boolean equals2 = ((Range) mutableOptionsBundle.retrieveOption(autoValue_Config_Option, range)).equals(range);
                MutableOptionsBundle mutableOptionsBundle2 = (MutableOptionsBundle) rawField.name;
                if (equals2) {
                    mutableOptionsBundle2.insertOption(autoValue_Config_Option, expectedFrameRateRange);
                } else if (!((Range) mutableOptionsBundle2.retrieveOption(autoValue_Config_Option, range)).equals(expectedFrameRateRange)) {
                    this.mValid = false;
                    String str = "Different ExpectedFrameRateRange values; current = " + ((Range) ((MutableOptionsBundle) rawField.name).retrieveOption(autoValue_Config_Option, range)) + ", new = " + expectedFrameRateRange;
                    Utf8.SafeProcessor.e("ValidatingBuilder", str);
                    sb.append(str);
                }
            }
            AutoValue_Config_Option autoValue_Config_Option2 = UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE;
            Integer num = (Integer) optionsBundle.retrieveOption(autoValue_Config_Option2, 0);
            Objects.requireNonNull(num);
            int intValue = num.intValue();
            if (intValue != 0) {
                rawField.getClass();
                if (intValue != 0) {
                    ((MutableOptionsBundle) rawField.name).insertOption(autoValue_Config_Option2, num);
                }
            }
            AutoValue_Config_Option autoValue_Config_Option3 = UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE;
            Integer num2 = (Integer) optionsBundle.retrieveOption(autoValue_Config_Option3, 0);
            Objects.requireNonNull(num2);
            int intValue2 = num2.intValue();
            if (intValue2 != 0) {
                rawField.getClass();
                if (intValue2 != 0) {
                    ((MutableOptionsBundle) rawField.name).insertOption(autoValue_Config_Option3, num2);
                }
            }
            TagBundle tagBundle = captureConfig.mTagBundle;
            MutableTagBundle mutableTagBundle = (MutableTagBundle) rawField.nameLowerCase;
            HashSet hashSet = (HashSet) rawField.raw;
            mutableTagBundle.mTagMap.putAll((Map) tagBundle.mTagMap);
            this.mDeviceStateCallbacks.addAll(sessionConfig.mDeviceStateCallbacks);
            this.mSessionStateCallbacks.addAll(sessionConfig.mSessionStateCallbacks);
            rawField.addAllCameraCaptureCallbacks(captureConfig.mCameraCaptureCallbacks);
            this.mSingleCameraCaptureCallbacks.addAll(sessionConfig.mSingleCameraCaptureCallbacks);
            ErrorListener errorListener = sessionConfig.mErrorListener;
            if (errorListener != null) {
                this.mErrorListeners.add(errorListener);
            }
            InputConfiguration inputConfiguration = sessionConfig.mInputConfiguration;
            if (inputConfiguration != null) {
                this.mInputConfiguration = inputConfiguration;
            }
            ArrayList arrayList = sessionConfig.mOutputConfigs;
            LinkedHashSet<AutoValue_SessionConfig_OutputConfig> linkedHashSet = this.mOutputConfigs;
            linkedHashSet.addAll(arrayList);
            hashSet.addAll(DesugarCollections.unmodifiableList(captureConfig.mSurfaces));
            ArrayList arrayList2 = new ArrayList();
            for (AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig : linkedHashSet) {
                arrayList2.add(autoValue_SessionConfig_OutputConfig.surface);
                Iterator it = autoValue_SessionConfig_OutputConfig.sharedSurfaces.iterator();
                while (it.hasNext()) {
                    arrayList2.add((DeferrableSurface) it.next());
                }
            }
            if (!arrayList2.containsAll(hashSet)) {
                Utf8.SafeProcessor.d("ValidatingBuilder", "Invalid configuration due to capture request surfaces are not a subset of surfaces");
                this.mValid = false;
                sb.append("Invalid configuration due to capture request surfaces are not a subset of surfaces");
            }
            int i3 = sessionConfig.mSessionType;
            int i4 = this.mSessionType;
            if (i3 != i4 && i3 != 0 && i4 != 0) {
                Utf8.SafeProcessor.d("ValidatingBuilder", "Invalid configuration due to that two non-default session types are set");
                this.mValid = false;
                sb.append("Invalid configuration due to that two non-default session types are set");
            } else if (i3 != 0) {
                this.mSessionType = i3;
            }
            AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig2 = sessionConfig.mPostviewOutputConfig;
            if (autoValue_SessionConfig_OutputConfig2 != null) {
                AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig3 = this.mPostviewOutputConfig;
                if (autoValue_SessionConfig_OutputConfig3 == autoValue_SessionConfig_OutputConfig2 || autoValue_SessionConfig_OutputConfig3 == null) {
                    this.mPostviewOutputConfig = autoValue_SessionConfig_OutputConfig2;
                } else {
                    Utf8.SafeProcessor.d("ValidatingBuilder", "Invalid configuration due to that two different postview output configs are set");
                    this.mValid = false;
                    sb.append("Invalid configuration due to that two different postview output configs are set");
                }
            }
            rawField.addImplementationOptions(optionsBundle);
        }

        public final SessionConfig build() {
            if (!this.mValid) {
                UriKt$$ExternalSyntheticBUOutline0.m("Unsupported session configuration combination");
                return null;
            }
            ArrayList arrayList = new ArrayList(this.mOutputConfigs);
            MutableBoolean mutableBoolean = this.mSurfaceSorter;
            int i = 1;
            if (mutableBoolean.value) {
                Collections.sort(arrayList, new TokenCompleteTextView$$ExternalSyntheticLambda0(i, mutableBoolean));
            }
            int i2 = this.mSessionType;
            int i3 = 2;
            RawField rawField = this.mCaptureConfigBuilder;
            if (i2 == 1) {
                rawField.getClass();
                if (arrayList.size() == 2 && !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DeferrableSurface deferrableSurface = ((AutoValue_SessionConfig_OutputConfig) it.next()).surface;
                        deferrableSurface.getClass();
                        if (Intrinsics.areEqual(deferrableSurface.mContainerClass, MediaCodec.class)) {
                            HashSet hashSet = (HashSet) rawField.raw;
                            hashSet.getClass();
                            if (!hashSet.isEmpty()) {
                                Iterator it2 = hashSet.iterator();
                                while (it2.hasNext()) {
                                    DeferrableSurface deferrableSurface2 = (DeferrableSurface) it2.next();
                                    deferrableSurface2.getClass();
                                    if (Intrinsics.areEqual(deferrableSurface2.mContainerClass, MediaCodec.class)) {
                                        break;
                                    }
                                }
                            }
                            MutableOptionsBundle mutableOptionsBundle = (MutableOptionsBundle) rawField.name;
                            AutoValue_Config_Option autoValue_Config_Option = CaptureConfig.OPTION_RESOLVED_FRAME_RATE;
                            Range range = (Range) mutableOptionsBundle.retrieveOption(autoValue_Config_Option, AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
                            if (range != null) {
                                if (((Number) range.getUpper()).intValue() < 120 || !Intrinsics.areEqual(range.getLower(), range.getUpper())) {
                                    range = null;
                                }
                                if (range != null) {
                                    Range range2 = new Range(30, range.getUpper());
                                    Utf8.SafeProcessor.d("HighSpeedFpsModifier", "Modified high-speed FPS range from " + range + " to " + range2);
                                    ((MutableOptionsBundle) rawField.name).insertOption(autoValue_Config_Option, range2);
                                }
                            }
                        }
                    }
                }
            }
            return new SessionConfig(arrayList, new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), rawField.build(), this.mErrorListeners.isEmpty() ? null : new Preview$$ExternalSyntheticLambda2(i3, this), this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
        }

        public final boolean isValid() {
            return this.mTemplateSet && this.mValid;
        }
    }

    public SessionConfig(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, CaptureConfig captureConfig, ErrorListener errorListener, InputConfiguration inputConfiguration, int i, AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig) {
        this.mOutputConfigs = arrayList;
        this.mDeviceStateCallbacks = DesugarCollections.unmodifiableList(arrayList2);
        this.mSessionStateCallbacks = DesugarCollections.unmodifiableList(arrayList3);
        this.mSingleCameraCaptureCallbacks = DesugarCollections.unmodifiableList(arrayList4);
        this.mErrorListener = errorListener;
        this.mRepeatingCaptureConfig = captureConfig;
        this.mInputConfiguration = inputConfiguration;
        this.mSessionType = i;
        this.mPostviewOutputConfig = autoValue_SessionConfig_OutputConfig;
    }

    public static SessionConfig defaultEmptySessionConfig() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(0);
        ArrayList arrayList3 = new ArrayList(0);
        ArrayList arrayList4 = new ArrayList(0);
        HashSet hashSet = new HashSet();
        MutableOptionsBundle create = MutableOptionsBundle.create();
        ArrayList arrayList5 = new ArrayList();
        MutableTagBundle create2 = MutableTagBundle.create();
        ArrayList arrayList6 = new ArrayList(hashSet);
        OptionsBundle from = OptionsBundle.from(create);
        ArrayList arrayList7 = new ArrayList(arrayList5);
        TagBundle tagBundle = TagBundle.EMPTY_TAGBUNDLE;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = create2.mTagMap;
        for (String str : arrayMap2.keySet()) {
            arrayMap.put(str, arrayMap2.get(str));
        }
        return new SessionConfig(arrayList, arrayList2, arrayList3, arrayList4, new CaptureConfig(arrayList6, from, -1, arrayList7, new TagBundle(arrayMap)), null, null, 0, null);
    }

    public final List getSurfaces() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.mOutputConfigs.iterator();
        while (it.hasNext()) {
            AutoValue_SessionConfig_OutputConfig autoValue_SessionConfig_OutputConfig = (AutoValue_SessionConfig_OutputConfig) it.next();
            arrayList.add(autoValue_SessionConfig_OutputConfig.surface);
            Iterator it2 = autoValue_SessionConfig_OutputConfig.sharedSurfaces.iterator();
            while (it2.hasNext()) {
                arrayList.add((DeferrableSurface) it2.next());
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
