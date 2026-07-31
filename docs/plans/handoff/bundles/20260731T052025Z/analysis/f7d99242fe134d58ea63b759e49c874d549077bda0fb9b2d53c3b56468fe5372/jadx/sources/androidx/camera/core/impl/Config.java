package androidx.camera.core.impl;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.util.Size;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent$CameraPipeComponentImpl;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SnapSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListIntervalContent$$ExternalSyntheticLambda2;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemElement;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.unit.IntOffset;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.OperationKt;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Config {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OptionPriority {
        public static final /* synthetic */ OptionPriority[] $VALUES;
        public static final OptionPriority ALWAYS_OVERRIDE;
        public static final OptionPriority HIGH_PRIORITY_REQUIRED;
        public static final OptionPriority OPTIONAL;
        public static final OptionPriority REQUIRED;

        static {
            OptionPriority optionPriority = new OptionPriority("ALWAYS_OVERRIDE", 0);
            ALWAYS_OVERRIDE = optionPriority;
            OptionPriority optionPriority2 = new OptionPriority("HIGH_PRIORITY_REQUIRED", 1);
            HIGH_PRIORITY_REQUIRED = optionPriority2;
            OptionPriority optionPriority3 = new OptionPriority("REQUIRED", 2);
            REQUIRED = optionPriority3;
            OptionPriority optionPriority4 = new OptionPriority("OPTIONAL", 3);
            OPTIONAL = optionPriority4;
            $VALUES = new OptionPriority[]{optionPriority, optionPriority2, optionPriority3, optionPriority4};
        }

        public static OptionPriority valueOf(String str) {
            return (OptionPriority) Enum.valueOf(OptionPriority.class, str);
        }

        public static OptionPriority[] values() {
            return (OptionPriority[]) $VALUES.clone();
        }
    }

    boolean containsOption(AutoValue_Config_Option autoValue_Config_Option);

    void findOptions(CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);

    OptionPriority getOptionPriority(AutoValue_Config_Option autoValue_Config_Option);

    Set getPriorities(AutoValue_Config_Option autoValue_Config_Option);

    Set listOptions();

    Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option);

    Object retrieveOption(AutoValue_Config_Option autoValue_Config_Option, Object obj);

    Object retrieveOptionWithPriority(AutoValue_Config_Option autoValue_Config_Option, OptionPriority optionPriority);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.impl.Config$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static UseCaseConfigFactory.CaptureType $default$getCaptureType(UseCaseConfig useCaseConfig) {
            return (UseCaseConfigFactory.CaptureType) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_CAPTURE_TYPE);
        }

        public static int $default$getCustomMaxFrameRate(UseCaseConfig useCaseConfig, Size size) {
            Map map = (Map) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_RESOLUTION_TO_MAX_FRAME_RATES, null);
            if (map == null || !map.containsKey(size)) {
                return Integer.MAX_VALUE;
            }
            Integer num = (Integer) map.get(size);
            Objects.requireNonNull(num);
            return num.intValue();
        }

        public static DynamicRange $default$getDynamicRange(UseCaseConfig useCaseConfig) {
            DynamicRange dynamicRange = (DynamicRange) useCaseConfig.retrieveOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
            dynamicRange.getClass();
            return dynamicRange;
        }

        public static StreamUseCase $default$getStreamUseCase(UseCaseConfig useCaseConfig) {
            StreamUseCase streamUseCase = (StreamUseCase) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_STREAM_USE_CASE, StreamUseCase.DEFAULT);
            Objects.requireNonNull(streamUseCase);
            return streamUseCase;
        }

        public static UseCaseConfig.AnonymousClass1 $default$getTakePictureManagerProvider(UseCaseConfig useCaseConfig) {
            UseCaseConfig.AnonymousClass1 anonymousClass1 = (UseCaseConfig.AnonymousClass1) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_TAKE_PICTURE_MANAGER_PROVIDER, new UseCaseConfig.AnonymousClass1());
            Objects.requireNonNull(anonymousClass1);
            return anonymousClass1;
        }

        public static String $default$getTargetName(UseCaseConfig useCaseConfig, String str) {
            return (String) useCaseConfig.retrieveOption(TargetConfig.OPTION_TARGET_NAME, str);
        }

        public static boolean $default$isFinishedFromNanos(Animation animation, long j) {
            return j >= animation.getDurationNanos();
        }

        public static boolean $default$isResolvedFeatureGroupSupported(LegacySessionConfig legacySessionConfig, ResolvedFeatureGroup resolvedFeatureGroup, CameraInfoInternal cameraInfoInternal) {
            for (GroupableFeature groupableFeature : resolvedFeatureGroup.features) {
                if (!groupableFeature.isSupportedIndividually(legacySessionConfig, cameraInfoInternal)) {
                    Utf8.SafeProcessor.d("CameraInfoInternal", groupableFeature + " is not supported.");
                    return false;
                }
            }
            try {
                OperationKt.simulateAddUseCases(legacySessionConfig, resolvedFeatureGroup, cameraInfoInternal);
                return true;
            } catch (CameraUseCaseAdapter.CameraException | IllegalArgumentException e) {
                String truncateTag = Utf8.SafeProcessor.truncateTag("CameraInfoInternal");
                if (Utf8.SafeProcessor.isLogLevelEnabled(truncateTag, 3)) {
                    Log.d(truncateTag, "CameraInfoInternal.isResolvedFeatureGroupSupported failed", e);
                }
                return false;
            }
        }

        public static boolean $default$isStrictFrameRateRequired(UseCaseConfig useCaseConfig) {
            Boolean bool = (Boolean) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_IS_STRICT_FRAME_RATE_REQUIRED, Boolean.FALSE);
            Objects.requireNonNull(bool);
            return bool.booleanValue();
        }

        public static Modifier animateItem$default(LazyItemScopeImpl lazyItemScopeImpl, Modifier modifier, SnapSpec snapSpec, int i) {
            SpringSpec spring$default = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
            FiniteAnimationSpec finiteAnimationSpec = snapSpec;
            if ((i & 2) != 0) {
                Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
                finiteAnimationSpec = ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1);
            }
            SpringSpec spring$default2 = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
            lazyItemScopeImpl.getClass();
            return modifier.then(new LazyLayoutAnimateItemElement(spring$default, finiteAnimationSpec, spring$default2));
        }

        public static void item$default(LazyListIntervalContent lazyListIntervalContent, String str, Function3 function3, int i) {
            if ((i & 1) != 0) {
                str = null;
            }
            lazyListIntervalContent.intervals.addInterval(1, new LazyListInterval(str != null ? new TorchControl$$ExternalSyntheticLambda1(13, str) : null, new ScrollState$$ExternalSyntheticLambda4(10), new ComposableLambdaImpl(-857469575, new LazyListIntervalContent$$ExternalSyntheticLambda2(function3, 0), true)));
        }

        /* renamed from: m, reason: collision with other method in class */
        public static /* synthetic */ void m93m(Object obj) {
            if (obj instanceof AutoCloseable) {
                ((AutoCloseable) obj).close();
                return;
            }
            if (obj instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) obj);
                return;
            }
            if (obj instanceof TypedArray) {
                ((TypedArray) obj).recycle();
                return;
            }
            if (obj instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) obj).release();
                return;
            }
            if (obj instanceof MediaDrm) {
                ((MediaDrm) obj).release();
                return;
            }
            if (obj instanceof DrmManagerClient) {
                ((DrmManagerClient) obj).release();
            } else if (obj instanceof ContentProviderClient) {
                ((ContentProviderClient) obj).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            }
        }

        public static /* synthetic */ void m$1(Object obj) {
            if (obj == null) {
                return;
            }
            DBUtil$$ExternalSyntheticBUOutline0.m();
        }

        public static OptionsBundle mergeConfigs(Config config, Config config2) {
            if (config == null && config2 == null) {
                return OptionsBundle.EMPTY_BUNDLE;
            }
            MutableOptionsBundle from = config2 != null ? MutableOptionsBundle.from(config2) : MutableOptionsBundle.create();
            if (config != null) {
                Iterator it = config.listOptions().iterator();
                while (it.hasNext()) {
                    mergeOptionValue(from, config2, config, (AutoValue_Config_Option) it.next());
                }
            }
            return OptionsBundle.from(from);
        }

        public static void mergeOptionValue(MutableOptionsBundle mutableOptionsBundle, Config config, Config config2, AutoValue_Config_Option autoValue_Config_Option) {
            if (!Objects.equals(autoValue_Config_Option, ImageOutputConfig.OPTION_RESOLUTION_SELECTOR)) {
                mutableOptionsBundle.insertOption(autoValue_Config_Option, config2.getOptionPriority(autoValue_Config_Option), config2.retrieveOption(autoValue_Config_Option));
                return;
            }
            ResolutionSelector resolutionSelector = (ResolutionSelector) config2.retrieveOption(autoValue_Config_Option, null);
            ResolutionSelector resolutionSelector2 = (ResolutionSelector) config.retrieveOption(autoValue_Config_Option, null);
            OptionPriority optionPriority = config2.getOptionPriority(autoValue_Config_Option);
            if (resolutionSelector == null) {
                resolutionSelector = resolutionSelector2;
            } else if (resolutionSelector2 != null) {
                CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(18, false);
                anonymousClass1.mCardBackground = resolutionSelector2.mAspectRatioStrategy;
                anonymousClass1.this$0 = resolutionSelector2.mResolutionStrategy;
                AspectRatioStrategy aspectRatioStrategy = resolutionSelector.mAspectRatioStrategy;
                if (aspectRatioStrategy != null) {
                    anonymousClass1.mCardBackground = aspectRatioStrategy;
                }
                ResolutionStrategy resolutionStrategy = resolutionSelector.mResolutionStrategy;
                if (resolutionStrategy != null) {
                    anonymousClass1.this$0 = resolutionStrategy;
                }
                resolutionSelector = new ResolutionSelector((AspectRatioStrategy) anonymousClass1.mCardBackground, (ResolutionStrategy) anonymousClass1.this$0, null);
            }
            mutableOptionsBundle.insertOption(autoValue_Config_Option, optionPriority, resolutionSelector);
        }

        public static LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch$default(PreviewView.AnonymousClass1 anonymousClass1, int i) {
            LazyListState lazyListState = (LazyListState) anonymousClass1.this$0;
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) lazyListState.layoutInfoState.getValue();
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                return lazyListState.prefetchState.m257schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, lazyListMeasureResult.childConstraints, lazyListState.executeRequestsInHighPriorityMode, new ScrollState$$ExternalSyntheticLambda4(i, lazyListMeasureResult));
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }

        public static String $default$getTargetName(UseCaseConfig useCaseConfig) {
            return (String) useCaseConfig.retrieveOption(TargetConfig.OPTION_TARGET_NAME);
        }

        public static int m(int i, int i2, Function0 function0) {
            return (function0.hashCode() + i) * i2;
        }

        public static int m(ArrayList arrayList, int i, int i2) {
            return (arrayList.hashCode() + i) * i2;
        }

        public static long m(long j) {
            Trace.endSection();
            return SystemClock.elapsedRealtimeNanos() - j;
        }

        public static Provider m(DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl, int i) {
            return DoubleCheck.provider(new PriorityQueue(i, 2, daggerCameraPipeComponent$CameraPipeComponentImpl));
        }

        public static ClassCastException m(Object obj) {
            obj.getClass();
            return new ClassCastException();
        }

        public static ClassCastException m(Iterator it) {
            it.next().getClass();
            return new ClassCastException();
        }

        public static String m(String str, int i, String str2, int i2, String str3) {
            return str + i + str2 + i2 + str3;
        }

        public static String m(String str, String str2, String str3) {
            return str + str2 + str3;
        }

        public static String m(Object[] objArr, int i, Locale locale, String str, StringBuilder sb) {
            sb.append(String.format(locale, str, Arrays.copyOf(objArr, i)));
            return sb.toString();
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m91m(String str, int i, String str2, int i2, String str3) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(i);
            sb.append(str2);
            sb.append(i2);
            sb.append(str3);
            return sb;
        }

        public static StringBuilder m(String str, String str2) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str2);
            return sb;
        }

        public static StringBuilder m(String str, String str2, String str3, String str4, String str5) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(str2);
            sb.append(str3);
            sb.append(str4);
            sb.append(str5);
            return sb;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static SerializationException m92m(Object obj) {
            ResultKt.throwOnFailure(obj);
            return new SerializationException();
        }

        public static void m(int i, GapComposer gapComposer, ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1, GapComposer gapComposer2, OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1) {
            Updater.m380setimpl(gapComposer, Integer.valueOf(i), composeUiNode$Companion$SetModifier$1);
            Updater.m379reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
        }

        public static void m(int i, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, boolean z) {
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf(i));
            gapComposer.end(z);
        }

        public static void m(long j, StringBuilder sb, String str) {
            sb.append((Object) Color.m488toStringimpl(j));
            sb.append(str);
        }

        public static void m(MenuHostHelper menuHostHelper, long j) {
            menuHostHelper.getCanvas().restore();
            menuHostHelper.m797setSizeuvyYCjk(j);
        }

        public static int m(int i, int i2, long j) {
            return (ULong.m980hashCodeimpl(j) + i) * i2;
        }
    }
}
