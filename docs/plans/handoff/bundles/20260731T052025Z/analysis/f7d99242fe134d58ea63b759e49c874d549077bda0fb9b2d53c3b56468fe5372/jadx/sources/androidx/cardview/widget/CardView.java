package androidx.cardview.widget;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.os.Trace;
import android.support.customtabs.ICustomTabsService;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.ActionMode;
import androidx.biometric.BiometricPrompt;
import androidx.browser.customtabs.CustomTabsClient$2;
import androidx.camera.camera2.adapter.CameraSurfaceAdapter;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloserImpl$ConfiguredOutput;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.RejectOperationCameraCaptureSession;
import androidx.camera.camera2.impl.UseCaseCameraKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Api28Compat;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.AutoValue_SurfaceRequest_Result;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.StreamSpecQueryResult;
import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.ImageCaptureFailedForSpecificCombinationQuirk;
import androidx.camera.core.internal.compat.quirk.PreviewGreenTintQuirk;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceOutputImpl;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.view.TextureViewImplementation;
import androidx.cardview.R$styleable;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.Values;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.InvalidationResult;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    public static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    public final AnonymousClass1 mCardViewDelegate;
    public boolean mCompatPadding;
    public final Rect mContentPadding;
    public boolean mPreventCornerOverlap;
    public final Rect mShadowBounds;

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.mContentPadding = rect;
        this.mShadowBounds = new Rect();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, this);
        this.mCardViewDelegate = anonymousClass1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i, com.fsck.k9.R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.fsck.k9.R.color.cardview_light_background) : getResources().getColor(com.fsck.k9.R.color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        this.mCompatPadding = obtainStyledAttributes.getBoolean(7, false);
        this.mPreventCornerOverlap = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        RoundRectDrawable roundRectDrawable = new RoundRectDrawable(valueOf, dimension);
        anonymousClass1.mCardBackground = roundRectDrawable;
        setBackgroundDrawable(roundRectDrawable);
        setClipToOutline(true);
        setElevation(dimension2);
        DebugUtils.setMaxElevation(anonymousClass1, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mBackground;
    }

    public float getCardElevation() {
        return ((CardView) this.mCardViewDelegate.this$0).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mPadding;
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mRadius;
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        ColorStateList valueOf = ColorStateList.valueOf(i);
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (valueOf == null) {
            roundRectDrawable.getClass();
            valueOf = ColorStateList.valueOf(0);
        }
        roundRectDrawable.mBackground = valueOf;
        roundRectDrawable.mPaint.setColor(valueOf.getColorForState(roundRectDrawable.getState(), roundRectDrawable.mBackground.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    public void setCardElevation(float f) {
        ((CardView) this.mCardViewDelegate.this$0).setElevation(f);
    }

    public void setMaxCardElevation(float f) {
        DebugUtils.setMaxElevation(this.mCardViewDelegate, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z;
            AnonymousClass1 anonymousClass1 = this.mCardViewDelegate;
            DebugUtils.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
        }
    }

    public void setRadius(float f) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (f == roundRectDrawable.mRadius) {
            return;
        }
        roundRectDrawable.mRadius = f;
        roundRectDrawable.updateBounds(null);
        roundRectDrawable.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding != z) {
            this.mCompatPadding = z;
            AnonymousClass1 anonymousClass1 = this.mCardViewDelegate;
            DebugUtils.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.cardview.widget.CardView$1, reason: invalid class name */
    public final class AnonymousClass1 implements ActionMode.Callback, ZoomCompat, InactiveSurfaceCloser, FutureCallback, SubcomposeSlotReusePolicy, DraggableState, RecomposeScopeOwner {
        public final /* synthetic */ int $r8$classId;
        public Object mCardBackground;
        public Object this$0;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 9:
                    this.mCardBackground = new RejectOperationCameraCaptureSession();
                    this.this$0 = AtomicFU.atomic(EmptyList.INSTANCE);
                    break;
                case 10:
                    CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks cameraInteropStateCallbackRepository$CameraDeviceStateCallbacks = new CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks();
                    cameraInteropStateCallbackRepository$CameraDeviceStateCallbacks.callbacks = AtomicFU.atomic(EmptyList.INSTANCE);
                    this.mCardBackground = cameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;
                    this.this$0 = new AnonymousClass1(9);
                    break;
                case 11:
                    EmptySet emptySet = EmptySet.INSTANCE;
                    EmptyMap emptyMap = EmptyMap.INSTANCE;
                    this.mCardBackground = emptySet;
                    this.this$0 = emptyMap;
                    break;
                case OffsetKt.Horizontal /* 15 */:
                    this.mCardBackground = (ImageCaptureFailedForSpecificCombinationQuirk) DeviceQuirks.sQuirks.get(ImageCaptureFailedForSpecificCombinationQuirk.class);
                    this.this$0 = (PreviewGreenTintQuirk) DeviceQuirks.sQuirks.get(PreviewGreenTintQuirk.class);
                    break;
                case 20:
                    this.mCardBackground = new VelocityTracker1D(0);
                    this.this$0 = new VelocityTracker1D(0);
                    break;
                case 23:
                    TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
                    Float valueOf = Float.valueOf(0.0f);
                    this.this$0 = new AnimationState(twoWayConverterImpl, valueOf, (AnimationVector) twoWayConverterImpl.convertToVector.invoke(valueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
                    break;
                case 26:
                    this.mCardBackground = new LinkedHashMap();
                    this.this$0 = new LinkedHashMap();
                    break;
                case 29:
                    this.mCardBackground = new MutableScatterMap();
                    this.this$0 = new MutableScatterMap();
                    break;
                default:
                    this.mCardBackground = new Object();
                    this.this$0 = new ArrayList();
                    break;
            }
        }

        @Override // androidx.camera.camera2.compat.ZoomCompat
        public Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
            useCaseCameraRequestControl.getClass();
            Rect rect = (Rect) this.this$0;
            if (Math.abs(1.0f) < Math.ulp(Math.abs(1.0f)) * 2.0d && Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "ZoomCompat: Invalid zoom ratio of 0.0f passed in, defaulting to 1.0f");
            }
            float width = rect.width() / 1.0f;
            float height = rect.height() / 1.0f;
            float width2 = (rect.width() - width) / 2.0f;
            float height2 = (rect.height() - height) / 2.0f;
            Map singletonMap = Collections.singletonMap(CaptureRequest.SCALER_CROP_REGION, new Rect((int) width2, (int) height2, (int) (width2 + width), (int) (height2 + height)));
            singletonMap.getClass();
            return useCaseCameraRequestControl.setParametersAsync(singletonMap, UseCaseCameraKt.defaultOptionPriority);
        }

        @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
        public boolean areCompatible(Object obj, Object obj2) {
            LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) this.mCardBackground;
            return Intrinsics.areEqual(lazyLayoutItemContentFactory.getContentType(obj), lazyLayoutItemContentFactory.getContentType(obj2));
        }

        public StreamSpecQueryResult calculateSuggestedStreamSpecs(int i, CameraInfoInternal cameraInfoInternal, ArrayList arrayList, ArrayList arrayList2, CameraConfig cameraConfig, Range range, boolean z) {
            SupportedSurfaceCombination supportedSurfaceCombination;
            cameraInfoInternal.getClass();
            cameraConfig.getClass();
            range.getClass();
            ArrayList arrayList3 = new ArrayList();
            String cameraId = cameraInfoInternal.getCameraId();
            cameraId.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                UseCase useCase = (UseCase) it.next();
                AutoValue_StreamSpec autoValue_StreamSpec = useCase.mAttachedStreamSpec;
                if (autoValue_StreamSpec == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Attached stream spec cannot be null for already attached use cases.");
                    return null;
                }
                CameraSurfaceAdapter cameraSurfaceAdapter = (CameraSurfaceAdapter) this.this$0;
                if (cameraSurfaceAdapter == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                    return null;
                }
                int inputFormat = useCase.mCurrentConfig.getInputFormat();
                Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
                if (attachedSurfaceResolution == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Attached surface resolution cannot be null for already attached use cases.");
                    return null;
                }
                StreamUseCase streamUseCase = useCase.mCurrentConfig.getStreamUseCase();
                RelationUtil.checkArgument("No such camera id in supported combination list: ".concat(cameraId), cameraSurfaceAdapter.supportedSurfaceCombinationMap.containsKey(cameraId));
                synchronized (cameraSurfaceAdapter.lock) {
                    supportedSurfaceCombination = (SupportedSurfaceCombination) cameraSurfaceAdapter.supportedSurfaceCombinationMap.get(cameraId);
                }
                if (supportedSurfaceCombination == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("No such camera id in supported combination list: ".concat(cameraId));
                    return null;
                }
                SurfaceConfig transformSurfaceConfig = supportedSurfaceCombination.transformSurfaceConfig(i, inputFormat, attachedSurfaceResolution, streamUseCase);
                int inputFormat2 = useCase.mCurrentConfig.getInputFormat();
                Size attachedSurfaceResolution2 = useCase.getAttachedSurfaceResolution();
                attachedSurfaceResolution2.getClass();
                DynamicRange dynamicRange = autoValue_StreamSpec.dynamicRange;
                ArrayList arrayList4 = new ArrayList();
                if (useCase instanceof StreamSharing) {
                    Iterator it2 = ((StreamSharing) useCase).mVirtualCameraAdapter.mChildren.iterator();
                    while (it2.hasNext()) {
                        arrayList4.add(((UseCase) it2.next()).mCurrentConfig.getCaptureType());
                    }
                } else {
                    arrayList4.add(useCase.mCurrentConfig.getCaptureType());
                }
                Config config = autoValue_StreamSpec.implementationOptions;
                int sessionType = useCase.mCurrentConfig.getSessionType();
                Range targetFrameRate = useCase.mCurrentConfig.getTargetFrameRate(AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
                if (targetFrameRate == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return null;
                }
                boolean isStrictFrameRateRequired = useCase.mCurrentConfig.isStrictFrameRateRequired();
                UseCaseConfig useCaseConfig = useCase.mCurrentConfig;
                Size attachedSurfaceResolution3 = useCase.getAttachedSurfaceResolution();
                attachedSurfaceResolution3.getClass();
                AutoValue_AttachedSurfaceInfo autoValue_AttachedSurfaceInfo = new AutoValue_AttachedSurfaceInfo(transformSurfaceConfig, inputFormat2, attachedSurfaceResolution2, dynamicRange, arrayList4, config, sessionType, targetFrameRate, isStrictFrameRateRequired, useCaseConfig.getCustomMaxFrameRate(attachedSurfaceResolution3));
                arrayList3.add(autoValue_AttachedSurfaceInfo);
                linkedHashMap2.put(autoValue_AttachedSurfaceInfo, useCase);
                linkedHashMap.put(useCase, autoValue_StreamSpec);
            }
            Pair pair = new Pair(linkedHashMap, linkedHashMap2);
            Object obj = pair.second;
            obj.getClass();
            int i2 = CameraConfig.CC.$r8$clinit;
            StreamSpecQueryResult calculateSuggestedStreamSpecsForNewUseCases = calculateSuggestedStreamSpecsForNewUseCases(i, cameraInfoInternal, arrayList, (Map) obj, CameraUseCaseAdapter.getConfigs(arrayList, (UseCaseConfigFactory) ((OptionsBundle) ((BiometricPrompt) cameraConfig).getConfig()).retrieveOption(CameraConfig.OPTION_USECASE_CONFIG_FACTORY, UseCaseConfigFactory.EMPTY_INSTANCE), (androidx.camera.camera2.adapter.CameraUseCaseAdapter) this.mCardBackground, range), z);
            Object obj2 = pair.first;
            obj2.getClass();
            return new StreamSpecQueryResult(calculateSuggestedStreamSpecsForNewUseCases.maxSupportedFrameRate, MapsKt__MapsKt.plus((Map) obj2, calculateSuggestedStreamSpecsForNewUseCases.streamSpecs));
        }

        public StreamSpecQueryResult calculateSuggestedStreamSpecsForNewUseCases(int i, CameraInfoInternal cameraInfoInternal, ArrayList arrayList, Map map, HashMap hashMap, boolean z) {
            int i2;
            Rect rect;
            SupportedSurfaceCombination supportedSurfaceCombination;
            String cameraId = cameraInfoInternal.getCameraId();
            cameraId.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (arrayList.isEmpty()) {
                i2 = Integer.MAX_VALUE;
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                try {
                    rect = cameraInfoInternal.getSensorRect();
                } catch (NullPointerException unused) {
                    rect = null;
                }
                SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter(cameraInfoInternal, rect != null ? TransformUtils.rectToSize(rect) : null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    UseCase useCase = (UseCase) it.next();
                    Object obj = hashMap.get(useCase);
                    if (obj == null) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                        return null;
                    }
                    CameraUseCaseAdapter.ConfigPair configPair = (CameraUseCaseAdapter.ConfigPair) obj;
                    UseCaseConfig mergeConfigs = useCase.mergeConfigs(cameraInfoInternal, configPair.mExtendedConfig, configPair.mCameraConfig);
                    mergeConfigs.getClass();
                    linkedHashMap2.put(mergeConfigs, useCase);
                    linkedHashMap3.put(mergeConfigs, supportedOutputSizesSorter.getSortedSupportedOutputSizes(mergeConfigs));
                }
                VideoStabilization videoStabilization = SQLite.getVideoStabilization(arrayList, new BackHandlerKt$$ExternalSyntheticLambda2(7, hashMap, cameraInfoInternal));
                CameraSurfaceAdapter cameraSurfaceAdapter = (CameraSurfaceAdapter) this.this$0;
                if (cameraSurfaceAdapter == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                    return null;
                }
                ArrayList arrayList2 = new ArrayList(map.keySet());
                boolean containsVideoCapture = SQLite.containsVideoCapture(arrayList);
                RelationUtil.checkArgument("No such camera id in supported combination list: ".concat(cameraId), cameraSurfaceAdapter.supportedSurfaceCombinationMap.containsKey(cameraId));
                synchronized (cameraSurfaceAdapter.lock) {
                    supportedSurfaceCombination = (SupportedSurfaceCombination) cameraSurfaceAdapter.supportedSurfaceCombinationMap.get(cameraId);
                }
                if (supportedSurfaceCombination == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("No such camera id in supported combination list: ".concat(cameraId));
                    return null;
                }
                SurfaceStreamSpecQueryResult suggestedStreamSpecifications = supportedSurfaceCombination.getSuggestedStreamSpecifications(i, arrayList2, linkedHashMap3, videoStabilization, containsVideoCapture, z);
                LinkedHashMap linkedHashMap4 = suggestedStreamSpecifications.useCaseStreamSpecs;
                LinkedHashMap linkedHashMap5 = suggestedStreamSpecifications.attachedSurfaceStreamSpecs;
                i2 = suggestedStreamSpecifications.maxSupportedFrameRate;
                for (Map.Entry entry : linkedHashMap2.entrySet()) {
                    Object value = entry.getValue();
                    Object obj2 = linkedHashMap4.get(entry.getKey());
                    if (obj2 == null) {
                        UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                        return null;
                    }
                    linkedHashMap.put(value, obj2);
                }
                for (Map.Entry entry2 : linkedHashMap5.entrySet()) {
                    if (map.containsKey(entry2.getKey())) {
                        Object obj3 = map.get(entry2.getKey());
                        if (obj3 == null) {
                            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                            return null;
                        }
                        linkedHashMap.put(obj3, entry2.getValue());
                    }
                }
            }
            return new StreamSpecQueryResult(i2, linkedHashMap);
        }

        @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
        public void closeAll() {
            synchronized (this.mCardBackground) {
                try {
                    Iterator it = ((ArrayList) this.this$0).iterator();
                    while (it.hasNext()) {
                        InactiveSurfaceCloserImpl$ConfiguredOutput inactiveSurfaceCloserImpl$ConfiguredOutput = (InactiveSurfaceCloserImpl$ConfiguredOutput) it.next();
                        inactiveSurfaceCloserImpl$ConfiguredOutput.graph.m78setSurfaceNYG5g8E(inactiveSurfaceCloserImpl$ConfiguredOutput.streamId, null);
                        inactiveSurfaceCloserImpl$ConfiguredOutput.deferrableSurface.close();
                    }
                    ((ArrayList) this.this$0).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
        /* renamed from: configure-hB7JTeY */
        public void mo17configurehB7JTeY(int i, DeferrableSurface deferrableSurface, CameraGraphImpl cameraGraphImpl) {
            deferrableSurface.getClass();
            synchronized (this.mCardBackground) {
                ((ArrayList) this.this$0).add(new InactiveSurfaceCloserImpl$ConfiguredOutput(i, deferrableSurface, cameraGraphImpl));
            }
        }

        @Override // androidx.compose.foundation.gestures.DraggableState
        public Object drag(Function2 function2, SuspendLambda suspendLambda) {
            Object anchoredDrag = ((AnchoredDraggableState) this.this$0).anchoredDrag(MutatePriority.UserInput, new WorkConstraintsTracker$track$$inlined$combine$1$3(this, function2, null), suspendLambda);
            return anchoredDrag == CoroutineSingletons.COROUTINE_SUSPENDED ? anchoredDrag : Unit.INSTANCE;
        }

        public InputMethodManager getImm() {
            return (InputMethodManager) ((Lazy) this.this$0).getValue();
        }

        @Override // androidx.camera.camera2.compat.ZoomCompat
        public float getMaxZoomRatio() {
            CameraMetadata cameraMetadata = ((CameraPipeCameraProperties) this.mCardBackground).metadata;
            CameraCharacteristics.Key key = CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM;
            key.getClass();
            Object valueOf = Float.valueOf(1.0f);
            Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) cameraMetadata;
            camera2CameraMetadata.getClass();
            Object obj = camera2CameraMetadata.get(key);
            if (obj != null) {
                valueOf = obj;
            }
            Float f = (Float) valueOf;
            float floatValue = f.floatValue();
            if (Math.abs(floatValue) >= Math.ulp(Math.abs(floatValue)) * 2.0d) {
                return f.floatValue();
            }
            if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "Invalid max zoom ratio of " + f + " detected, defaulting to 1.0f");
            }
            return 1.0f;
        }

        @Override // androidx.camera.camera2.compat.ZoomCompat
        public float getMinZoomRatio() {
            return 1.0f;
        }

        @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
        public void getSlotsToRetain(Values values) {
            MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.this$0;
            mutableObjectIntMap.clear();
            MutableOrderedScatterSet mutableOrderedScatterSet = (MutableOrderedScatterSet) values.parent;
            Object[] objArr = mutableOrderedScatterSet.elements;
            long[] jArr = mutableOrderedScatterSet.nodes;
            int i = mutableOrderedScatterSet.tail;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
                Object obj = objArr[i];
                Object contentType = ((LazyLayoutItemContentFactory) this.mCardBackground).getContentType(obj);
                int findKeyIndex = mutableObjectIntMap.findKeyIndex(contentType);
                int i3 = findKeyIndex >= 0 ? mutableObjectIntMap.values[findKeyIndex] : 0;
                if (i3 == 7) {
                    values.remove(obj);
                } else {
                    mutableObjectIntMap.set(i3 + 1, contentType);
                }
                i = i2;
            }
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
            InvalidationResult invalidationResult;
            CompositionImpl compositionImpl = (CompositionImpl) this.mCardBackground;
            if (compositionImpl == null) {
                compositionImpl = null;
            }
            InvalidationResult invalidationResult2 = InvalidationResult.IGNORED;
            if (compositionImpl == null || (invalidationResult = compositionImpl.invalidate(recomposeScopeImpl, obj)) == null) {
                invalidationResult = invalidationResult2;
            }
            if (invalidationResult != invalidationResult2) {
                return invalidationResult;
            }
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) this.this$0;
            movableContentStateReference.invalidations = CollectionsKt.plus(movableContentStateReference.invalidations, new kotlin.Pair(recomposeScopeImpl, obj));
            return InvalidationResult.SCHEDULED;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return ((ActionMode.Callback) this.mCardBackground).onActionItemClicked(actionMode, menuItem);
        }

        /* renamed from: onClosed-rphkYDA, reason: not valid java name */
        public void m100onClosedrphkYDA(String str) {
            str.getClass();
            Iterator it = ((List) ((AtomicRef) this.this$0).value).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onClosed((RejectOperationCameraCaptureSession) this.mCardBackground);
            }
        }

        /* renamed from: onConfigureFailed-rphkYDA, reason: not valid java name */
        public void m101onConfigureFailedrphkYDA(String str) {
            str.getClass();
            Iterator it = ((List) ((AtomicRef) this.this$0).value).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onConfigureFailed((RejectOperationCameraCaptureSession) this.mCardBackground);
            }
        }

        /* renamed from: onConfigured-rphkYDA, reason: not valid java name */
        public void m102onConfiguredrphkYDA(String str) {
            str.getClass();
            Iterator it = ((List) ((AtomicRef) this.this$0).value).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onConfigured((RejectOperationCameraCaptureSession) this.mCardBackground);
            }
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return ((ActionMode.Callback) this.mCardBackground).onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            ((ActionMode.Callback) this.mCardBackground).onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) this.this$0;
            if (appCompatDelegateImpl.mActionModePopup != null) {
                appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(appCompatDelegateImpl.mShowActionModePopup);
            }
            if (appCompatDelegateImpl.mActionModeView != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.mFadeAnim;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.cancel();
                }
                ViewPropertyAnimatorCompat animate = ViewCompat.animate(appCompatDelegateImpl.mActionModeView);
                animate.alpha(0.0f);
                appCompatDelegateImpl.mFadeAnim = animate;
                animate.setListener(new AppCompatDelegateImpl.AnonymousClass7(2, this));
            }
            appCompatDelegateImpl.mActionMode = null;
            ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            appCompatDelegateImpl.updateBackInvokedCallbackState();
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(Throwable th) {
            switch (this.$r8$classId) {
                case 16:
                    int i = ((SurfaceEdge) this.mCardBackground).mTargets;
                    if (i == 2 && (th instanceof CancellationException)) {
                        Utf8.SafeProcessor.d("SurfaceProcessorNode", "Downstream VideoCapture failed to provide Surface.");
                        return;
                    } else {
                        Utf8.SafeProcessor.w("SurfaceProcessorNode", "Downstream node failed to provide Surface. Target: ".concat(DBUtil.getHumanReadableName(i)), th);
                        return;
                    }
                case 17:
                    int i2 = ((SurfaceEdge) this.mCardBackground).mTargets;
                    if (i2 == 2 && (th instanceof CancellationException)) {
                        Utf8.SafeProcessor.d("DualSurfaceProcessorNode", "Downstream VideoCapture failed to provide Surface.");
                        return;
                    } else {
                        Utf8.SafeProcessor.w("DualSurfaceProcessorNode", "Downstream node failed to provide Surface. Target: ".concat(DBUtil.getHumanReadableName(i2)), th);
                        return;
                    }
                default:
                    throw new IllegalStateException("SurfaceReleaseFuture did not complete nicely.", th);
            }
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ViewGroup viewGroup = ((AppCompatDelegateImpl) this.this$0).mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            return ((ActionMode.Callback) this.mCardBackground).onPrepareActionMode(actionMode, menu);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(Object obj) {
            switch (this.$r8$classId) {
                case 16:
                    SurfaceOutputImpl surfaceOutputImpl = (SurfaceOutputImpl) obj;
                    surfaceOutputImpl.getClass();
                    ((DefaultSurfaceProcessor) ((MenuHostHelper) this.this$0).mOnInvalidateMenuCallback).onOutputSurface(surfaceOutputImpl);
                    break;
                case 17:
                    SurfaceOutputImpl surfaceOutputImpl2 = (SurfaceOutputImpl) obj;
                    surfaceOutputImpl2.getClass();
                    ((SurfaceProcessorInternal) ((LocalStore.AnonymousClass7) this.this$0).val$queryString).onOutputSurface(surfaceOutputImpl2);
                    break;
                default:
                    RelationUtil.checkState("Unexpected result from SurfaceRequest. Surface was provided twice.", ((AutoValue_SurfaceRequest_Result) obj).resultCode != 3);
                    Utf8.SafeProcessor.d("TextureViewImpl", "SurfaceTexture about to manually be destroyed");
                    ((SurfaceTexture) this.mCardBackground).release();
                    TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
                    if (textureViewImplementation.mDetachedSurfaceTexture != null) {
                        textureViewImplementation.mDetachedSurfaceTexture = null;
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser
        public void onSurfaceInactive(DeferrableSurface deferrableSurface) {
            synchronized (this.mCardBackground) {
                Iterator it = ((ArrayList) this.this$0).iterator();
                while (it.hasNext()) {
                    InactiveSurfaceCloserImpl$ConfiguredOutput inactiveSurfaceCloserImpl$ConfiguredOutput = (InactiveSurfaceCloserImpl$ConfiguredOutput) it.next();
                    inactiveSurfaceCloserImpl$ConfiguredOutput.getClass();
                    if (Intrinsics.areEqual(inactiveSurfaceCloserImpl$ConfiguredOutput.deferrableSurface, deferrableSurface)) {
                        deferrableSurface.close();
                    }
                }
            }
        }

        /* renamed from: openCamera-RzXb1QE, reason: not valid java name */
        public void m103openCameraRzXb1QE(String str, CameraDevice.StateCallback stateCallback) {
            Threads threads = (Threads) this.this$0;
            CameraManager cameraManager = (CameraManager) ((Provider) this.mCardBackground).get();
            try {
                Trace.beginSection(((Object) CameraId.m35toStringimpl(str)) + "#openCamera");
                if (Build.VERSION.SDK_INT >= 28) {
                    cameraManager.getClass();
                    Api28Compat.openCamera(cameraManager, str, (Executor) threads._camera2Executor.getValue(), stateCallback);
                } else {
                    cameraManager.openCamera(str, stateCallback, threads.getCamera2Handler());
                }
            } finally {
                Trace.endSection();
            }
        }

        @Override // androidx.camera.camera2.compat.ZoomCompat
        public Deferred resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
            useCaseCameraRequestControl.getClass();
            return useCaseCameraRequestControl.removeParametersAsync(IntOffsetKt.listOf(CaptureRequest.SCALER_CROP_REGION));
        }

        public void setShadowPadding(int i, int i2, int i3, int i4) {
            CardView cardView = (CardView) this.this$0;
            cardView.mShadowBounds.set(i, i2, i3, i4);
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }

        public void stop$foundation() {
            StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.mCardBackground;
            AnimationVector animationVector = null;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            this.this$0 = new AnimationState(ArcSplineKt.FloatToVector, Float.valueOf(0.0f), animationVector, 60);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void updateScrollDeltaForApproach$foundation(float f, Density density, CoroutineScope coroutineScope) {
            if (f <= density.mo177toPx0680j_4(1.0f)) {
                return;
            }
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Continuation continuation = null;
            Object[] objArr = 0;
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                float floatValue = ((Number) ((AnimationState) this.this$0).value$delegate.getValue()).floatValue();
                StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.mCardBackground;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                AnimationState animationState = (AnimationState) this.this$0;
                if (animationState.isRunning) {
                    this.this$0 = ArcSplineKt.copy$default(animationState, floatValue - f);
                } else {
                    this.this$0 = new AnimationState(ArcSplineKt.FloatToVector, Float.valueOf(-f), objArr == true ? 1 : 0, 60);
                }
                this.mCardBackground = JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(this, continuation, 20), 3);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }

        public void usedContainer(MovableContentStateReference movableContentStateReference) {
            MutableScatterMap mutableScatterMap = (MutableScatterMap) this.mCardBackground;
            Object obj = ((MutableScatterMap) this.this$0).get(movableContentStateReference);
            if (obj != null) {
                int i = 7;
                if (!(obj instanceof MutableObjectList)) {
                    MultiValueMap.m383removeValueIfimpl(mutableScatterMap, (MovableContent) obj, new DiskLruCache$$ExternalSyntheticLambda0(i, movableContentStateReference));
                    return;
                }
                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                Object[] objArr = mutableObjectList.content;
                int i2 = mutableObjectList._size;
                for (int i3 = 0; i3 < i2; i3++) {
                    Object obj2 = objArr[i3];
                    obj2.getClass();
                    MultiValueMap.m383removeValueIfimpl(mutableScatterMap, (MovableContent) obj2, new DiskLruCache$$ExternalSyntheticLambda0(i, movableContentStateReference));
                }
            }
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public void recomposeScopeReleased() {
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public void recordReadOf(Object obj) {
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.mCardBackground = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.mCardBackground = obj;
            this.this$0 = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, boolean z) {
            this.$r8$classId = i;
        }

        public AnonymousClass1(View view) {
            this.$r8$classId = 1;
            this.mCardBackground = view;
            this.this$0 = ResultKt.lazy(LazyThreadSafetyMode.NONE, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(25, this));
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public AnonymousClass1(ICustomTabsService iCustomTabsService, CustomTabsClient$2 customTabsClient$2, ComponentName componentName) {
            this.$r8$classId = 5;
            this.mCardBackground = customTabsClient$2;
            this.this$0 = componentName;
        }

        public AnonymousClass1(CameraPipeCameraProperties cameraPipeCameraProperties) {
            this.$r8$classId = 6;
            this.mCardBackground = cameraPipeCameraProperties;
            CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
            CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
            key.getClass();
            Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
            obj.getClass();
            this.this$0 = (Rect) obj;
        }

        public AnonymousClass1(CameraGraph$Config cameraGraph$Config, CameraGraphId cameraGraphId) {
            this.$r8$classId = 13;
            cameraGraph$Config.getClass();
            this.mCardBackground = cameraGraph$Config;
            this.this$0 = cameraGraphId;
        }

        public AnonymousClass1(Provider provider, Threads threads) {
            this.$r8$classId = 12;
            provider.getClass();
            threads.getClass();
            this.mCardBackground = provider;
            this.this$0 = threads;
        }

        public AnonymousClass1(androidx.camera.camera2.adapter.CameraUseCaseAdapter cameraUseCaseAdapter) {
            this.$r8$classId = 14;
            this.mCardBackground = cameraUseCaseAdapter;
            this.this$0 = null;
        }

        public AnonymousClass1(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
            this.$r8$classId = 22;
            this.mCardBackground = lazyLayoutItemContentFactory;
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.EmptyObjectIntMap;
            this.this$0 = new MutableObjectIntMap();
        }

        public AnonymousClass1(AnchoredDraggableState anchoredDraggableState) {
            this.$r8$classId = 27;
            this.this$0 = anchoredDraggableState;
            this.mCardBackground = new DefaultDraggableState$dragScope$1(1, anchoredDraggableState);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (colorStateList == null) {
            roundRectDrawable.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        roundRectDrawable.mBackground = colorStateList;
        roundRectDrawable.mPaint.setColor(colorStateList.getColorForState(roundRectDrawable.getState(), roundRectDrawable.mBackground.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.fsck.k9.R.attr.cardViewStyle);
    }

    public CardView(Context context) {
        this(context, null);
    }
}
