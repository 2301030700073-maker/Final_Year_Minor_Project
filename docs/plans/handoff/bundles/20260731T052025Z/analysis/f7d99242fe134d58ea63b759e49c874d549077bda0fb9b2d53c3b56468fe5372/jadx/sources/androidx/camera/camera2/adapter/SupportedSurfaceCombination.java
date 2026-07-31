package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.MaxPreviewSize;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo;
import androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy;
import androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_VideoProfileProxy;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.AutoValue_SurfaceSizeDefinition;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportedSurfaceCombination {
    public final String cameraId;
    public final CameraMetadata cameraMetadata;
    public final ArrayList concurrentSurfaceCombinations;
    public final DisplayInfoManager displayInfoManager;
    public final LocalFolder.AnonymousClass12 dynamicRangeResolver;
    public final EncoderProfilesProvider encoderProfilesProvider;
    public final FeatureCombinationQuery featureCombinationQuery;
    public final LinkedHashMap featureSettingsToSupportedCombinationsMap;
    public final int hardwareLevel;
    public final HighSpeedResolver highSpeedResolver;
    public final ArrayList highSpeedSurfaceCombinations;
    public final boolean isBurstCaptureSupported;
    public final boolean isConcurrentCameraModeSupported;
    public final boolean isManualSensorSupported;
    public final boolean isPreviewStabilizationSupported;
    public final boolean isRawSupported;
    public final boolean isStreamUseCaseSupported;
    public final boolean isUltraHighResolutionSensorSupported;
    public final ArrayList previewStabilizationSurfaceCombinations;
    public final MaxPreviewSize resolutionCorrector;
    public final StreamConfigurationMapCompat streamConfigurationMapCompat;
    public final ArrayList surfaceCombinations;
    public final ArrayList surfaceCombinations10Bit;
    public final ArrayList surfaceCombinationsStreamUseCase;
    public final ArrayList surfaceCombinationsUltraHdr;
    public AutoValue_SurfaceSizeDefinition surfaceSizeDefinition;
    public final ArrayList surfaceSizeDefinitionFormats;
    public final TargetAspectRatio targetAspectRatio;
    public final ArrayList ultraHighSurfaceCombinations;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BestSizesAndMaxFpsForConfigs {
        public final List bestSizes;
        public final List bestSizesForStreamUseCase;
        public final int maxFpsForAllSizes;
        public final int maxFpsForBestSizes;
        public final int maxFpsForStreamUseCase;

        public BestSizesAndMaxFpsForConfigs(List list, List list2, int i, int i2, int i3) {
            this.bestSizes = list;
            this.bestSizesForStreamUseCase = list2;
            this.maxFpsForBestSizes = i;
            this.maxFpsForStreamUseCase = i2;
            this.maxFpsForAllSizes = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BestSizesAndMaxFpsForConfigs)) {
                return false;
            }
            BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs = (BestSizesAndMaxFpsForConfigs) obj;
            return this.bestSizes.equals(bestSizesAndMaxFpsForConfigs.bestSizes) && Intrinsics.areEqual(this.bestSizesForStreamUseCase, bestSizesAndMaxFpsForConfigs.bestSizesForStreamUseCase) && this.maxFpsForBestSizes == bestSizesAndMaxFpsForConfigs.maxFpsForBestSizes && this.maxFpsForStreamUseCase == bestSizesAndMaxFpsForConfigs.maxFpsForStreamUseCase && this.maxFpsForAllSizes == bestSizesAndMaxFpsForConfigs.maxFpsForAllSizes;
        }

        public final int hashCode() {
            int hashCode = this.bestSizes.hashCode() * 31;
            List list = this.bestSizesForStreamUseCase;
            return ((((((hashCode + (list == null ? 0 : list.hashCode())) * 31) + this.maxFpsForBestSizes) * 31) + this.maxFpsForStreamUseCase) * 31) + this.maxFpsForAllSizes;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BestSizesAndMaxFpsForConfigs(bestSizes=");
            sb.append(this.bestSizes);
            sb.append(", bestSizesForStreamUseCase=");
            sb.append(this.bestSizesForStreamUseCase);
            sb.append(", maxFpsForBestSizes=");
            sb.append(this.maxFpsForBestSizes);
            sb.append(", maxFpsForStreamUseCase=");
            sb.append(this.maxFpsForStreamUseCase);
            sb.append(", maxFpsForAllSizes=");
            return CameraDevices$CC.m(sb, this.maxFpsForAllSizes, ')');
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CheckingMethod {
        public static final /* synthetic */ CheckingMethod[] $VALUES;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT;
        public static final CheckingMethod WITH_FEATURE_COMBO;

        static {
            CheckingMethod checkingMethod = new CheckingMethod("WITHOUT_FEATURE_COMBO", 0);
            WITHOUT_FEATURE_COMBO = checkingMethod;
            CheckingMethod checkingMethod2 = new CheckingMethod("WITH_FEATURE_COMBO", 1);
            WITH_FEATURE_COMBO = checkingMethod2;
            CheckingMethod checkingMethod3 = new CheckingMethod("WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT", 2);
            WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT = checkingMethod3;
            $VALUES = new CheckingMethod[]{checkingMethod, checkingMethod2, checkingMethod3};
        }

        public static CheckingMethod valueOf(String str) {
            return (CheckingMethod) Enum.valueOf(CheckingMethod.class, str);
        }

        public static CheckingMethod[] values() {
            return (CheckingMethod[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FeatureSettings {
        public final int cameraMode;
        public final boolean hasVideoCapture;
        public final boolean isFeatureComboInvocation;
        public final boolean isHighSpeedOn;
        public final boolean isStrictFpsRequired;
        public final boolean isUltraHdrOn;
        public final int requiredMaxBitDepth;
        public final boolean requiresFeatureComboQuery;
        public final Range targetFpsRange;
        public final VideoStabilization videoStabilization;

        public FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6) {
            videoStabilization.getClass();
            range.getClass();
            this.cameraMode = i;
            this.requiredMaxBitDepth = i2;
            this.hasVideoCapture = z;
            this.videoStabilization = videoStabilization;
            this.isUltraHdrOn = z2;
            this.isHighSpeedOn = z3;
            this.isFeatureComboInvocation = z4;
            this.requiresFeatureComboQuery = z5;
            this.targetFpsRange = range;
            this.isStrictFpsRequired = z6;
        }

        public static FeatureSettings copy$default(FeatureSettings featureSettings, boolean z, Range range, int i) {
            int i2 = featureSettings.cameraMode;
            int i3 = featureSettings.requiredMaxBitDepth;
            boolean z2 = featureSettings.hasVideoCapture;
            VideoStabilization videoStabilization = featureSettings.videoStabilization;
            boolean z3 = featureSettings.isUltraHdrOn;
            boolean z4 = featureSettings.isHighSpeedOn;
            boolean z5 = featureSettings.isFeatureComboInvocation;
            if ((i & 256) != 0) {
                range = featureSettings.targetFpsRange;
            }
            Range range2 = range;
            boolean z6 = featureSettings.isStrictFpsRequired;
            videoStabilization.getClass();
            range2.getClass();
            return new FeatureSettings(i2, i3, z2, videoStabilization, z3, z4, z5, z, range2, z6);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FeatureSettings)) {
                return false;
            }
            FeatureSettings featureSettings = (FeatureSettings) obj;
            return this.cameraMode == featureSettings.cameraMode && this.requiredMaxBitDepth == featureSettings.requiredMaxBitDepth && this.hasVideoCapture == featureSettings.hasVideoCapture && this.videoStabilization == featureSettings.videoStabilization && this.isUltraHdrOn == featureSettings.isUltraHdrOn && this.isHighSpeedOn == featureSettings.isHighSpeedOn && this.isFeatureComboInvocation == featureSettings.isFeatureComboInvocation && this.requiresFeatureComboQuery == featureSettings.requiresFeatureComboQuery && Intrinsics.areEqual(this.targetFpsRange, featureSettings.targetFpsRange) && this.isStrictFpsRequired == featureSettings.isStrictFpsRequired;
        }

        public final int hashCode() {
            return ((this.targetFpsRange.hashCode() + ((((((((((this.videoStabilization.hashCode() + (((((this.cameraMode * 31) + this.requiredMaxBitDepth) * 31) + (this.hasVideoCapture ? 1231 : 1237)) * 31)) * 31) + (this.isUltraHdrOn ? 1231 : 1237)) * 31) + (this.isHighSpeedOn ? 1231 : 1237)) * 31) + (this.isFeatureComboInvocation ? 1231 : 1237)) * 31) + (this.requiresFeatureComboQuery ? 1231 : 1237)) * 31)) * 31) + (this.isStrictFpsRequired ? 1231 : 1237);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FeatureSettings(cameraMode=");
            sb.append(this.cameraMode);
            sb.append(", requiredMaxBitDepth=");
            sb.append(this.requiredMaxBitDepth);
            sb.append(", hasVideoCapture=");
            sb.append(this.hasVideoCapture);
            sb.append(", videoStabilization=");
            sb.append(this.videoStabilization);
            sb.append(", isUltraHdrOn=");
            sb.append(this.isUltraHdrOn);
            sb.append(", isHighSpeedOn=");
            sb.append(this.isHighSpeedOn);
            sb.append(", isFeatureComboInvocation=");
            sb.append(this.isFeatureComboInvocation);
            sb.append(", requiresFeatureComboQuery=");
            sb.append(this.requiresFeatureComboQuery);
            sb.append(", targetFpsRange=");
            sb.append(this.targetFpsRange);
            sb.append(", isStrictFpsRequired=");
            return CameraDevices$CC.m(sb, this.isStrictFpsRequired, ')');
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x03c2, code lost:
    
        if (com.fsck.k9.sasl.OAuthBearer.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() != false) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v41, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SupportedSurfaceCombination(android.content.Context r31, androidx.camera.camera2.pipe.CameraMetadata r32, androidx.camera.core.impl.EncoderProfilesProvider r33, androidx.camera.core.featuregroup.impl.FeatureCombinationQuery r34) {
        /*
            Method dump skipped, instructions count: 1956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.<init>(android.content.Context, androidx.camera.camera2.pipe.CameraMetadata, androidx.camera.core.impl.EncoderProfilesProvider, androidx.camera.core.featuregroup.impl.FeatureCombinationQuery):void");
    }

    public static Range getClosestSupportedDeviceFrameRate(Range range, int i, Range[] rangeArr) {
        Range range2 = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(range, range2)) {
            range2.getClass();
            return range2;
        }
        if (rangeArr == null) {
            range2.getClass();
            return range2;
        }
        Object lower = range.getLower();
        lower.getClass();
        Integer valueOf = Integer.valueOf(Math.min(((Number) lower).intValue(), i));
        Object upper = range.getUpper();
        upper.getClass();
        Range range3 = new Range(valueOf, Integer.valueOf(Math.min(((Number) upper).intValue(), i)));
        int length = rangeArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Range range4 = rangeArr[i2];
            if (i >= ((Number) range4.getLower()).intValue()) {
                if (Intrinsics.areEqual(range2, AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                    range2 = range4;
                }
                if (range4.equals(range3)) {
                    range2 = range4;
                    break;
                }
                try {
                    Range intersect = range4.intersect(range3);
                    intersect.getClass();
                    int rangeLength = getRangeLength(intersect);
                    if (i3 == 0) {
                        range2 = range4;
                        i3 = rangeLength;
                    } else if (rangeLength >= i3) {
                        range2.getClass();
                        Range intersect2 = range2.intersect(range3);
                        intersect2.getClass();
                        double rangeLength2 = getRangeLength(intersect2);
                        Range intersect3 = range4.intersect(range3);
                        intersect3.getClass();
                        double rangeLength3 = getRangeLength(intersect3);
                        double rangeLength4 = rangeLength3 / getRangeLength(range4);
                        double rangeLength5 = rangeLength2 / getRangeLength(range2);
                        if (rangeLength3 <= rangeLength2) {
                        }
                        Range intersect4 = range3.intersect(range2);
                        intersect4.getClass();
                        i3 = getRangeLength(intersect4);
                    }
                } catch (IllegalArgumentException unused) {
                    if (i3 == 0) {
                        int rangeDistance = getRangeDistance(range4, range3);
                        range2.getClass();
                        if (rangeDistance < getRangeDistance(range2, range3) || (getRangeDistance(range4, range3) == getRangeDistance(range2, range3) && (((Number) range4.getLower()).intValue() > ((Number) range2.getUpper()).intValue() || getRangeLength(range4) < getRangeLength(range2)))) {
                            range2 = range4;
                        }
                    }
                }
            }
            i2++;
        }
        range2.getClass();
        return range2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Size getMaxOutputSizeByFormat$camera_camera2(android.hardware.camera2.params.StreamConfigurationMap r8, int r9, boolean r10, android.util.Rational r11) {
        /*
            r0 = 34
            r1 = 0
            if (r9 != r0) goto L12
            if (r8 == 0) goto L10
            java.lang.Class<android.graphics.SurfaceTexture> r0 = android.graphics.SurfaceTexture.class
            android.util.Size[] r0 = r8.getOutputSizes(r0)     // Catch: java.lang.Throwable -> Le
            goto L1f
        Le:
            r0 = move-exception
            goto L19
        L10:
            r0 = r1
            goto L1f
        L12:
            if (r8 == 0) goto L10
            android.util.Size[] r0 = r8.getOutputSizes(r9)     // Catch: java.lang.Throwable -> Le
            goto L1f
        L19:
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r0)
            goto L20
        L1f:
            r2 = r0
        L20:
            boolean r0 = r2 instanceof kotlin.Result.Failure
            if (r0 == 0) goto L26
            r2 = r1
        L26:
            android.util.Size[] r2 = (android.util.Size[]) r2
            r0 = 0
            if (r2 == 0) goto L4e
            if (r11 == 0) goto L4f
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            int r4 = r2.length
            r5 = r0
        L34:
            if (r5 >= r4) goto L44
            r6 = r2[r5]
            boolean r7 = androidx.camera.core.impl.utils.AspectRatioUtil.hasMatchingAspectRatio(r11, r6)
            if (r7 == 0) goto L41
            r3.add(r6)
        L41:
            int r5 = r5 + 1
            goto L34
        L44:
            android.util.Size[] r11 = new android.util.Size[r0]
            java.lang.Object[] r11 = r3.toArray(r11)
            r2 = r11
            android.util.Size[] r2 = (android.util.Size[]) r2
            goto L4f
        L4e:
            r2 = r1
        L4f:
            if (r2 == 0) goto L98
            int r11 = r2.length
            if (r11 != 0) goto L55
            goto L98
        L55:
            androidx.camera.core.impl.utils.CompareSizesByArea r11 = new androidx.camera.core.impl.utils.CompareSizesByArea
            r11.<init>(r0)
            java.util.List r2 = java.util.Arrays.asList(r2)
            r2.getClass()
            java.lang.Object r2 = java.util.Collections.max(r2, r11)
            android.util.Size r2 = (android.util.Size) r2
            android.util.Size r3 = androidx.camera.core.internal.utils.SizeUtil.RESOLUTION_ZERO
            if (r10 == 0) goto L85
            if (r8 == 0) goto L71
            android.util.Size[] r1 = r8.getHighResolutionOutputSizes(r9)
        L71:
            if (r1 == 0) goto L85
            int r8 = r1.length
            if (r8 != 0) goto L77
            goto L85
        L77:
            java.util.List r8 = java.util.Arrays.asList(r1)
            r8.getClass()
            java.lang.Object r8 = java.util.Collections.max(r8, r11)
            r3 = r8
            android.util.Size r3 = (android.util.Size) r3
        L85:
            r8 = 2
            android.util.Size[] r8 = new android.util.Size[r8]
            r8[r0] = r2
            r9 = 1
            r8[r9] = r3
            java.util.List r8 = androidx.compose.ui.unit.IntOffsetKt.listOf(r8)
            java.lang.Object r8 = java.util.Collections.max(r8, r11)
            android.util.Size r8 = (android.util.Size) r8
            return r8
        L98:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.getMaxOutputSizeByFormat$camera_camera2(android.hardware.camera2.params.StreamConfigurationMap, int, boolean, android.util.Rational):android.util.Size");
    }

    public static int getRangeDistance(Range range, Range range2) {
        if (range.contains((Range) range2.getUpper()) || range.contains((Range) range2.getLower())) {
            UriKt$$ExternalSyntheticBUOutline0.m("Ranges must not intersect");
            return 0;
        }
        if (((Number) range.getLower()).intValue() > ((Number) range2.getUpper()).intValue()) {
            int intValue = ((Number) range.getLower()).intValue();
            Object upper = range2.getUpper();
            upper.getClass();
            return intValue - ((Number) upper).intValue();
        }
        int intValue2 = ((Number) range2.getLower()).intValue();
        Object upper2 = range.getUpper();
        upper2.getClass();
        return intValue2 - ((Number) upper2).intValue();
    }

    public static int getRangeLength(Range range) {
        int intValue = ((Number) range.getUpper()).intValue();
        Object lower = range.getLower();
        lower.getClass();
        return (intValue - ((Number) lower).intValue()) + 1;
    }

    public static Range getUpdatedTargetFrameRate(Range range, Range range2, boolean z) {
        Range range3 = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(range2, range3) && Intrinsics.areEqual(range, range3)) {
            range3.getClass();
            return range3;
        }
        if (Intrinsics.areEqual(range2, range3)) {
            return range;
        }
        if (!Intrinsics.areEqual(range, range3)) {
            if (z) {
                RelationUtil.checkState("All targetFrameRate should be the same if strict fps is required", Intrinsics.areEqual(range, range2));
                return range;
            }
            try {
                Range intersect = range2.intersect(range);
                intersect.getClass();
                return intersect;
            } catch (IllegalArgumentException unused) {
            }
        }
        return range2;
    }

    public final boolean checkSupported(FeatureSettings featureSettings, ArrayList arrayList, Map map, List list, List list2) {
        Integer num;
        boolean z;
        ArrayList arrayList2;
        List list3;
        boolean z2;
        Size size;
        Integer num2;
        VideoStabilization videoStabilization = featureSettings.videoStabilization;
        boolean z3 = featureSettings.requiresFeatureComboQuery;
        LinkedHashMap linkedHashMap = this.featureSettingsToSupportedCombinationsMap;
        boolean containsKey = linkedHashMap.containsKey(featureSettings);
        VideoStabilization videoStabilization2 = VideoStabilization.PREVIEW;
        if (containsKey) {
            Object obj = linkedHashMap.get(featureSettings);
            obj.getClass();
            list3 = (List) obj;
            num = 2;
            z = z3;
        } else {
            ArrayList arrayList3 = new ArrayList();
            int i = featureSettings.cameraMode;
            if (z3) {
                SynchronizedLazyImpl synchronizedLazyImpl = GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS$delegate;
                arrayList3.addAll(GuaranteedConfigurationsUtil.getQueryableFcqCombinations$camera_camera2(this.cameraMetadata, videoStabilization));
                num = 2;
                z = z3;
            } else if (featureSettings.isUltraHdrOn) {
                ArrayList arrayList4 = this.surfaceCombinationsUltraHdr;
                if (arrayList4.isEmpty()) {
                    SynchronizedLazyImpl synchronizedLazyImpl2 = GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS$delegate;
                    ArrayList arrayList5 = new ArrayList();
                    SurfaceCombination surfaceCombination = new SurfaceCombination();
                    StreamUseCase streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                    SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
                    StreamUseCase streamUseCase2 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                    z = z3;
                    SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.JPEG_R;
                    num = 2;
                    surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase2));
                    arrayList5.add(surfaceCombination);
                    SurfaceCombination surfaceCombination2 = new SurfaceCombination();
                    CameraDevices$CC.m(surfaceCombination2, VerboseLogger.create(SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, streamUseCase2), configType, configSize, streamUseCase2);
                    arrayList5.add(surfaceCombination2);
                    arrayList4.addAll(arrayList5);
                } else {
                    num = 2;
                    z = z3;
                }
                if (i == 0) {
                    arrayList3.addAll(arrayList4);
                }
            } else {
                num = 2;
                z = z3;
                if (featureSettings.isHighSpeedOn) {
                    ArrayList arrayList6 = this.highSpeedSurfaceCombinations;
                    if (arrayList6.isEmpty()) {
                        HighSpeedResolver highSpeedResolver = this.highSpeedResolver;
                        if (((Boolean) highSpeedResolver.isHighSpeedSupported$delegate.getValue()).booleanValue()) {
                            arrayList6.clear();
                            Size size2 = (Size) highSpeedResolver.maxSize$delegate.getValue();
                            if (size2 != null) {
                                AutoValue_SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat = getUpdatedSurfaceSizeDefinitionByFormat(34);
                                SynchronizedLazyImpl synchronizedLazyImpl3 = GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS$delegate;
                                ArrayList arrayList7 = new ArrayList();
                                StreamUseCase streamUseCase3 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                                SurfaceConfig transformSurfaceConfig = VerboseLogger.transformSurfaceConfig(34, size2, updatedSurfaceSizeDefinitionByFormat, 0, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, SurfaceConfig.DEFAULT_STREAM_USE_CASE);
                                SurfaceCombination surfaceCombination3 = new SurfaceCombination();
                                surfaceCombination3.addSurfaceConfig(transformSurfaceConfig);
                                arrayList7.add(surfaceCombination3);
                                SurfaceCombination surfaceCombination4 = new SurfaceCombination();
                                surfaceCombination4.addSurfaceConfig(transformSurfaceConfig);
                                surfaceCombination4.addSurfaceConfig(transformSurfaceConfig);
                                arrayList7.add(surfaceCombination4);
                                arrayList6.addAll(arrayList7);
                            }
                        }
                    }
                    arrayList3.addAll(arrayList6);
                } else {
                    int i2 = featureSettings.requiredMaxBitDepth;
                    if (i2 == 8) {
                        if (i != 1) {
                            ArrayList arrayList8 = this.surfaceCombinations;
                            if (i != 2) {
                                if (videoStabilization == videoStabilization2) {
                                    arrayList8 = this.previewStabilizationSurfaceCombinations;
                                }
                                arrayList3.addAll(arrayList8);
                            } else {
                                arrayList3.addAll(this.ultraHighSurfaceCombinations);
                                arrayList3.addAll(arrayList8);
                            }
                        } else {
                            arrayList2 = this.concurrentSurfaceCombinations;
                            linkedHashMap.put(featureSettings, arrayList2);
                            list3 = arrayList2;
                        }
                    } else if (i2 == 10 && i == 0) {
                        arrayList3.addAll(this.surfaceCombinations10Bit);
                    }
                }
            }
            arrayList2 = arrayList3;
            linkedHashMap.put(featureSettings, arrayList2);
            list3 = arrayList2;
        }
        if (list3 == null || !list3.isEmpty()) {
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                if (((SurfaceCombination) it.next()).getOrderedSupportedSurfaceConfigList(arrayList) != null) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (!z2 || !z) {
            return z2;
        }
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator it2 = arrayList.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            int i4 = i3 + 1;
            if (i3 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            SurfaceConfig surfaceConfig = (SurfaceConfig) next;
            AutoValue_SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat2 = getUpdatedSurfaceSizeDefinitionByFormat(surfaceConfig.imageFormat);
            LinkedHashMap linkedHashMap2 = updatedSurfaceSizeDefinitionByFormat2.maximumSizeMap;
            int i5 = surfaceConfig.imageFormat;
            SurfaceConfig.ConfigSize configSize2 = surfaceConfig.configSize;
            int ordinal = configSize2.ordinal();
            if (ordinal != 3) {
                switch (ordinal) {
                    case 9:
                        size = updatedSurfaceSizeDefinitionByFormat2.recordSize;
                        break;
                    case 10:
                        size = (Size) linkedHashMap2.get(Integer.valueOf(i5));
                        break;
                    case 11:
                        size = (Size) linkedHashMap2.get(Integer.valueOf(i5));
                        break;
                    case BasicTextKt.ShiftMeta /* 12 */:
                        size = (Size) linkedHashMap2.get(Integer.valueOf(i5));
                        break;
                    case 13:
                        size = (Size) updatedSurfaceSizeDefinitionByFormat2.ultraMaximumSizeMap.get(Integer.valueOf(i5));
                        break;
                    case 14:
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Not supported config size");
                        return false;
                    default:
                        size = configSize2.relatedFixedSize;
                        break;
                }
            } else {
                size = updatedSurfaceSizeDefinitionByFormat2.previewSize;
            }
            size.getClass();
            UseCaseConfig useCaseConfig = (UseCaseConfig) list.get(((Number) list2.get(i3)).intValue());
            Object obj2 = map.get(surfaceConfig);
            if (obj2 == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                return false;
            }
            DynamicRange dynamicRange = (DynamicRange) obj2;
            useCaseConfig.getClass();
            Iterator it3 = it2;
            FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1 featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1 = new FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1(useCaseConfig.getInputFormat(), size);
            UseCaseType.Companion.getClass();
            int ordinal2 = useCaseConfig.getCaptureType().ordinal();
            Class cls = (ordinal2 != 0 ? ordinal2 != 1 ? ordinal2 != 2 ? ordinal2 != 3 ? ordinal2 != 4 ? UseCaseType.UNDEFINED : UseCaseType.STREAM_SHARING : UseCaseType.VIDEO_CAPTURE : UseCaseType.IMAGE_ANALYSIS : UseCaseType.PREVIEW : UseCaseType.IMAGE_CAPTURE).surfaceClass;
            if (cls != null) {
                featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1.mContainerClass = cls;
            }
            SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(useCaseConfig, size);
            RawField rawField = createFrom.mCaptureConfigBuilder;
            createFrom.addSurface(featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1, dynamicRange, -1);
            Range range = featureSettings.targetFpsRange;
            Range range2 = !Intrinsics.areEqual(range, AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) ? range : null;
            if (range2 == null) {
                range2 = FpsRangeFeature.DEFAULT_FPS_RANGE;
            }
            rawField.getClass();
            ((MutableOptionsBundle) rawField.name).insertOption(CaptureConfig.OPTION_RESOLVED_FRAME_RATE, range2);
            if (videoStabilization == videoStabilization2) {
                rawField.getClass();
                num2 = num;
                ((MutableOptionsBundle) rawField.name).insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, num2);
            } else {
                num2 = num;
                if (videoStabilization == VideoStabilization.ON) {
                    rawField.getClass();
                    ((MutableOptionsBundle) rawField.name).insertOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, num2);
                }
            }
            validatingBuilder.add(createFrom.build());
            boolean isValid = validatingBuilder.isValid();
            StringBuilder sb = new StringBuilder("Cannot create a combined SessionConfig for feature combo after adding ");
            sb.append(useCaseConfig);
            sb.append(" with ");
            sb.append(surfaceConfig);
            sb.append(" due to [");
            sb.append(!validatingBuilder.mTemplateSet ? "Template is not set" : validatingBuilder.mInvalidReason.toString());
            sb.append("]; surfaceConfigList = ");
            sb.append(arrayList);
            sb.append(", featureSettings = ");
            sb.append(featureSettings);
            sb.append(", newUseCaseConfigs = ");
            sb.append(list);
            RelationUtil.checkState(sb.toString(), isValid);
            num = num2;
            it2 = it3;
            i3 = i4;
        }
        SessionConfig build = validatingBuilder.build();
        boolean isSupported = this.featureCombinationQuery.isSupported(build);
        List surfaces = build.getSurfaces();
        surfaces.getClass();
        Iterator it4 = surfaces.iterator();
        while (it4.hasNext()) {
            ((DeferrableSurface) it4.next()).close();
        }
        return isSupported;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if (r0 != null) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void generateSurfaceSizeDefinition() {
        /*
            r11 = this;
            androidx.camera.camera2.impl.DisplayInfoManager r0 = r11.displayInfoManager
            android.util.Size r4 = r0.getPreviewSize()
            java.lang.String r0 = r11.cameraId     // Catch: java.lang.NumberFormatException -> L13
            java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L13
            android.util.Size r0 = r11.getRecordSizeFromCamcorderProfile()     // Catch: java.lang.NumberFormatException -> L13
            if (r0 == 0) goto L13
        L11:
            r6 = r0
            goto L6d
        L13:
            androidx.camera.camera2.compat.StreamConfigurationMapCompat r0 = r11.streamConfigurationMapCompat
            androidx.biometric.BiometricPrompt r0 = r0.impl
            java.lang.Object r0 = r0.mClientFragmentManager
            android.hardware.camera2.params.StreamConfigurationMap r0 = (android.hardware.camera2.params.StreamConfigurationMap) r0
            r1 = 0
            if (r0 == 0) goto L2c
            java.lang.Class<android.media.MediaRecorder> r2 = android.media.MediaRecorder.class
            android.util.Size[] r0 = r0.getOutputSizes(r2)     // Catch: java.lang.Throwable -> L25
            goto L2d
        L25:
            r0 = move-exception
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r0)
            goto L2e
        L2c:
            r0 = r1
        L2d:
            r2 = r0
        L2e:
            boolean r0 = r2 instanceof kotlin.Result.Failure
            if (r0 == 0) goto L34
            r2 = r1
        L34:
            android.util.Size[] r2 = (android.util.Size[]) r2
            if (r2 != 0) goto L3a
        L38:
            r0 = r1
            goto L64
        L3a:
            androidx.camera.core.impl.utils.CompareSizesByArea r0 = new androidx.camera.core.impl.utils.CompareSizesByArea
            r3 = 1
            r0.<init>(r3)
            java.util.Arrays.sort(r2, r0)
            int r0 = r2.length
            r3 = 0
        L45:
            if (r3 >= r0) goto L38
            r5 = r2[r3]
            int r6 = r5.getWidth()
            android.util.Size r7 = androidx.camera.core.internal.utils.SizeUtil.RESOLUTION_1080P
            int r8 = r7.getWidth()
            if (r6 > r8) goto L61
            int r6 = r5.getHeight()
            int r7 = r7.getHeight()
            if (r6 > r7) goto L61
            r0 = r5
            goto L64
        L61:
            int r3 = r3 + 1
            goto L45
        L64:
            if (r0 == 0) goto L67
            goto L11
        L67:
            android.util.Size r0 = androidx.camera.core.internal.utils.SizeUtil.RESOLUTION_480P
            r0.getClass()
            goto L11
        L6d:
            android.util.Size r2 = androidx.camera.core.internal.utils.SizeUtil.RESOLUTION_VGA
            java.util.LinkedHashMap r3 = new java.util.LinkedHashMap
            r3.<init>()
            java.util.LinkedHashMap r5 = new java.util.LinkedHashMap
            r5.<init>()
            java.util.LinkedHashMap r7 = new java.util.LinkedHashMap
            r7.<init>()
            java.util.LinkedHashMap r8 = new java.util.LinkedHashMap
            r8.<init>()
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            r9.<init>()
            java.util.LinkedHashMap r10 = new java.util.LinkedHashMap
            r10.<init>()
            androidx.camera.core.impl.AutoValue_SurfaceSizeDefinition r1 = new androidx.camera.core.impl.AutoValue_SurfaceSizeDefinition
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r11.surfaceSizeDefinition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.generateSurfaceSizeDefinition():void");
    }

    public final int getMaxFrameRate(int i, Size size, boolean z, int i2) {
        long j;
        int i3 = 0;
        if (!z) {
            StreamConfigurationMapCompat streamConfigurationMapCompat = getStreamConfigurationMapCompat();
            size.getClass();
            try {
                j = streamConfigurationMapCompat.impl.getOutputMinFrameDuration(i, size);
            } catch (RuntimeException e) {
                if (Utf8.SafeProcessor.isWarnEnabled()) {
                    Log.w("CXCP", "Unable to get min frame duration for format = " + i + " and size = " + size, e);
                }
                j = 0;
            }
            if (j > 0) {
                i3 = (int) (1.0E9d / j);
            } else if (!this.isManualSensorSupported) {
                i3 = Integer.MAX_VALUE;
            } else if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "minFrameDuration: " + j + " is invalid for imageFormat = " + i + ", size = " + size);
            }
        } else {
            if (i != 34) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
                return 0;
            }
            HighSpeedResolver highSpeedResolver = this.highSpeedResolver;
            highSpeedResolver.getClass();
            size.getClass();
            List highSpeedVideoFpsRangesFor = highSpeedResolver.getHighSpeedVideoFpsRangesFor(size);
            if (highSpeedVideoFpsRangesFor.isEmpty()) {
                highSpeedVideoFpsRangesFor = null;
            }
            if (highSpeedVideoFpsRangesFor == null) {
                Utf8.SafeProcessor.w("HighSpeedResolver", "No supported high speed  fps for " + size);
            } else {
                Iterator it = highSpeedVideoFpsRangesFor.iterator();
                if (!it.hasNext()) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    return 0;
                }
                Integer num = (Integer) ((Range) it.next()).getUpper();
                while (it.hasNext()) {
                    Integer num2 = (Integer) ((Range) it.next()).getUpper();
                    if (num.compareTo(num2) < 0) {
                        num = num2;
                    }
                }
                num.getClass();
                i3 = num.intValue();
            }
        }
        return Math.min(i2, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
    
        r4 = new kotlin.SynchronizedLazyImpl(new androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6(3, r11, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c0, code lost:
    
        if (r3 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00cc, code lost:
    
        if (((java.lang.Boolean) r4.getValue()).booleanValue() == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0017, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List getOrderedSupportedStreamUseCaseSurfaceConfigList(androidx.camera.camera2.adapter.SupportedSurfaceCombination.FeatureSettings r12, java.util.ArrayList r13, java.util.LinkedHashMap r14, java.util.LinkedHashMap r15) {
        /*
            r11 = this;
            androidx.camera.core.impl.AutoValue_Config_Option r0 = androidx.camera.camera2.internal.StreamUseCaseUtil.STREAM_USE_CASE_STREAM_SPEC_OPTION
            int r0 = r12.cameraMode
            r1 = 0
            if (r0 != 0) goto Lcf
            int r0 = r12.requiredMaxBitDepth
            r2 = 8
            if (r0 != r2) goto Lcf
            boolean r12 = r12.isHighSpeedOn
            if (r12 != 0) goto Lcf
            java.util.ArrayList r12 = r11.surfaceCombinationsStreamUseCase
            java.util.Iterator r12 = r12.iterator()
        L17:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto Lcf
            java.lang.Object r0 = r12.next()
            androidx.camera.core.impl.SurfaceCombination r0 = (androidx.camera.core.impl.SurfaceCombination) r0
            java.util.List r0 = r0.getOrderedSupportedSurfaceConfigList(r13)
            if (r0 == 0) goto L17
            androidx.camera.core.impl.AutoValue_Config_Option r2 = androidx.camera.camera2.internal.StreamUseCaseUtil.STREAM_USE_CASE_STREAM_SPEC_OPTION
            int r2 = r0.size()
            r3 = 0
            r4 = r3
        L31:
            r5 = 1
            if (r4 >= r2) goto Lb4
            java.lang.Object r6 = r0.get(r4)
            androidx.camera.core.impl.SurfaceConfig r6 = (androidx.camera.core.impl.SurfaceConfig) r6
            androidx.camera.core.impl.StreamUseCase r6 = r6.streamUseCase
            long r6 = r6.value
            java.lang.Integer r8 = java.lang.Integer.valueOf(r4)
            boolean r8 = r14.containsKey(r8)
            androidx.camera.core.impl.UseCaseConfigFactory$CaptureType r9 = androidx.camera.core.impl.UseCaseConfigFactory.CaptureType.STREAM_SHARING
            if (r8 == 0) goto L70
            java.lang.Integer r8 = java.lang.Integer.valueOf(r4)
            java.lang.Object r8 = r14.get(r8)
            androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo r8 = (androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo) r8
            r8.getClass()
            java.util.List r8 = r8.captureTypes
            int r10 = r8.size()
            if (r10 != r5) goto L66
            java.lang.Object r5 = r8.get(r3)
            r9 = r5
            androidx.camera.core.impl.UseCaseConfigFactory$CaptureType r9 = (androidx.camera.core.impl.UseCaseConfigFactory.CaptureType) r9
        L66:
            r9.getClass()
            boolean r5 = androidx.camera.camera2.internal.StreamUseCaseUtil.isEligibleCaptureType(r9, r6, r8)
            if (r5 != 0) goto Lab
            goto Lb5
        L70:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            boolean r5 = r15.containsKey(r5)
            if (r5 == 0) goto Lae
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            java.lang.Object r5 = r15.get(r5)
            r5.getClass()
            androidx.camera.core.impl.UseCaseConfig r5 = (androidx.camera.core.impl.UseCaseConfig) r5
            androidx.camera.core.impl.UseCaseConfigFactory$CaptureType r8 = r5.getCaptureType()
            r8.getClass()
            androidx.camera.core.impl.UseCaseConfigFactory$CaptureType r10 = r5.getCaptureType()
            if (r10 != r9) goto La2
            androidx.camera.core.streamsharing.StreamSharingConfig r5 = (androidx.camera.core.streamsharing.StreamSharingConfig) r5
            androidx.camera.core.impl.AutoValue_Config_Option r9 = androidx.camera.core.streamsharing.StreamSharingConfig.OPTION_CAPTURE_TYPES
            java.lang.Object r5 = androidx.camera.core.impl.Config.CC.$default$retrieveOption(r5, r9)
            java.util.List r5 = (java.util.List) r5
            r5.getClass()
            goto La4
        La2:
            kotlin.collections.EmptyList r5 = kotlin.collections.EmptyList.INSTANCE
        La4:
            boolean r5 = androidx.camera.camera2.internal.StreamUseCaseUtil.isEligibleCaptureType(r8, r6, r5)
            if (r5 != 0) goto Lab
            goto Lb5
        Lab:
            int r4 = r4 + 1
            goto L31
        Lae:
            java.lang.String r11 = "SurfaceConfig does not map to any use case"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            return r1
        Lb4:
            r3 = r5
        Lb5:
            androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6 r2 = new androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6
            r4 = 3
            r2.<init>(r4, r11, r0)
            kotlin.SynchronizedLazyImpl r4 = new kotlin.SynchronizedLazyImpl
            r4.<init>(r2)
            if (r3 == 0) goto L17
            java.lang.Object r2 = r4.getValue()
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L17
            return r0
        Lcf:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.getOrderedSupportedStreamUseCaseSurfaceConfigList(androidx.camera.camera2.adapter.SupportedSurfaceCombination$FeatureSettings, java.util.ArrayList, java.util.LinkedHashMap, java.util.LinkedHashMap):java.util.List");
    }

    public final Size getRecordSizeFromCamcorderProfile() {
        AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy all;
        Iterator it = IntOffsetKt.listOf((Object[]) new Integer[]{1, 13, 10, 8, 12, 6, 5, 4}).iterator();
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            EncoderProfilesProvider encoderProfilesProvider = this.encoderProfilesProvider;
            if (encoderProfilesProvider.hasProfile(intValue) && (all = encoderProfilesProvider.getAll(intValue)) != null) {
                List list = all.videoProfiles;
                list.getClass();
                if (!list.isEmpty()) {
                    Object obj = list.get(0);
                    obj.getClass();
                    AutoValue_EncoderProfilesProxy_VideoProfileProxy autoValue_EncoderProfilesProxy_VideoProfileProxy = (AutoValue_EncoderProfilesProxy_VideoProfileProxy) obj;
                    return new Size(autoValue_EncoderProfilesProxy_VideoProfileProxy.width, autoValue_EncoderProfilesProxy_VideoProfileProxy.height);
                }
            }
        }
        return null;
    }

    public final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        CameraMetadata cameraMetadata = this.cameraMetadata;
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (streamConfigurationMap != null) {
            return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(cameraMetadata));
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0264, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03b3, code lost:
    
        if (r26 == androidx.camera.core.impl.stabilization.VideoStabilization.PREVIEW) goto L158;
     */
    /* JADX WARN: Type inference failed for: r0v35, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r18v1, types: [android.util.Range, androidx.camera.core.impl.SurfaceStreamSpecQueryResult] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.SurfaceStreamSpecQueryResult getSuggestedStreamSpecifications(int r23, java.util.ArrayList r24, java.util.LinkedHashMap r25, androidx.camera.core.impl.stabilization.VideoStabilization r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 1125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.getSuggestedStreamSpecifications(int, java.util.ArrayList, java.util.LinkedHashMap, androidx.camera.core.impl.stabilization.VideoStabilization, boolean, boolean):androidx.camera.core.impl.SurfaceStreamSpecQueryResult");
    }

    public final ArrayList getSurfaceConfigList(int i, ArrayList arrayList, List list, List list2, ArrayList arrayList2, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, boolean z) {
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AutoValue_AttachedSurfaceInfo autoValue_AttachedSurfaceInfo = (AutoValue_AttachedSurfaceInfo) it.next();
            arrayList3.add(autoValue_AttachedSurfaceInfo.surfaceConfig);
            linkedHashMap.put(Integer.valueOf(arrayList3.size() - 1), autoValue_AttachedSurfaceInfo);
        }
        Iterator it2 = list.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            int i3 = i2 + 1;
            Size size = (Size) it2.next();
            UseCaseConfig useCaseConfig = (UseCaseConfig) list2.get(((Number) arrayList2.get(i2)).intValue());
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            StreamUseCase streamUseCase2 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
            arrayList3.add(VerboseLogger.transformSurfaceConfig(inputFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(inputFormat), i, z ? SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE : SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase));
            linkedHashMap2.put(Integer.valueOf(arrayList3.size() - 1), useCaseConfig);
            i2 = i3;
        }
        return arrayList3;
    }

    public final AutoValue_SurfaceSizeDefinition getSurfaceSizeDefinition$camera_camera2() {
        AutoValue_SurfaceSizeDefinition autoValue_SurfaceSizeDefinition = this.surfaceSizeDefinition;
        if (autoValue_SurfaceSizeDefinition != null) {
            return autoValue_SurfaceSizeDefinition;
        }
        Intrinsics.throwUninitializedPropertyAccessException("surfaceSizeDefinition");
        throw null;
    }

    public final AutoValue_SurfaceSizeDefinition getUpdatedSurfaceSizeDefinitionByFormat(int i) {
        Size maxOutputSizeByFormat$camera_camera2;
        Integer valueOf = Integer.valueOf(i);
        ArrayList arrayList = this.surfaceSizeDefinitionFormats;
        if (!arrayList.contains(valueOf)) {
            LinkedHashMap linkedHashMap = getSurfaceSizeDefinition$camera_camera2().s720pSizeMap;
            Size size = SizeUtil.RESOLUTION_720P;
            size.getClass();
            updateS720pOrS1440pSizeByFormat(linkedHashMap, size, i);
            LinkedHashMap linkedHashMap2 = getSurfaceSizeDefinition$camera_camera2().s1440pSizeMap;
            Size size2 = SizeUtil.RESOLUTION_1440P;
            size2.getClass();
            updateS720pOrS1440pSizeByFormat(linkedHashMap2, size2, i);
            updateMaximumSizeByFormat(getSurfaceSizeDefinition$camera_camera2().maximumSizeMap, i, null);
            updateMaximumSizeByFormat(getSurfaceSizeDefinition$camera_camera2().maximum4x3SizeMap, i, AspectRatioUtil.ASPECT_RATIO_4_3);
            updateMaximumSizeByFormat(getSurfaceSizeDefinition$camera_camera2().maximum16x9SizeMap, i, AspectRatioUtil.ASPECT_RATIO_16_9);
            LinkedHashMap linkedHashMap3 = getSurfaceSizeDefinition$camera_camera2().ultraMaximumSizeMap;
            if (Build.VERSION.SDK_INT >= 31 && this.isUltraHighResolutionSensorSupported) {
                CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION;
                key.getClass();
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) ((Camera2CameraMetadata) this.cameraMetadata).get(key);
                if (streamConfigurationMap != null && (maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2(streamConfigurationMap, i, true, null)) != null) {
                    linkedHashMap3.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2);
                }
            }
            arrayList.add(Integer.valueOf(i));
        }
        return getSurfaceSizeDefinition$camera_camera2();
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x042e, code lost:
    
        r2 = r48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [int] */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r4v41, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.SurfaceStreamSpecQueryResult resolveSpecsBySettings(androidx.camera.camera2.adapter.SupportedSurfaceCombination.FeatureSettings r46, java.util.ArrayList r47, java.util.Map r48, java.util.List r49, java.util.ArrayList r50, java.util.LinkedHashMap r51) {
        /*
            Method dump skipped, instructions count: 2395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.SupportedSurfaceCombination.resolveSpecsBySettings(androidx.camera.camera2.adapter.SupportedSurfaceCombination$FeatureSettings, java.util.ArrayList, java.util.Map, java.util.List, java.util.ArrayList, java.util.LinkedHashMap):androidx.camera.core.impl.SurfaceStreamSpecQueryResult");
    }

    public final SurfaceConfig transformSurfaceConfig(int i, int i2, Size size, StreamUseCase streamUseCase) {
        size.getClass();
        StreamUseCase streamUseCase2 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
        return VerboseLogger.transformSurfaceConfig(i2, size, getUpdatedSurfaceSizeDefinitionByFormat(i2), i, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase);
    }

    public final void updateMaximumSizeByFormat(LinkedHashMap linkedHashMap, int i, Rational rational) {
        Size maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2((StreamConfigurationMap) this.streamConfigurationMapCompat.impl.mClientFragmentManager, i, true, rational);
        if (maxOutputSizeByFormat$camera_camera2 != null) {
            linkedHashMap.put(Integer.valueOf(i), maxOutputSizeByFormat$camera_camera2);
        }
    }

    public final void updateS720pOrS1440pSizeByFormat(LinkedHashMap linkedHashMap, Size size, int i) {
        if (this.isConcurrentCameraModeSupported) {
            Size maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2((StreamConfigurationMap) this.streamConfigurationMapCompat.impl.mClientFragmentManager, i, false, null);
            Integer valueOf = Integer.valueOf(i);
            if (maxOutputSizeByFormat$camera_camera2 != null) {
                size = (Size) Collections.min(IntOffsetKt.listOf((Object[]) new Size[]{size, maxOutputSizeByFormat$camera_camera2}), new CompareSizesByArea(false));
            }
            linkedHashMap.put(valueOf, size);
        }
    }

    public final void validateSelf(FeatureSettings featureSettings) {
        int i = featureSettings.cameraMode;
        boolean z = featureSettings.isFeatureComboInvocation;
        String str = this.cameraId;
        if (i != 0 && featureSettings.isUltraHdrOn) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m31m("Camera device Id is ", str, ". Ultra HDR is not currently supported in "), i != 1 ? i != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA" : "CONCURRENT_CAMERA", " camera mode."));
            return;
        }
        if (i != 0 && featureSettings.requiredMaxBitDepth == 10) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m31m("Camera device Id is ", str, ". 10 bit dynamic range is not currently supported in "), i != 1 ? i != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA" : "CONCURRENT_CAMERA", " camera mode."));
            return;
        }
        if (i != 0 && z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m31m("Camera device Id is ", str, ". feature combination is not currently supported in "), i != 1 ? i != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA" : "CONCURRENT_CAMERA", " camera mode."));
            return;
        }
        boolean z2 = featureSettings.isHighSpeedOn;
        if (z2 && z) {
            UriKt$$ExternalSyntheticBUOutline0.m("High-speed session is not supported with feature combination");
        } else {
            if (!z2 || ((Boolean) this.highSpeedResolver.isHighSpeedSupported$delegate.getValue()).booleanValue()) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("High-speed session is not supported on this device.");
        }
    }
}
