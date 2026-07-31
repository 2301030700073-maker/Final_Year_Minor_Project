package androidx.camera.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Rational;
import android.util.Size;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.core.CameraX;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.MeteringPointFactory;
import androidx.camera.core.Preview;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.ViewPort;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import androidx.camera.core.impl.utils.futures.ListFuture;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.camera.view.internal.compat.quirk.DeviceQuirks;
import androidx.camera.view.internal.compat.quirk.SurfaceViewNotCroppedByParentQuirk;
import androidx.camera.view.internal.compat.quirk.SurfaceViewStretchedQuirk;
import androidx.camera.view.transform.OutputTransform;
import androidx.collection.LongSparseArray;
import androidx.collection.MutableLongList;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.FloatSpringSpec;
import androidx.compose.animation.core.VectorizedAnimationSpecKt;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChangeEventProducer$PointerInputData;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.font.PlatformTypefacesApi28;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import androidx.room.util.RelationUtil;
import androidx.tracing.TraceApi29Impl;
import androidx.transition.Transition;
import androidx.work.WorkRequest;
import com.bumptech.glide.load.Option;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.minidns.dnsqueryresult.DnsQueryResult;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewView extends FrameLayout {
    public final AtomicReference mActiveStreamStateObserver;
    public CameraInfoInternal mCameraInfoInternal;
    public final DisplayRotationListener mDisplayRotationListener;
    public WorkRequest.Builder mImplementation;
    public ImplementationMode mImplementationMode;
    public final PreviewView$$ExternalSyntheticLambda1 mOnLayoutChangeListener;
    public final MutableLiveData mPreviewStreamStateLiveData;
    public final PreviewTransformation mPreviewTransform;
    public final PreviewViewMeteringPointFactory mPreviewViewMeteringPointFactory;
    public final ScreenFlashView mScreenFlashView;
    public final AnonymousClass1 mSurfaceProvider;
    public boolean mUseDisplayRotation;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum ImplementationMode {
        PERFORMANCE(0),
        /* JADX INFO: Fake field, exist only in values array */
        COMPATIBLE(1);

        public final int mId;

        ImplementationMode(int i) {
            this.mId = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum ScaleType {
        /* JADX INFO: Fake field, exist only in values array */
        FILL_START(0),
        FILL_CENTER(1),
        /* JADX INFO: Fake field, exist only in values array */
        FILL_END(2),
        FIT_START(3),
        FIT_CENTER(4),
        FIT_END(5);

        public final int mId;

        ScaleType(int i) {
            this.mId = i;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StreamState {
        public static final /* synthetic */ StreamState[] $VALUES;
        public static final StreamState IDLE;
        public static final StreamState STREAMING;

        static {
            StreamState streamState = new StreamState("IDLE", 0);
            IDLE = streamState;
            StreamState streamState2 = new StreamState("STREAMING", 1);
            STREAMING = streamState2;
            $VALUES = new StreamState[]{streamState, streamState2};
        }

        public static StreamState valueOf(String str) {
            return (StreamState) Enum.valueOf(StreamState.class, str);
        }

        public static StreamState[] values() {
            return (StreamState[]) $VALUES.clone();
        }
    }

    public PreviewView(Context context) {
        super(context, null, 0, 0);
        this.mImplementationMode = ImplementationMode.PERFORMANCE;
        PreviewTransformation previewTransformation = new PreviewTransformation();
        previewTransformation.mScaleType = ScaleType.FILL_CENTER;
        this.mPreviewTransform = previewTransformation;
        this.mUseDisplayRotation = true;
        this.mPreviewStreamStateLiveData = new MutableLiveData(StreamState.IDLE);
        this.mActiveStreamStateObserver = new AtomicReference();
        this.mPreviewViewMeteringPointFactory = new PreviewViewMeteringPointFactory(previewTransformation);
        int i = 0;
        this.mDisplayRotationListener = new DisplayRotationListener(i, this);
        this.mOnLayoutChangeListener = new PreviewView$$ExternalSyntheticLambda1(i, this);
        this.mSurfaceProvider = new AnonymousClass1(i, this);
        Validate.checkMainThread();
        Resources.Theme theme = context.getTheme();
        int[] iArr = R$styleable.PreviewView;
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(null, iArr, 0, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, null, obtainStyledAttributes, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(1, previewTransformation.mScaleType.mId);
            for (ScaleType scaleType : ScaleType.values()) {
                if (scaleType.mId == integer) {
                    setScaleType(scaleType);
                    int integer2 = obtainStyledAttributes.getInteger(0, 0);
                    for (ImplementationMode implementationMode : ImplementationMode.values()) {
                        if (implementationMode.mId == integer2) {
                            setImplementationMode(implementationMode);
                            obtainStyledAttributes.recycle();
                            new StreamSharing$$ExternalSyntheticLambda0(3);
                            context.getClass();
                            ViewConfiguration.get(context).getScaledTouchSlop();
                            final Transition.AnonymousClass1 anonymousClass1 = new Transition.AnonymousClass1();
                            new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: androidx.camera.viewfinder.core.ZoomGestureDetector$gestureDetector$1
                                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                                public final boolean onDoubleTap(MotionEvent motionEvent) {
                                    motionEvent.getClass();
                                    motionEvent.getX();
                                    motionEvent.getY();
                                    return true;
                                }
                            });
                            if (getBackground() == null) {
                                setBackgroundColor(getContext().getColor(R.color.black));
                            }
                            ScreenFlashView screenFlashView = new ScreenFlashView(context, null, 0, 0);
                            screenFlashView.setBackgroundColor(-1);
                            screenFlashView.setAlpha(0.0f);
                            screenFlashView.setElevation(Float.MAX_VALUE);
                            this.mScreenFlashView = screenFlashView;
                            screenFlashView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                            return;
                        }
                    }
                    throw new IllegalArgumentException("Unknown implementation mode id " + integer2);
                }
            }
            throw new IllegalArgumentException("Unknown scale type id " + integer);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private DisplayManager getDisplayManager() {
        Context context = getContext();
        if (context == null) {
            return null;
        }
        return (DisplayManager) context.getSystemService("display");
    }

    private ImageCapture.ScreenFlash getScreenFlashInternal() {
        return this.mScreenFlashView.getScreenFlash();
    }

    private int getViewPortScaleType() {
        int ordinal = getScaleType().ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3 && ordinal != 4 && ordinal != 5) {
                    StreamSharing$$ExternalSyntheticLambda0.m(getScaleType(), "Unexpected scale type: ");
                    return 0;
                }
            }
        }
        return i;
    }

    private void setScreenFlashUiInfo(ImageCapture.ScreenFlash screenFlash) {
        Utf8.SafeProcessor.d("PreviewView", "setScreenFlashUiInfo: mCameraController is null!");
    }

    public static boolean shouldUseTextureView(SurfaceRequest surfaceRequest, ImplementationMode implementationMode) {
        boolean equals = surfaceRequest.mCamera.getCameraInfoInternal().getImplementationType().equals("androidx.camera.camera2.legacy");
        boolean z = (DeviceQuirks.sQuirks.get(SurfaceViewStretchedQuirk.class) == null && DeviceQuirks.sQuirks.get(SurfaceViewNotCroppedByParentQuirk.class) == null) ? false : true;
        if (Build.VERSION.SDK_INT > 24 && !equals && !z) {
            int ordinal = implementationMode.ordinal();
            if (ordinal == 0) {
                return false;
            }
            if (ordinal != 1) {
                Regex$$ExternalSyntheticBUOutline0.m$2(implementationMode, "Invalid implementation mode: ");
                return false;
            }
        }
        return true;
    }

    public Bitmap getBitmap() {
        Validate.checkMainThread();
        WorkRequest.Builder builder = this.mImplementation;
        if (builder == null) {
            return null;
        }
        FrameLayout frameLayout = (FrameLayout) builder.workSpec;
        Bitmap previewBitmap = builder.getPreviewBitmap();
        if (previewBitmap == null) {
            return null;
        }
        PreviewTransformation previewTransformation = (PreviewTransformation) builder.tags;
        Size size = new Size(frameLayout.getWidth(), frameLayout.getHeight());
        int layoutDirection = frameLayout.getLayoutDirection();
        if (!previewTransformation.isTransformationInfoReady()) {
            return previewBitmap;
        }
        Matrix textureViewCorrectionMatrix = previewTransformation.getTextureViewCorrectionMatrix();
        RectF transformedSurfaceRect = previewTransformation.getTransformedSurfaceRect(layoutDirection, size);
        Bitmap createBitmap = Bitmap.createBitmap(size.getWidth(), size.getHeight(), previewBitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Matrix matrix = new Matrix();
        matrix.postConcat(textureViewCorrectionMatrix);
        matrix.postScale(transformedSurfaceRect.width() / previewTransformation.mResolution.getWidth(), transformedSurfaceRect.height() / previewTransformation.mResolution.getHeight());
        matrix.postTranslate(transformedSurfaceRect.left, transformedSurfaceRect.top);
        canvas.drawBitmap(previewBitmap, matrix, new Paint(7));
        return createBitmap;
    }

    public CameraController getController() {
        Validate.checkMainThread();
        return null;
    }

    public Display getDefaultDisplay() {
        if (getDisplay() == null) {
            return null;
        }
        Display display = getDisplayManager().getDisplay(0);
        return display != null ? display : getDisplay();
    }

    public ImplementationMode getImplementationMode() {
        Validate.checkMainThread();
        return this.mImplementationMode;
    }

    public MeteringPointFactory getMeteringPointFactory() {
        Validate.checkMainThread();
        return this.mPreviewViewMeteringPointFactory;
    }

    public OutputTransform getOutputTransform() {
        Matrix matrix;
        PreviewTransformation previewTransformation = this.mPreviewTransform;
        Validate.checkMainThread();
        try {
            matrix = previewTransformation.getSurfaceToPreviewViewMatrix(getLayoutDirection(), new Size(getWidth(), getHeight()));
        } catch (IllegalStateException unused) {
            matrix = null;
        }
        Rect rect = previewTransformation.mSurfaceCropRect;
        if (matrix == null || rect == null) {
            Utf8.SafeProcessor.d("PreviewView", "Transform info is not ready");
            return null;
        }
        RectF rectF = TransformUtils.NORMALIZED_RECT;
        RectF rectF2 = new RectF(rect);
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(TransformUtils.NORMALIZED_RECT, rectF2, Matrix.ScaleToFit.FILL);
        matrix.preConcat(matrix2);
        if (this.mImplementation instanceof TextureViewImplementation) {
            matrix.postConcat(getMatrix());
        } else if (!getMatrix().isIdentity()) {
            Utf8.SafeProcessor.w("PreviewView", "PreviewView needs to be in COMPATIBLE mode for the transform to work correctly.");
        }
        new Size(rect.width(), rect.height());
        return new OutputTransform();
    }

    public LiveData getPreviewStreamState() {
        return this.mPreviewStreamStateLiveData;
    }

    public ScaleType getScaleType() {
        Validate.checkMainThread();
        return this.mPreviewTransform.mScaleType;
    }

    public ImageCapture.ScreenFlash getScreenFlash() {
        return getScreenFlashInternal();
    }

    public Matrix getSensorToViewTransform() {
        Validate.checkMainThread();
        if (getWidth() == 0 || getHeight() == 0) {
            return null;
        }
        Size size = new Size(getWidth(), getHeight());
        int layoutDirection = getLayoutDirection();
        PreviewTransformation previewTransformation = this.mPreviewTransform;
        if (!previewTransformation.isTransformationInfoReady()) {
            return null;
        }
        Matrix matrix = new Matrix(previewTransformation.mSensorToBufferTransform);
        matrix.postConcat(previewTransformation.getSurfaceToPreviewViewMatrix(layoutDirection, size));
        return matrix;
    }

    public Preview.SurfaceProvider getSurfaceProvider() {
        Validate.checkMainThread();
        return this.mSurfaceProvider;
    }

    public ViewPort getViewPort() {
        Validate.checkMainThread();
        Display defaultDisplay = getDefaultDisplay();
        if (defaultDisplay == null) {
            return null;
        }
        defaultDisplay.getRotation();
        Validate.checkMainThread();
        if (getWidth() == 0 || getHeight() == 0) {
            return null;
        }
        new Rational(getWidth(), getHeight());
        getViewPortScaleType();
        getLayoutDirection();
        return new ViewPort();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        isInEditMode();
        DisplayManager displayManager = getDisplayManager();
        if (displayManager != null) {
            displayManager.registerDisplayListener(this.mDisplayRotationListener, new Handler(Looper.getMainLooper()));
        }
        addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        WorkRequest.Builder builder = this.mImplementation;
        if (builder != null) {
            builder.onAttachedToWindow();
        }
        Validate.checkMainThread();
        getViewPort();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        WorkRequest.Builder builder = this.mImplementation;
        if (builder != null) {
            builder.onDetachedFromWindow();
        }
        isInEditMode();
        DisplayManager displayManager = getDisplayManager();
        if (displayManager == null) {
            return;
        }
        displayManager.unregisterDisplayListener(this.mDisplayRotationListener);
    }

    public final void redrawPreview() {
        Rect rect;
        Display defaultDisplay;
        CameraInfoInternal cameraInfoInternal;
        Validate.checkMainThread();
        if (this.mImplementation != null) {
            if (this.mUseDisplayRotation && (defaultDisplay = getDefaultDisplay()) != null && (cameraInfoInternal = this.mCameraInfoInternal) != null) {
                PreviewTransformation previewTransformation = this.mPreviewTransform;
                int sensorRotationDegrees = cameraInfoInternal.getSensorRotationDegrees(defaultDisplay.getRotation());
                int rotation = defaultDisplay.getRotation();
                if (previewTransformation.mHasCameraTransform) {
                    previewTransformation.mPreviewRotationDegrees = sensorRotationDegrees;
                    previewTransformation.mTargetRotation = rotation;
                }
            }
            this.mImplementation.redrawPreview();
        }
        PreviewViewMeteringPointFactory previewViewMeteringPointFactory = this.mPreviewViewMeteringPointFactory;
        Size size = new Size(getWidth(), getHeight());
        int layoutDirection = getLayoutDirection();
        previewViewMeteringPointFactory.getClass();
        Validate.checkMainThread();
        synchronized (previewViewMeteringPointFactory) {
            try {
                if (size.getWidth() != 0 && size.getHeight() != 0 && (rect = previewViewMeteringPointFactory.mSensorRect) != null) {
                    previewViewMeteringPointFactory.mPreviewTransformation.getPreviewViewToNormalizedSensorMatrix(size, layoutDirection, rect);
                }
            } finally {
            }
        }
    }

    public void setController(CameraController cameraController) {
        Validate.checkMainThread();
        Validate.checkMainThread();
        getViewPort();
        setScreenFlashUiInfo(getScreenFlashInternal());
    }

    public void setImplementationMode(ImplementationMode implementationMode) {
        Validate.checkMainThread();
        this.mImplementationMode = implementationMode;
    }

    public void setScaleType(ScaleType scaleType) {
        Validate.checkMainThread();
        this.mPreviewTransform.mScaleType = scaleType;
        redrawPreview();
        Validate.checkMainThread();
        getViewPort();
    }

    public void setScreenFlashOverlayColor(int i) {
        this.mScreenFlashView.setBackgroundColor(i);
    }

    public void setScreenFlashWindow(Window window) {
        Validate.checkMainThread();
        this.mScreenFlashView.setScreenFlashWindow(window);
        setScreenFlashUiInfo(getScreenFlashInternal());
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DisplayRotationListener implements DisplayManager.DisplayListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ DisplayRotationListener(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return;
                default:
                    DisplayInfoManager displayInfoManager = (DisplayInfoManager) this.this$0;
                    synchronized (displayInfoManager.lock) {
                        displayInfoManager.displays = null;
                        displayInfoManager.previewSize = null;
                    }
                    return;
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            switch (this.$r8$classId) {
                case 0:
                    PreviewView previewView = (PreviewView) this.this$0;
                    Display defaultDisplay = previewView.getDefaultDisplay();
                    if (defaultDisplay == null || defaultDisplay.getDisplayId() != i) {
                        return;
                    }
                    previewView.redrawPreview();
                    return;
                default:
                    DisplayInfoManager displayInfoManager = (DisplayInfoManager) this.this$0;
                    synchronized (displayInfoManager.lock) {
                        displayInfoManager.displays = null;
                        displayInfoManager.previewSize = null;
                    }
                    return;
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return;
                default:
                    DisplayInfoManager displayInfoManager = (DisplayInfoManager) this.this$0;
                    synchronized (displayInfoManager.lock) {
                        displayInfoManager.displays = null;
                        displayInfoManager.previewSize = null;
                    }
                    return;
            }
        }

        private final void onDisplayAdded$androidx$camera$view$PreviewView$DisplayRotationListener(int i) {
        }

        private final void onDisplayRemoved$androidx$camera$view$PreviewView$DisplayRotationListener(int i) {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.view.PreviewView$1, reason: invalid class name */
    public final class AnonymousClass1 implements FutureCallback, CallbackToFutureAdapter$Resolver, Preview.SurfaceProvider, VectorizedFiniteAnimationSpec, PopupPositionProvider, RetainedValuesStore {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            Object obj = null;
            switch (i) {
                case 23:
                    this.this$0 = new LongSparseArray(obj);
                    break;
                case 24:
                    this.this$0 = new VirtualCameraCaptureResult();
                    break;
                case 25:
                    this.this$0 = new SortedSet(HitTestResultKt.DepthComparator);
                    break;
                case 26:
                    ManagedRetainedValuesStore managedRetainedValuesStore = new ManagedRetainedValuesStore();
                    this.this$0 = managedRetainedValuesStore;
                    if (!managedRetainedValuesStore.isDisposed) {
                        if (managedRetainedValuesStore.isContentComposed) {
                            PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                        }
                        managedRetainedValuesStore.purgeUnusedExitedValues();
                        managedRetainedValuesStore.isContentComposed = true;
                        break;
                    }
                    break;
                case 27:
                default:
                    new MutexImpl();
                    this.this$0 = Updater.mutableStateOf$default(null);
                    break;
                case 28:
                    this.this$0 = new Region();
                    break;
                case 29:
                    this.this$0 = Build.VERSION.SDK_INT >= 28 ? new PlatformTypefacesApi28() : new Option.AnonymousClass1();
                    break;
            }
        }

        public void add(LayoutNode layoutNode) {
            if (!layoutNode.isAttached$1()) {
                InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.add called on an unattached node");
            }
            ((SortedSet) this.this$0).add(layoutNode);
        }

        @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
        public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
            ListFuture listFuture = (ListFuture) this.this$0;
            RelationUtil.checkState("The result can only set once!", listFuture.mResultNotifier == null);
            listFuture.mResultNotifier = callbackToFutureAdapter$Completer;
            return "ListFuture[" + this + "]";
        }

        @Override // androidx.compose.ui.window.PopupPositionProvider
        /* renamed from: calculatePosition-llwVHH4, reason: not valid java name */
        public long mo96calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
            return (ContextMenuPopupPositionProviderKt.alignPopupAxis(intRect.top + ((int) (r0 & 4294967295L)), (int) (j2 & 4294967295L), (int) (j & 4294967295L), true) & 4294967295L) | (ContextMenuPopupPositionProviderKt.alignPopupAxis(intRect.left + ((int) (((IntOffset) ((Function0) this.this$0).invoke()).packedValue >> 32)), (int) (j2 >> 32), (int) (j >> 32), layoutDirection == LayoutDirection.Ltr) << 32);
        }

        /* renamed from: calculateVelocity-AH228Gc, reason: not valid java name */
        public long m97calculateVelocityAH228Gc(long j) {
            VirtualCameraCaptureResult virtualCameraCaptureResult = (VirtualCameraCaptureResult) this.this$0;
            virtualCameraCaptureResult.getClass();
            if (Velocity.m779getXimpl(j) <= 0.0f || Velocity.m780getYimpl(j) <= 0.0f) {
                InlineClassHelperKt.throwIllegalStateException("maximumVelocity should be a positive value. You specified=" + ((Object) Velocity.m784toStringimpl(j)));
            }
            return Util.Velocity(((VelocityTracker1D) virtualCameraCaptureResult.mBaseCameraCaptureResult).calculateVelocity(Velocity.m779getXimpl(j)), ((VelocityTracker1D) virtualCameraCaptureResult.mTagBundle).calculateVelocity(Velocity.m780getYimpl(j)));
        }

        public void current() {
            ((CompositionContext) this.this$0).getClass();
        }

        public FloatAnimationSpec get(int i) {
            switch (this.$r8$classId) {
                case 6:
                    return ((FloatSpringSpec[]) this.this$0)[i];
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return (FloatSpringSpec) this.this$0;
                default:
                    return (FloatAnimationSpec) this.this$0;
            }
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.this$0).getDurationNanos(animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.this$0).getEndVelocity(animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.this$0).getValueFromNanos(j, animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.this$0).getVelocityFromNanos(j, animationVector, animationVector2, animationVector3);
        }

        public void inset(float f, float f2, float f3, float f4) {
            MenuHostHelper menuHostHelper = (MenuHostHelper) this.this$0;
            androidx.compose.ui.graphics.Canvas canvas = menuHostHelper.getCanvas();
            float intBitsToFloat = Float.intBitsToFloat((int) (menuHostHelper.m795getSizeNHjbRc() >> 32)) - (f3 + f);
            float intBitsToFloat2 = Float.intBitsToFloat((int) (menuHostHelper.m795getSizeNHjbRc() & 4294967295L)) - (f4 + f2);
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            if (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) < 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) < 0.0f) {
                androidx.compose.ui.graphics.InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
            }
            menuHostHelper.m797setSizeuvyYCjk(floatToRawIntBits);
            canvas.translate(f, f2);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public boolean isInfinite() {
            ((Dispatcher) this.this$0).getClass();
            return false;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(Throwable th) {
            ListenableFuture listenableFuture;
            switch (this.$r8$classId) {
                case 1:
                    ((CallbackToFutureAdapter$Completer) this.this$0).setException(th);
                    return;
                default:
                    LockableDatabase lockableDatabase = (LockableDatabase) this.this$0;
                    Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = new Preview$$ExternalSyntheticLambda0(17, lockableDatabase);
                    if (Validate.isMainThread()) {
                        preview$$ExternalSyntheticLambda0.run();
                    } else {
                        CountDownLatch countDownLatch = new CountDownLatch(1);
                        RelationUtil.checkState("Unable to post to main thread", new Handler(Looper.getMainLooper()).post(new CameraX$$ExternalSyntheticLambda2(20, preview$$ExternalSyntheticLambda0, countDownLatch)));
                        try {
                            if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                                throw new IllegalStateException("Timeout to wait main thread execution");
                            }
                        } catch (InterruptedException e) {
                            throw new SerializationException(e);
                        }
                    }
                    CameraX cameraX = (CameraX) lockableDatabase.storageFilesProvider;
                    if (cameraX != null) {
                        cameraX.getClass();
                        CameraPresenceProvider cameraPresenceProvider = cameraX.mCameraPresenceProvider;
                        cameraPresenceProvider.getClass();
                        CollectionsKt.removeAll(cameraPresenceProvider.publicApiListeners, new TorchControl$$ExternalSyntheticLambda1(8, lockableDatabase));
                        CameraX cameraX2 = (CameraX) lockableDatabase.storageFilesProvider;
                        cameraX2.getClass();
                        listenableFuture = cameraX2.shutdown();
                    } else {
                        listenableFuture = ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;
                    }
                    listenableFuture.getClass();
                    synchronized (lockableDatabase.mDb) {
                        lockableDatabase.mReadLock = null;
                        lockableDatabase.mWriteLock = listenableFuture;
                        ((HashMap) lockableDatabase.mSchemaDefinition).clear();
                        ((HashSet) lockableDatabase.generalSettingsManager).clear();
                    }
                    lockableDatabase.initInternal(null, null);
                    return;
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(Object obj) {
            switch (this.$r8$classId) {
                case 1:
                    CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.this$0;
                    try {
                        callbackToFutureAdapter$Completer.set(obj);
                        break;
                    } catch (Throwable th) {
                        callbackToFutureAdapter$Completer.setException(th);
                        return;
                    }
                default:
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.camera.core.Preview.SurfaceProvider
        public void onSurfaceRequested(SurfaceRequest surfaceRequest) {
            SurfaceViewImplementation surfaceViewImplementation;
            if (!Validate.isMainThread()) {
                TraceApi29Impl.getMainExecutor(((PreviewView) this.this$0).getContext()).execute(new CameraX$$ExternalSyntheticLambda2(27, this, surfaceRequest));
                return;
            }
            Utf8.SafeProcessor.d("PreviewView", "Surface requested by Preview.");
            CameraInternal cameraInternal = surfaceRequest.mCamera;
            ((PreviewView) this.this$0).mCameraInfoInternal = cameraInternal.getCameraInfoInternal();
            PreviewViewMeteringPointFactory previewViewMeteringPointFactory = ((PreviewView) this.this$0).mPreviewViewMeteringPointFactory;
            Rect sensorRect = cameraInternal.getCameraInfoInternal().getSensorRect();
            previewViewMeteringPointFactory.getClass();
            new Rational(sensorRect.width(), sensorRect.height());
            synchronized (previewViewMeteringPointFactory) {
                previewViewMeteringPointFactory.mSensorRect = sensorRect;
            }
            surfaceRequest.setTransformationInfoListener(TraceApi29Impl.getMainExecutor(((PreviewView) this.this$0).getContext()), new PreviewView$1$$ExternalSyntheticLambda2(this, cameraInternal, surfaceRequest));
            PreviewView previewView = (PreviewView) this.this$0;
            WorkRequest.Builder builder = previewView.mImplementation;
            ImplementationMode implementationMode = previewView.mImplementationMode;
            int i = 0;
            if (!(builder instanceof SurfaceViewImplementation) || PreviewView.shouldUseTextureView(surfaceRequest, implementationMode)) {
                PreviewView previewView2 = (PreviewView) this.this$0;
                boolean shouldUseTextureView = PreviewView.shouldUseTextureView(surfaceRequest, previewView2.mImplementationMode);
                PreviewView previewView3 = (PreviewView) this.this$0;
                PreviewTransformation previewTransformation = previewView3.mPreviewTransform;
                if (shouldUseTextureView) {
                    TextureViewImplementation textureViewImplementation = new TextureViewImplementation(previewView3, previewTransformation);
                    textureViewImplementation.mIsSurfaceTextureDetachedFromView = false;
                    textureViewImplementation.mNextFrameCompleter = new AtomicReference();
                    surfaceViewImplementation = textureViewImplementation;
                } else {
                    surfaceViewImplementation = new SurfaceViewImplementation(previewView3, previewTransformation);
                }
                previewView2.mImplementation = surfaceViewImplementation;
            }
            CameraInfoInternal cameraInfoInternal = cameraInternal.getCameraInfoInternal();
            PreviewView previewView4 = (PreviewView) this.this$0;
            PreviewStreamStateObserver previewStreamStateObserver = new PreviewStreamStateObserver(cameraInfoInternal, previewView4.mPreviewStreamStateLiveData, previewView4.mImplementation);
            ((PreviewView) this.this$0).mActiveStreamStateObserver.set(previewStreamStateObserver);
            cameraInternal.getCameraState().addObserver(TraceApi29Impl.getMainExecutor(((PreviewView) this.this$0).getContext()), previewStreamStateObserver);
            ((PreviewView) this.this$0).mImplementation.onSurfaceRequested(surfaceRequest, new PreviewView$1$$ExternalSyntheticLambda2(this, previewStreamStateObserver, cameraInternal, i));
            PreviewView previewView5 = (PreviewView) this.this$0;
            if (previewView5.indexOfChild(previewView5.mScreenFlashView) == -1) {
                PreviewView previewView6 = (PreviewView) this.this$0;
                previewView6.addView(previewView6.mScreenFlashView);
            }
        }

        public LocalFolder.AnonymousClass12 produce(WeakCache weakCache, AndroidComposeView androidComposeView) {
            long j;
            boolean z;
            long m652screenToLocalMKHz9U;
            LongSparseArray longSparseArray = (LongSparseArray) this.this$0;
            List list = (List) weakCache.values;
            LongSparseArray longSparseArray2 = new LongSparseArray(list.size());
            int size = list.size();
            int i = 0;
            while (i < size) {
                PointerInputEventData pointerInputEventData = (PointerInputEventData) list.get(i);
                long j2 = pointerInputEventData.id;
                PointerInputChangeEventProducer$PointerInputData pointerInputChangeEventProducer$PointerInputData = (PointerInputChangeEventProducer$PointerInputData) longSparseArray.get(j2);
                if (pointerInputChangeEventProducer$PointerInputData == null) {
                    j = pointerInputEventData.uptime;
                    m652screenToLocalMKHz9U = pointerInputEventData.position;
                    z = false;
                } else {
                    long j3 = pointerInputChangeEventProducer$PointerInputData.uptime;
                    j = j3;
                    z = pointerInputChangeEventProducer$PointerInputData.down;
                    m652screenToLocalMKHz9U = androidComposeView.m652screenToLocalMKHz9U(pointerInputChangeEventProducer$PointerInputData.positionOnScreen);
                }
                long j4 = pointerInputEventData.id;
                int i2 = i;
                List list2 = list;
                int i3 = size;
                longSparseArray2.put(j4, new PointerInputChange(j4, pointerInputEventData.uptime, pointerInputEventData.position, pointerInputEventData.down, pointerInputEventData.pressure, j, m652screenToLocalMKHz9U, z, pointerInputEventData.type, pointerInputEventData.historical, pointerInputEventData.scrollDelta, pointerInputEventData.scaleGestureFactor, pointerInputEventData.panGestureOffset, pointerInputEventData.originalEventPosition));
                boolean z2 = pointerInputEventData.down;
                if (z2) {
                    longSparseArray.put(j2, new PointerInputChangeEventProducer$PointerInputData(pointerInputEventData.uptime, pointerInputEventData.positionOnScreen, z2));
                } else {
                    longSparseArray.remove(j2);
                }
                i = i2 + 1;
                list = list2;
                size = i3;
            }
            return new LocalFolder.AnonymousClass12(longSparseArray2, weakCache);
        }

        public boolean remove(LayoutNode layoutNode) {
            if (!layoutNode.isAttached$1()) {
                InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.remove called on an unattached node");
            }
            return ((SortedSet) this.this$0).remove(layoutNode);
        }

        /* renamed from: rotate-Uv8p0NA, reason: not valid java name */
        public void m98rotateUv8p0NA(float f, long j) {
            androidx.compose.ui.graphics.Canvas canvas = ((MenuHostHelper) this.this$0).getCanvas();
            int i = (int) (j >> 32);
            int i2 = (int) (j & 4294967295L);
            canvas.translate(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
            canvas.rotate(f);
            canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
        }

        public Object runAndWatch$runtime(Channel channel, Function0 function0) {
            SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
            SendChannel sendChannel;
            int i;
            if (((DnsQueryResult) this.this$0) == null) {
                androidx.compose.runtime.PreconditionsKt.throwIllegalStateException("Called runAndWatch on a manager that has been disposed of");
            }
            DnsQueryResult dnsQueryResult = (DnsQueryResult) this.this$0;
            if ((dnsQueryResult instanceof SingleSubscriptionSnapshotFlowManager) && (sendChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) dnsQueryResult).subscribedChannel) != null && !sendChannel.equals(channel)) {
                MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
                SendChannel sendChannel2 = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                if (sendChannel2 == null) {
                    androidx.compose.runtime.PreconditionsKt.throwIllegalStateException("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
                }
                MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.watchSet;
                ArrayList arrayList = multiSubscriptionSnapshotFlowManager.pendingChanges;
                if (mutableScatterSet == null) {
                    Object obj = singleSubscriptionSnapshotFlowManager.soleWatchedObject;
                    obj.getClass();
                    arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel2));
                } else {
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr = mutableScatterSet.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j = jArr[i2];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i3 = 8;
                                int i4 = 8 - ((~(i2 - length)) >>> 31);
                                int i5 = 0;
                                while (i5 < i4) {
                                    if ((j & 255) < 128) {
                                        i = i3;
                                        arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(objArr[(i2 << 3) + i5], sendChannel2));
                                    } else {
                                        i = i3;
                                    }
                                    j >>= i;
                                    i5++;
                                    i3 = i;
                                }
                                if (i4 != i3) {
                                    break;
                                }
                            }
                            if (i2 == length) {
                                break;
                            }
                            i2++;
                        }
                    }
                }
                multiSubscriptionSnapshotFlowManager.commitSubscriptionChanges$runtime();
                singleSubscriptionSnapshotFlowManager.dispose$runtime();
                this.this$0 = multiSubscriptionSnapshotFlowManager;
            }
            DnsQueryResult dnsQueryResult2 = (DnsQueryResult) this.this$0;
            dnsQueryResult2.getClass();
            Snapshot takeNestedSnapshot = SnapshotKt.currentSnapshot().takeNestedSnapshot(dnsQueryResult2.readObserverFor$runtime(channel));
            dnsQueryResult2.clearWatchSet$runtime(channel);
            try {
                Snapshot makeCurrent = takeNestedSnapshot.makeCurrent();
                try {
                    Object invoke = function0.invoke();
                    takeNestedSnapshot.dispose();
                    dnsQueryResult2.commitSubscriptionChanges$runtime();
                    return invoke;
                } finally {
                    Snapshot.restoreCurrent(makeCurrent);
                }
            } catch (Throwable th) {
                takeNestedSnapshot.dispose();
                throw th;
            }
        }

        /* renamed from: scale-0AR0LA0, reason: not valid java name */
        public void m99scale0AR0LA0(float f, float f2, long j) {
            androidx.compose.ui.graphics.Canvas canvas = ((MenuHostHelper) this.this$0).getCanvas();
            int i = (int) (j >> 32);
            int i2 = (int) (j & 4294967295L);
            canvas.translate(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
            canvas.scale(f, f2);
            canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
        }

        public ArrayList scheduleLinePrefetch(int i) {
            ArrayList arrayList = new ArrayList();
            LazyGridState lazyGridState = (LazyGridState) this.this$0;
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                LazyGridMeasureResult lazyGridMeasureResult = lazyGridState.hasLookaheadOccurred ? lazyGridState.approachLayoutInfo : (LazyGridMeasureResult) lazyGridState.layoutInfoState.getValue();
                if (lazyGridMeasureResult != null) {
                    Ref$IntRef ref$IntRef = new Ref$IntRef();
                    ref$IntRef.element = 1;
                    List list = (List) lazyGridMeasureResult.prefetchInfoRetriever.invoke(Integer.valueOf(i));
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Pair pair = (Pair) list.get(i2);
                        LazyLayoutPrefetchState lazyLayoutPrefetchState = lazyGridState.prefetchState;
                        int intValue = ((Number) pair.first).intValue();
                        long j = ((Constraints) pair.second).value;
                        WeakCache weakCache = LazyGridState.Saver;
                        ref$IntRef = ref$IntRef;
                        arrayList.add(lazyLayoutPrefetchState.m257schedulePrecompositionAndPremeasure_EkL_Y$foundation(intValue, j, false, new NavControllerImpl$$ExternalSyntheticLambda0((ArrayList) null, ref$IntRef, list, i, lazyGridMeasureResult)));
                    }
                }
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                return arrayList;
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }

        public void set(IntRect intRect) {
            ((Region) this.this$0).set(intRect.left, intRect.top, intRect.right, intRect.bottom);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 25:
                    return ((SortedSet) this.this$0).toString();
                default:
                    return super.toString();
            }
        }

        public void translate(float f, float f2) {
            ((MenuHostHelper) this.this$0).getCanvas().translate(f, f2);
        }

        public /* synthetic */ AnonymousClass1(int i, boolean z) {
            this.$r8$classId = i;
        }

        public AnonymousClass1(Density density) {
            this.$r8$classId = 4;
            float f = SplineBasedFloatDecayAnimationSpec_androidKt.platformFlingScrollFriction;
            FlingCalculator flingCalculator = new FlingCalculator();
            flingCalculator.friction = f;
            float density2 = density.getDensity();
            float f2 = FlingCalculatorKt.DecelerationRate;
            flingCalculator.magicPhysicalCoefficient = density2 * 386.0878f * 160.0f * 0.84f;
            this.this$0 = flingCalculator;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
        
            if (r8 == 1) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0049 A[LOOP:1: B:13:0x0047->B:14:0x0049, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnonymousClass1(int[] r23, float[] r24, float[][] r25) {
            /*
                r22 = this;
                r0 = r22
                r1 = r24
                r2 = 5
                r0.$r8$classId = r2
                r0.<init>()
                int r3 = r1.length
                r4 = 1
                int r3 = r3 - r4
                androidx.compose.animation.core.ArcSpline$Arc[][] r5 = new androidx.compose.animation.core.ArcSpline$Arc[r3][]
                r6 = 0
                r8 = r4
                r9 = r8
                r7 = r6
            L13:
                if (r7 >= r3) goto L6b
                r10 = r23[r7]
                r11 = 3
                r12 = 2
                if (r10 == 0) goto L2a
                if (r10 == r4) goto L33
                if (r10 == r12) goto L31
                if (r10 == r11) goto L2c
                r11 = 4
                if (r10 == r11) goto L2a
                if (r10 == r2) goto L28
                r14 = r9
                goto L35
            L28:
                r14 = r2
                goto L35
            L2a:
                r14 = r11
                goto L35
            L2c:
                if (r8 != r4) goto L33
                goto L31
            L2f:
                r14 = r8
                goto L35
            L31:
                r8 = r12
                goto L2f
            L33:
                r8 = r4
                goto L2f
            L35:
                r9 = r25[r7]
                int r10 = r7 + 1
                r11 = r25[r10]
                r15 = r1[r7]
                r16 = r1[r10]
                int r13 = r9.length
                int r13 = r13 / r12
                int r2 = r9.length
                int r2 = r2 % r12
                int r2 = r2 + r13
                androidx.compose.animation.core.ArcSpline$Arc[] r12 = new androidx.compose.animation.core.ArcSpline$Arc[r2]
                r13 = r6
            L47:
                if (r13 >= r2) goto L65
                int r17 = r13 * 2
                r18 = r13
                androidx.compose.animation.core.ArcSpline$Arc r13 = new androidx.compose.animation.core.ArcSpline$Arc
                r19 = r17
                r17 = r9[r19]
                int r20 = r19 + 1
                r21 = r18
                r18 = r9[r20]
                r19 = r11[r19]
                r20 = r11[r20]
                r13.<init>(r14, r15, r16, r17, r18, r19, r20)
                r12[r21] = r13
                int r13 = r21 + 1
                goto L47
            L65:
                r5[r7] = r12
                r7 = r10
                r9 = r14
                r2 = 5
                goto L13
            L6b:
                r0.this$0 = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.view.PreviewView.AnonymousClass1.<init>(int[], float[], float[][]):void");
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public AnonymousClass1(long[] jArr) {
            MutableLongList mutableLongList;
            this.$r8$classId = 19;
            if (jArr != null) {
                long[] copyOf = Arrays.copyOf(jArr, jArr.length);
                mutableLongList = new MutableLongList(copyOf.length);
                int i = mutableLongList._size;
                if (i >= 0) {
                    if (copyOf.length != 0) {
                        int length = copyOf.length + i;
                        long[] jArr2 = mutableLongList.content;
                        if (jArr2.length < length) {
                            mutableLongList.content = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                        }
                        long[] jArr3 = mutableLongList.content;
                        int i2 = mutableLongList._size;
                        if (i != i2) {
                            ArraysKt___ArraysKt.copyInto(jArr3, jArr3, copyOf.length + i, i, i2);
                        }
                        ArraysKt___ArraysKt.copyInto(copyOf, jArr3, i, 0, copyOf.length);
                        mutableLongList._size += copyOf.length;
                    }
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("");
                    throw null;
                }
            } else {
                mutableLongList = new MutableLongList();
            }
            this.this$0 = mutableLongList;
        }

        public AnonymousClass1(float f, float f2, AnimationVector animationVector) {
            AnonymousClass1 anonymousClass1;
            this.$r8$classId = 9;
            int[] iArr = VectorizedAnimationSpecKt.EmptyIntArray;
            if (animationVector != null) {
                anonymousClass1 = new AnonymousClass1(animationVector, f, f2);
            } else {
                anonymousClass1 = new AnonymousClass1(f, f2);
            }
            this.this$0 = new Dispatcher(6, anonymousClass1);
        }

        public AnonymousClass1(AnimationVector animationVector, float f, float f2) {
            this.$r8$classId = 6;
            int size$animation_core = animationVector.getSize$animation_core();
            FloatSpringSpec[] floatSpringSpecArr = new FloatSpringSpec[size$animation_core];
            for (int i = 0; i < size$animation_core; i++) {
                floatSpringSpecArr[i] = new FloatSpringSpec(f, f2, animationVector.get$animation_core(i));
            }
            this.this$0 = floatSpringSpecArr;
        }

        public AnonymousClass1(float f, float f2) {
            this.$r8$classId = 7;
            this.this$0 = new FloatSpringSpec(f, f2, 0.01f);
        }
    }
}
