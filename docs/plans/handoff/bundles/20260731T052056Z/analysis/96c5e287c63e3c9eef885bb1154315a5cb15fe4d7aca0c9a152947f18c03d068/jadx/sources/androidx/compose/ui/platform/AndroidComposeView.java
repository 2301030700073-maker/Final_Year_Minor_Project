package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import androidx.cardview.widget.CardView;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.SessionMutex$Session;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillApi26Helper;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.draganddrop.AndroidDragAndDropManager;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwner$dispatchKeyEvent$1;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusOwnerImpl$takeFocus$1;
import androidx.compose.ui.focus.FocusPropertiesImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidGraphicsContext;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.Rgb$$ExternalSyntheticLambda3;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.NodeParent;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.InsetsListener;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OuterPlacementScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.MeasureAndLayoutDelegate$PostponedRequest;
import androidx.compose.ui.node.MeasureAndLayoutDelegate$WhenMappings;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeCoordinator$invalidateParentLayer$1;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView.RootModifierNode;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.semantics.EmptySemanticsModifier;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.text.font.Font$ResourceLoader;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.core.view.DisplayCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.RemoteViewsCompat$RemoteCollectionItems;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData$1;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.paging.HintHandler;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.OperationKt;
import androidx.work.impl.AutoMigration_14_15;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.ImageLoader$Builder;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.text.UStringsKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileMetadata;
import org.wikipedia.R;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.views.ViewAnimations$$ExternalSyntheticLambda0;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidComposeView extends ViewGroup implements Owner, RootForTest, MatrixPositionCalculator, DefaultLifecycleObserver, OutOfFrameExecutor, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener, FocusListener {
    public static Method addChangeCallbackMethod;
    public static final MutableObjectList composeViews = new MutableObjectList();
    public static Method dispatchOnScrollChangedMethod;
    public static Method getBooleanMethod;
    public static DeviceUtil$$ExternalSyntheticLambda1 systemPropertiesChangedRunnable;
    public static Class systemPropertiesClass;
    public AndroidViewsHandler _androidViewsHandler;
    public final AndroidAutofill _autofill;
    public final AndroidAutofillManager _autofillManager;
    public final ParcelableSnapshotMutableState _composeViewContext$delegate;
    public final InputModeManagerImpl _inputModeManager;
    public TextInputServiceAndroid _legacyTextInputServiceAndroid;
    public View _rootView;
    public DelegatingSoftwareKeyboardController _softwareKeyboardController;
    public TextInputService _textInputService;
    public final ParcelableSnapshotMutableState _viewTreeOwners$delegate;
    public final LazyWindowInfo _windowInfo;
    public final AndroidAccessibilityManager accessibilityManager;
    public final AutofillTree autofillTree;
    public final CanvasHolder canvasHolder;
    public final AndroidClipboard clipboard;
    public final AndroidClipboardManager clipboardManager;
    public final AndroidComposeViewAccessibilityDelegateCompat composeAccessibilityDelegate;
    public boolean composeViewContextIncrementedDuringInit;
    public final ParcelableSnapshotMutableState configuration$delegate;
    public AndroidContentCaptureManager contentCaptureManager;
    public CoroutineContext coroutineContext;
    public float currentFrameRate;
    public float currentFrameRateCategory;
    public final ParcelableSnapshotMutableState density$delegate;
    public final DerivedSnapshotState derivedIsAttached$delegate;
    public final MutableObjectList dirtyLayers;
    public final AndroidDragAndDropManager dragAndDropManager;
    public final MutableObjectList endApplyChangesListeners;
    public final FocusOwnerImpl focusOwner;
    public final MutableState fontFamilyResolver$delegate;
    public final Font$ResourceLoader fontLoader;
    public boolean forceUseMatrixCache;
    public LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler;
    public final View frameRateCategoryView;
    public long globalPosition;
    public final AndroidGraphicsContext graphicsContext;
    public final HapticFeedback hapticFeedBack;
    public boolean hoverExitReceived;
    public final RemoteViewsCompat$RemoteCollectionItems indirectPointerNavigationGestureDetector;
    public final InsetsListener insetsListener;
    public final ParcelableSnapshotMutableState isAttached$delegate;
    public boolean isDrawingContent;
    public boolean isPendingInteropViewLayoutChangeDispatch;
    public boolean keyboardModifiersRequireUpdate;
    public long lastDownPointerPosition;
    public long lastMatrixRecalculationAnimationTime;
    public final CardView.AnonymousClass1 layerCache;
    public final ParcelableSnapshotMutableState layoutDirection$delegate;
    public final MutableIntObjectMap layoutNodes;
    public LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry lifecycleRetainedValuesStoreOwnerEntry;
    public final DerivedSnapshotState localeList$delegate;
    public final CalculateMatrixToWindow matrixToWindow;
    public final FileMetadata measureAndLayoutDelegate;
    public final ModifierLocalManager modifierLocalManager;
    public final MotionEventAdapter motionEventAdapter;
    public boolean observationClearRequested;
    public Constraints onMeasureConstraints;
    public Function1 onReadyForComposition;
    public final ArrayDeque outOfFrameQueue;
    public final AndroidComposeView$$ExternalSyntheticLambda3 outOfFrameRunnable;
    public final AndroidComposeView$pointerIconService$1 pointerIconService;
    public final Cache.RealCacheRequest pointerInputEventProcessor;
    public MutableObjectList postponedDirtyLayers;
    public MotionEvent previousMotionEvent;
    public IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxisOverride;
    public final RectManager rectManager;
    public long relayoutTime;
    public final AndroidComposeView$localeList$2 resendMotionEventOnLayout;
    public final LiveData$1 resendMotionEventRunnable;
    public RetainedValuesStore retainedValuesStore;
    public final LayoutNode root;
    public final ScrollCapture scrollCapture;
    public final SemanticsOwner semanticsOwner;
    public final AndroidComposeView$$ExternalSyntheticLambda3 sendHoverExitEvent;
    public final LayoutNodeDrawScope sharedDrawScope;
    public boolean showLayoutBounds;
    public final OwnerSnapshotObserver snapshotObserver;
    public final boolean superclassInitComplete;
    public final AtomicReference textInputSessionMutex;
    public final AndroidTextToolbar textToolbar;
    public final float[] tmpMatrix;
    public final int[] tmpPositionArray;
    public final AndroidViewConfiguration viewConfiguration;
    public final float[] viewToWindowMatrix;
    public final DerivedSnapshotState viewTreeOwners$delegate;
    public boolean wasMeasuredWithMultipleConstraints;
    public long windowPosition;
    public final float[] windowToViewMatrix;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ViewTreeOwners {
    }

    public AndroidComposeView(Context context, ComposeViewContext composeViewContext) {
        super(context);
        AndroidAutofillManager androidAutofillManager;
        this._composeViewContext$delegate = Updater.mutableStateOf$default(composeViewContext);
        this.lastDownPointerPosition = 9205357640488583168L;
        int i = 1;
        this.superclassInitComplete = true;
        this.sharedDrawScope = composeViewContext.sharedDrawScope;
        this.retainedValuesStore = ForgetfulRetainedValuesStore.INSTANCE;
        this.outOfFrameQueue = new ArrayDeque();
        int i2 = 0;
        this.outOfFrameRunnable = new AndroidComposeView$$ExternalSyntheticLambda3(this, i2);
        this.density$delegate = new ParcelableSnapshotMutableState(Room.Density(context), NeverEqualPolicy.INSTANCE$1);
        this.focusOwner = new FocusOwnerImpl(this, this);
        this.coroutineContext = composeViewContext.compositionContext.getEffectCoroutineContext();
        this.dragAndDropManager = new AndroidDragAndDropManager();
        this._windowInfo = new LazyWindowInfo();
        this.isAttached$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
        this.derivedIsAttached$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new AndroidComposeView$localeList$2(this, i));
        this.canvasHolder = composeViewContext.canvasHolder;
        this.viewConfiguration = composeViewContext.viewConfiguration;
        this.insetsListener = new InsetsListener();
        int i3 = 3;
        LayoutNode layoutNode = new LayoutNode(3);
        layoutNode.setMeasurePolicy(RootMeasurePolicy.INSTANCE);
        layoutNode.setDensity(getDensity());
        layoutNode.setViewConfiguration(getViewConfiguration());
        layoutNode.setModifier(Modifier.CC.$default$then(new ModifierNodeElement() { // from class: androidx.compose.ui.platform.AndroidComposeView$root$1$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final Modifier.Node create() {
                return AndroidComposeView.this.new RootModifierNode();
            }

            public final boolean equals(Object obj) {
                return obj == this;
            }

            public final int hashCode() {
                return AndroidComposeView.this.hashCode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final void update(Modifier.Node node) {
            }
        }, ((FocusOwnerImpl) getFocusOwner()).modifier).then(m598getDragAndDropManager().modifier));
        this.root = layoutNode;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.layoutNodes = new MutableIntObjectMap();
        getLayoutNodes();
        this.rectManager = new RectManager(this);
        this.semanticsOwner = new SemanticsOwner(getRoot(), new EmptySemanticsModifier(), getLayoutNodes());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.composeAccessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.contentCaptureManager = new AndroidContentCaptureManager(this, new RoomDatabase$closeBarrier$1(0, this, TestTagKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", 1, 4));
        this.accessibilityManager = composeViewContext.accessibilityManager;
        this.graphicsContext = new AndroidGraphicsContext(this);
        this.autofillTree = new AutofillTree();
        this.dirtyLayers = new MutableObjectList();
        this.motionEventAdapter = new MotionEventAdapter();
        LayoutNode root = getRoot();
        Cache.RealCacheRequest realCacheRequest = new Cache.RealCacheRequest();
        realCacheRequest.editor = root;
        InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) root.nodes.innerCoordinator;
        PageViewModel pageViewModel = new PageViewModel();
        pageViewModel.page = innerNodeCoordinator;
        pageViewModel.title = new MutableObjectList();
        pageViewModel.curEntry = new NodeParent();
        pageViewModel.readingListPage = new MutableLongObjectMap(10);
        realCacheRequest.cacheOut = pageViewModel;
        int i4 = 2;
        realCacheRequest.body = new HintHandler(2);
        realCacheRequest.this$0 = new HitTestResult();
        this.pointerInputEventProcessor = realCacheRequest;
        this.configuration$delegate = Updater.mutableStateOf$default(new Configuration(context.getResources().getConfiguration()));
        this.localeList$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new AndroidComposeView$localeList$2(this, i2));
        this._autofill = autofillSupported() ? new AndroidAutofill(this, getAutofillTree()) : null;
        if (autofillSupported()) {
            AutofillManager m661m = VisualTransformation$Companion$$ExternalSyntheticLambda0.m661m(context.getSystemService(Rgb$$ExternalSyntheticLambda3.m462m()));
            if (m661m == null) {
                throw Modifier.CC.m("Autofill service could not be located.");
            }
            androidAutofillManager = new AndroidAutofillManager(new AutofillIdCompat(m661m), getSemanticsOwner(), this, getRectManager(), context.getPackageName());
        } else {
            androidAutofillManager = null;
        }
        this._autofillManager = androidAutofillManager;
        this.clipboardManager = composeViewContext.clipboardManager;
        this.clipboard = composeViewContext.clipboard;
        this.snapshotObserver = new OwnerSnapshotObserver(new AndroidComposeView$snapshotObserver$1(this, i2));
        this.measureAndLayoutDelegate = new FileMetadata(getRoot());
        this.globalPosition = 9223372034707292159L;
        this.tmpPositionArray = new int[]{0, 0};
        float[] m446constructorimpl$default = Matrix.m446constructorimpl$default();
        this.tmpMatrix = m446constructorimpl$default;
        this.viewToWindowMatrix = Matrix.m446constructorimpl$default();
        this.windowToViewMatrix = Matrix.m446constructorimpl$default();
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.windowPosition = 9187343241974906880L;
        this._viewTreeOwners$delegate = Updater.mutableStateOf$default(null);
        this.viewTreeOwners$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new AndroidComposeView$localeList$2(this, i3));
        this.textInputSessionMutex = new AtomicReference(null);
        this.fontLoader = composeViewContext.fontLoader;
        this.fontFamilyResolver$delegate = composeViewContext.fontFamilyResolver;
        int layoutDirection = context.getResources().getConfiguration().getLayoutDirection();
        int[] iArr = FocusInteropUtils_androidKt.tempCoordinates;
        LayoutDirection layoutDirection2 = layoutDirection != 0 ? layoutDirection != 1 ? null : LayoutDirection.Rtl : LayoutDirection.Ltr;
        this.layoutDirection$delegate = Updater.mutableStateOf$default(layoutDirection2 == null ? LayoutDirection.Ltr : layoutDirection2);
        this.hapticFeedBack = composeViewContext.hapticFeedback;
        this._inputModeManager = new InputModeManagerImpl(isInTouchMode() ? 1 : 2);
        ModifierLocalManager modifierLocalManager = new ModifierLocalManager();
        new MutableVector(new BackwardsCompatNode[16]);
        new MutableVector(new OperationKt[16]);
        new MutableVector(new LayoutNode[16]);
        new MutableVector(new OperationKt[16]);
        this.modifierLocalManager = modifierLocalManager;
        AndroidTextToolbar androidTextToolbar = new AndroidTextToolbar();
        new AutoMigration_14_15(new LayoutNode$_foldedChildren$1(9, androidTextToolbar));
        this.textToolbar = androidTextToolbar;
        this.layerCache = new CardView.AnonymousClass1(18);
        this.endApplyChangesListeners = new MutableObjectList();
        this.resendMotionEventRunnable = new LiveData$1(6, this);
        this.sendHoverExitEvent = new AndroidComposeView$$ExternalSyntheticLambda3(this, i);
        this.indirectPointerNavigationGestureDetector = new RemoteViewsCompat$RemoteCollectionItems(context, new AndroidComposeView$snapshotObserver$1(this, i));
        this.resendMotionEventOnLayout = new AndroidComposeView$localeList$2(this, i4);
        int i5 = Build.VERSION.SDK_INT;
        this.matrixToWindow = i5 < 29 ? new CalculateMatrixToWindowApi21(m446constructorimpl$default) : new CalculateMatrixToWindowApi29();
        addOnAttachStateChangeListener(this.contentCaptureManager);
        setWillNotDraw(false);
        setFocusable(true);
        if (i5 >= 26) {
            AndroidComposeViewVerificationHelperMethodsO.INSTANCE.focusable(this, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        ViewCompat.setAccessibilityDelegate(this, androidComposeViewAccessibilityDelegateCompat);
        setOnDragListener(m598getDragAndDropManager());
        getRoot().attach$ui(this);
        if (i5 >= 29) {
            AndroidComposeViewForceDarkModeQ.INSTANCE.disallowForceDark(this);
        }
        if (isArrEnabled$ui()) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
            view.setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
            this.frameRateCategoryView = view;
            addView(view, -1);
        }
        this.scrollCapture = i5 >= 31 ? new ScrollCapture() : null;
        this.pointerIconService = new AndroidComposeView$pointerIconService$1(this);
    }

    public static boolean autofillSupported() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static void clearChildInvalidObservations(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).onEndApplyChanges();
            } else if (childAt instanceof ViewGroup) {
                clearChildInvalidObservations((ViewGroup) childAt);
            }
        }
    }

    /* renamed from: convertMeasureSpec-I7RO_PI, reason: not valid java name */
    public static long m583convertMeasureSpecI7RO_PI(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            return size;
        }
        if (mode == 0) {
            return 2147483647L;
        }
        if (mode == 1073741824) {
            long j = size;
            return j | (j << 32);
        }
        Gson$$ExternalSyntheticBUOutline0.m();
        return 0L;
    }

    public static View findViewByAccessibilityIdRootedAtCurrentView(View view, int i) {
        if (Build.VERSION.SDK_INT < 29) {
            Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", null);
            declaredMethod.setAccessible(true);
            if (Intrinsics.areEqual(declaredMethod.invoke(view, null), Integer.valueOf(i))) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View findViewByAccessibilityIdRootedAtCurrentView = findViewByAccessibilityIdRootedAtCurrentView(viewGroup.getChildAt(i2), i);
                    if (findViewByAccessibilityIdRootedAtCurrentView != null) {
                        return findViewByAccessibilityIdRootedAtCurrentView;
                    }
                }
            }
        }
        return null;
    }

    private final boolean getDerivedIsAttached() {
        return ((Boolean) this.derivedIsAttached$delegate.getValue()).booleanValue();
    }

    private final TextInputServiceAndroid getLegacyTextInputServiceAndroid() {
        TextInputServiceAndroid textInputServiceAndroid = this._legacyTextInputServiceAndroid;
        if (textInputServiceAndroid != null) {
            return textInputServiceAndroid;
        }
        TextInputServiceAndroid textInputServiceAndroid2 = new TextInputServiceAndroid(getView(), this);
        this._legacyTextInputServiceAndroid = textInputServiceAndroid2;
        return textInputServiceAndroid2;
    }

    private final ComposeViewContext get_composeViewContext() {
        return (ComposeViewContext) this._composeViewContext$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ViewTreeOwners get_viewTreeOwners() {
        Modifier.CC.m(this._viewTreeOwners$delegate.getValue());
        return null;
    }

    public static void invalidateLayers(LayoutNode layoutNode) {
        layoutNode.invalidateLayers$ui();
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            invalidateLayers((LayoutNode) objArr[i2]);
        }
    }

    public static boolean isArrEnabled$ui() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public static boolean isBadMotionEvent(MotionEvent motionEvent) {
        boolean z = (Float.floatToRawIntBits(motionEvent.getX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawX()) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawY()) & Integer.MAX_VALUE) >= 2139095040;
        if (!z) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 1; i < pointerCount; i++) {
                z = (Float.floatToRawIntBits(motionEvent.getX(i)) & Integer.MAX_VALUE) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY(i)) & Integer.MAX_VALUE) >= 2139095040 || (Build.VERSION.SDK_INT >= 29 && !MotionEventVerifierApi29.INSTANCE.isValidMotionEvent(motionEvent, i));
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final void setAttached(boolean z) {
        this.isAttached$delegate.setValue(Boolean.valueOf(z));
    }

    private void setDensity(Density density) {
        this.density$delegate.setValue(density);
    }

    private void setFontFamilyResolver(FontFamily.Resolver resolver) {
        this.fontFamilyResolver$delegate.setValue(resolver);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection$delegate.setValue(layoutDirection);
    }

    private final void set_composeViewContext(ComposeViewContext composeViewContext) {
        this._composeViewContext$delegate.setValue(composeViewContext);
    }

    private final void set_viewTreeOwners(ViewTreeOwners viewTreeOwners) {
        this._viewTreeOwners$delegate.setValue(viewTreeOwners);
    }

    public final void addExtraDataToAccessibilityNodeInfoHelper(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int orDefault;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.composeAccessibilityDelegate;
        if (Intrinsics.areEqual(str, androidComposeViewAccessibilityDelegateCompat.ExtraDataTestTraversalBeforeVal)) {
            int orDefault2 = androidComposeViewAccessibilityDelegateCompat.idToBeforeMap.getOrDefault(i);
            if (orDefault2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, orDefault2);
                return;
            }
            return;
        }
        if (!Intrinsics.areEqual(str, androidComposeViewAccessibilityDelegateCompat.ExtraDataTestTraversalAfterVal) || (orDefault = androidComposeViewAccessibilityDelegateCompat.idToAfterMap.getOrDefault(i)) == -1) {
            return;
        }
        accessibilityNodeInfo.getExtras().putInt(str, orDefault);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        FocusTargetNode focusTargetNode = ((FocusOwnerImpl) getFocusOwner()).rootFocusNode;
        if (!focusTargetNode.isAttached) {
            return;
        }
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.addLayoutNodeChildren(mutableVector, node);
        } else {
            mutableVector.add(node2);
        }
        while (true) {
            int i3 = mutableVector.size;
            if (i3 == 0) {
                return;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector.removeAt(i3 - 1);
            if ((node3.aggregateChildKindSet & 1024) != 0) {
                for (Modifier.Node node4 = node3; node4 != null && node4.isAttached; node4 = node4.child) {
                    if ((node4.kindSet & 1024) != 0) {
                        Modifier.Node node5 = node4;
                        MutableVector mutableVector2 = null;
                        while (node5 != null) {
                            int i4 = 0;
                            if (node5 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node5;
                                if (focusTargetNode2.isAttached && focusTargetNode2.fetchFocusProperties$ui().canFocus) {
                                    super.addFocusables(arrayList, i, i2);
                                    FocusTargetNode focusTargetNode3 = ((FocusOwnerImpl) getFocusOwner()).rootFocusNode;
                                    if (focusTargetNode3.isAttached) {
                                        if (!focusTargetNode3.node.isAttached) {
                                            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
                                        }
                                        MutableVector mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                        Modifier.Node node6 = focusTargetNode3.node;
                                        Modifier.Node node7 = node6.child;
                                        if (node7 == null) {
                                            HitTestResultKt.addLayoutNodeChildren(mutableVector3, node6);
                                        } else {
                                            mutableVector3.add(node7);
                                        }
                                        while (true) {
                                            int i5 = mutableVector3.size;
                                            if (i5 == 0) {
                                                break;
                                            }
                                            Modifier.Node node8 = (Modifier.Node) mutableVector3.removeAt(i5 - 1);
                                            if ((node8.aggregateChildKindSet & 1024) != 0) {
                                                for (Modifier.Node node9 = node8; node9 != null && node9.isAttached; node9 = node9.child) {
                                                    if ((node9.kindSet & 1024) != 0) {
                                                        Modifier.Node node10 = node9;
                                                        MutableVector mutableVector4 = null;
                                                        while (node10 != null) {
                                                            if (node10 instanceof FocusTargetNode) {
                                                                FocusTargetNode focusTargetNode4 = (FocusTargetNode) node10;
                                                                if (focusTargetNode4.isAttached) {
                                                                    FocusPropertiesImpl fetchFocusProperties$ui = focusTargetNode4.fetchFocusProperties$ui();
                                                                    if (focusTargetNode4.isAttached && !focusTargetNode4.isInteropViewHost && fetchFocusProperties$ui.canFocus) {
                                                                        return;
                                                                    }
                                                                }
                                                            } else if ((node10.kindSet & 1024) != 0 && (node10 instanceof DelegatingNode)) {
                                                                int i6 = 0;
                                                                for (Modifier.Node node11 = ((DelegatingNode) node10).delegate; node11 != null; node11 = node11.child) {
                                                                    if ((node11.kindSet & 1024) != 0) {
                                                                        i6++;
                                                                        if (i6 == 1) {
                                                                            node10 = node11;
                                                                        } else {
                                                                            if (mutableVector4 == null) {
                                                                                mutableVector4 = new MutableVector(new Modifier.Node[16]);
                                                                            }
                                                                            if (node10 != null) {
                                                                                mutableVector4.add(node10);
                                                                                node10 = null;
                                                                            }
                                                                            mutableVector4.add(node11);
                                                                        }
                                                                    }
                                                                }
                                                                if (i6 == 1) {
                                                                }
                                                            }
                                                            node10 = HitTestResultKt.pop(mutableVector4);
                                                        }
                                                    }
                                                }
                                            }
                                            HitTestResultKt.addLayoutNodeChildren(mutableVector3, node8);
                                        }
                                    }
                                    if (arrayList != null) {
                                        arrayList.remove(this);
                                        return;
                                    }
                                    return;
                                }
                            } else if ((node5.kindSet & 1024) != 0 && (node5 instanceof DelegatingNode)) {
                                for (Modifier.Node node12 = ((DelegatingNode) node5).delegate; node12 != null; node12 = node12.child) {
                                    if ((node12.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node5 = node12;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node5 != null) {
                                                mutableVector2.add(node5);
                                                node5 = null;
                                            }
                                            mutableVector2.add(node12);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node5 = HitTestResultKt.pop(mutableVector2);
                        }
                    }
                }
            }
            HitTestResultKt.addLayoutNodeChildren(mutableVector, node3);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, i, layoutParams, true);
    }

    @Override // android.view.View
    public final void autofill(SparseArray sparseArray) {
        if (autofillSupported()) {
            AndroidAutofillManager androidAutofillManager = this._autofillManager;
            if (androidAutofillManager != null) {
                androidAutofillManager.performAutofill(sparseArray);
            }
            AndroidAutofill androidAutofill = this._autofill;
            if (androidAutofill != null) {
                BitmapsKt.performAutofill(androidAutofill, sparseArray);
            }
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.composeAccessibilityDelegate.m601canScroll0AR0LA0$ui(false, i, this.lastDownPointerPosition);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.composeAccessibilityDelegate.m601canScroll0AR0LA0$ui(true, i, this.lastDownPointerPosition);
    }

    public final OwnedLayer createLayer(Function2 function2, NodeCoordinator$invalidateParentLayer$1 nodeCoordinator$invalidateParentLayer$1, GraphicsLayer graphicsLayer) {
        MutableVector mutableVector;
        Reference poll;
        Object obj;
        if (graphicsLayer != null) {
            return new GraphicsLayerOwnerLayer(graphicsLayer, null, this, function2, nodeCoordinator$invalidateParentLayer$1);
        }
        do {
            CardView.AnonymousClass1 anonymousClass1 = this.layerCache;
            ReferenceQueue referenceQueue = (ReferenceQueue) anonymousClass1.this$0;
            mutableVector = (MutableVector) anonymousClass1.mCardBackground;
            poll = referenceQueue.poll();
            if (poll != null) {
                mutableVector.remove(poll);
            }
        } while (poll != null);
        while (true) {
            int i = mutableVector.size;
            if (i == 0) {
                obj = null;
                break;
            }
            obj = ((Reference) mutableVector.removeAt(i - 1)).get();
            if (obj != null) {
                break;
            }
        }
        OwnedLayer ownedLayer = (OwnedLayer) obj;
        if (ownedLayer == null) {
            return new GraphicsLayerOwnerLayer(getGraphicsContext().createGraphicsLayer(), getGraphicsContext(), this, function2, nodeCoordinator$invalidateParentLayer$1);
        }
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
        GraphicsContext graphicsContext = graphicsLayerOwnerLayer.context;
        if (graphicsContext == null) {
            throw Modifier.CC.m("currently reuse is only supported when we manage the layer lifecycle");
        }
        if (!graphicsLayerOwnerLayer.graphicsLayer.isReleased) {
            InlineClassHelperKt.throwIllegalArgumentException("layer should have been released before reuse");
        }
        graphicsLayerOwnerLayer.graphicsLayer = graphicsContext.createGraphicsLayer();
        graphicsLayerOwnerLayer.isDestroyed = false;
        graphicsLayerOwnerLayer.drawBlock = function2;
        graphicsLayerOwnerLayer.invalidateParentLayer = nodeCoordinator$invalidateParentLayer$1;
        graphicsLayerOwnerLayer.isMatrixDirty = false;
        graphicsLayerOwnerLayer.isInverseMatrixDirty = false;
        graphicsLayerOwnerLayer.isIdentity = true;
        Matrix.m449resetimpl(graphicsLayerOwnerLayer.matrixCache);
        float[] fArr = graphicsLayerOwnerLayer.inverseMatrixCache;
        if (fArr != null) {
            Matrix.m449resetimpl(fArr);
        }
        graphicsLayerOwnerLayer.transformOrigin = TransformOrigin.Center;
        graphicsLayerOwnerLayer.drawnWithEnabledZ = false;
        graphicsLayerOwnerLayer.size = 9223372034707292159L;
        graphicsLayerOwnerLayer.outline = null;
        graphicsLayerOwnerLayer.mutatedFields = 0;
        return ownedLayer;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MutableObjectList mutableObjectList = this.dirtyLayers;
        if (!isAttachedToWindow()) {
            invalidateLayers(getRoot());
        }
        measureAndLayout(true);
        SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
        this.isDrawingContent = true;
        Trace.beginSection("AndroidOwner:draw");
        try {
            CanvasHolder canvasHolder = this.canvasHolder;
            AndroidCanvas androidCanvas = canvasHolder.androidCanvas;
            Canvas canvas2 = androidCanvas.internalCanvas;
            androidCanvas.internalCanvas = canvas;
            getRoot().draw$ui(androidCanvas, null);
            canvasHolder.androidCanvas.internalCanvas = canvas2;
            if (mutableObjectList.isNotEmpty()) {
                int i = mutableObjectList._size;
                for (int i2 = 0; i2 < i; i2++) {
                    ((GraphicsLayerOwnerLayer) ((OwnedLayer) mutableObjectList.get(i2))).updateDisplayList();
                }
            }
            int i3 = ViewLayer.$r8$clinit;
            mutableObjectList.clear();
            this.isDrawingContent = false;
            Trace.endSection();
            MutableObjectList mutableObjectList2 = this.postponedDirtyLayers;
            if (mutableObjectList2 != null) {
                mutableObjectList.addAll(mutableObjectList2);
                mutableObjectList2.clear();
            }
            if (isArrEnabled$ui()) {
                Api35Impl.setRequestedFrameRate(this, this.currentFrameRate);
                View view = this.frameRateCategoryView;
                if (view != null) {
                    Api35Impl.setRequestedFrameRate(view, this.currentFrameRateCategory);
                    if (!Float.isNaN(this.currentFrameRateCategory)) {
                        view.invalidate();
                        drawChild(canvas, view, getDrawingTime());
                    }
                }
                this.currentFrameRate = Float.NaN;
                this.currentFrameRateCategory = Float.NaN;
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:654:0x0449, code lost:
    
        if ((r2 / r3) >= 5.0f) goto L256;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r38v0 */
    /* JADX WARN: Type inference failed for: r38v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v81 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r4v50, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v59 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchGenericMotionEvent(android.view.MotionEvent r43) {
        /*
            Method dump skipped, instructions count: 2006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.dispatchGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0156, code lost:
    
        if (isPositionChanged(r24) == false) goto L69;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchHoverEvent(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.dispatchHoverEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isFocused()) {
            return ((FocusOwnerImpl) getFocusOwner()).m361dispatchKeyEventYhN2O0w(keyEvent, new KTypeImpl$arguments$2(6, this, keyEvent));
        }
        LazyWindowInfo lazyWindowInfo = getComposeViewContext().windowInfo;
        WindowInfoImpl.GlobalKeyboardModifiers.setValue(new PointerKeyboardModifiers(keyEvent.getMetaState()));
        return ((FocusOwnerImpl) getFocusOwner()).m361dispatchKeyEventYhN2O0w(keyEvent, FocusOwner$dispatchKeyEvent$1.INSTANCE) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        NodeChain nodeChain;
        if (isFocused()) {
            FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) getFocusOwner();
            if (focusOwnerImpl.focusInvalidationManager.isInvalidationScheduled) {
                System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            } else {
                FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(focusOwnerImpl.rootFocusNode);
                if (findActiveFocusNode != null) {
                    if (!findActiveFocusNode.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node = findActiveFocusNode.node;
                    LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(findActiveFocusNode);
                    while (requireLayoutNode != null) {
                        if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 131072) != 0) {
                            while (node != null) {
                                if ((node.kindSet & 131072) != 0) {
                                    Modifier.Node node2 = node;
                                    MutableVector mutableVector = null;
                                    while (node2 != null) {
                                        if ((node2.kindSet & 131072) != 0 && (node2 instanceof DelegatingNode)) {
                                            int i = 0;
                                            for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                                if ((node3.kindSet & 131072) != 0) {
                                                    i++;
                                                    if (i == 1) {
                                                        node2 = node3;
                                                    } else {
                                                        if (mutableVector == null) {
                                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node2 != null) {
                                                            mutableVector.add(node2);
                                                            node2 = null;
                                                        }
                                                        mutableVector.add(node3);
                                                    }
                                                }
                                            }
                                            if (i == 1) {
                                            }
                                        }
                                        node2 = HitTestResultKt.pop(mutableVector);
                                    }
                                }
                                node = node.parent;
                            }
                        }
                        requireLayoutNode = requireLayoutNode.getParent$ui();
                        node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                    }
                }
            }
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideStructure(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT < 28) {
            AndroidComposeViewAssistHelperMethodsO.INSTANCE.setClassName(viewStructure, getView());
        } else {
            super.dispatchProvideStructure(viewStructure);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Object autoClearFocusBehavior;
        FocusTargetNode activeFocusTargetNode;
        if (this.hoverExitReceived) {
            AndroidComposeView$$ExternalSyntheticLambda3 androidComposeView$$ExternalSyntheticLambda3 = this.sendHoverExitEvent;
            removeCallbacks(androidComposeView$$ExternalSyntheticLambda3);
            MotionEvent motionEvent2 = this.previousMotionEvent;
            motionEvent2.getClass();
            if (motionEvent.getActionMasked() == 0 && motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
                this.hoverExitReceived = false;
            } else {
                androidComposeView$$ExternalSyntheticLambda3.run();
            }
        }
        if (!isBadMotionEvent(motionEvent) && isAttachedToWindow() && (motionEvent.getActionMasked() != 2 || isPositionChanged(motionEvent))) {
            int m586handleMotionEvent8iAsVTc = m586handleMotionEvent8iAsVTc(motionEvent);
            if ((m586handleMotionEvent8iAsVTc & 2) != 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            boolean z = motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5;
            boolean z2 = motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584);
            if (z && z2) {
                Object parent = getParent();
                View view = parent instanceof View ? (View) parent : null;
                if (view == null || (autoClearFocusBehavior = view.getTag(R.id.auto_clear_focus_behavior_tag)) == null) {
                    autoClearFocusBehavior = new AutoClearFocusBehavior(1);
                }
                if (autoClearFocusBehavior.equals(new AutoClearFocusBehavior(1)) && (activeFocusTargetNode = ((FocusOwnerImpl) getFocusOwner()).getActiveFocusTargetNode()) != null) {
                    NodeCoordinator requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(activeFocusTargetNode);
                    if (!RulerKt.findRootCoordinates(requireLayoutCoordinates).localBoundingBoxOf(requireLayoutCoordinates, true).m389containsk4lQ0M((Float.floatToRawIntBits(motionEvent.getX()) << 32) | (Float.floatToRawIntBits(motionEvent.getY()) & 4294967295L))) {
                        ((FocusOwnerImpl) getFocusOwner()).m360clearFocusI7lrPNg(8, false, true);
                    }
                }
            }
            if ((m586handleMotionEvent8iAsVTc & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public final View findViewByAccessibilityIdTraversal(int i) {
        try {
            if (Build.VERSION.SDK_INT < 29) {
                return findViewByAccessibilityIdRootedAtCurrentView(this, i);
            }
            Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(this, Integer.valueOf(i));
            if (invoke instanceof View) {
                return (View) invoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        Rect calculateFocusRectRelativeTo;
        if (view == null || this.measureAndLayoutDelegate.isRegularFile) {
            return super.focusSearch(view, i);
        }
        View rootView = getRootView();
        rootView.getClass();
        View findNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) rootView, view, i);
        if (findNextFocus == null || !TestTagKt.containsDescendant(this, findNextFocus)) {
            findNextFocus = null;
        }
        if (view == this) {
            FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(((FocusOwnerImpl) getFocusOwner()).rootFocusNode);
            calculateFocusRectRelativeTo = findActiveFocusNode != null ? FocusTraversalKt.focusRect(findActiveFocusNode) : null;
            if (calculateFocusRectRelativeTo == null) {
                calculateFocusRectRelativeTo = FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(view, this);
            }
        } else {
            calculateFocusRectRelativeTo = FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(view, this);
        }
        FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
        int i2 = focusDirection != null ? focusDirection.value : 6;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (((FocusOwnerImpl) getFocusOwner()).m362focusSearchULY8qGw(i2, calculateFocusRectRelativeTo, new AndroidComposeView$focusSearch$searchResult$1(ref$ObjectRef, 0)) == null) {
            return view;
        }
        Object obj = ref$ObjectRef.element;
        if (obj == null) {
            if (findNextFocus == null) {
                return super.focusSearch(view, i);
            }
        } else if (findNextFocus == null || i2 == 1 || i2 == 2 || FocusTraversalKt.m374isBetterCandidateI7lrPNg(FocusTraversalKt.focusRect((FocusTargetNode) obj), FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(findNextFocus, this), calculateFocusRectRelativeTo, i2)) {
            return this;
        }
        return findNextFocus;
    }

    public final void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z) {
        this.measureAndLayoutDelegate.forceMeasureTheSubtree(layoutNode, z);
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui() {
        if (this._androidViewsHandler == null) {
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(getContext());
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler, -1);
            requestLayout();
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        androidViewsHandler2.getClass();
        return androidViewsHandler2;
    }

    public Autofill getAutofill() {
        return this._autofill;
    }

    public androidx.compose.ui.autofill.AutofillManager getAutofillManager() {
        return this._autofillManager;
    }

    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    public final ComposeViewContext getComposeViewContext() {
        return get_composeViewContext();
    }

    public final boolean getComposeViewContextIncrementedDuringInit$ui() {
        return this.composeViewContextIncrementedDuringInit;
    }

    public final Configuration getConfiguration() {
        return (Configuration) this.configuration$delegate.getValue();
    }

    public final AndroidContentCaptureManager getContentCaptureManager$ui() {
        return this.contentCaptureManager;
    }

    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    public Density getDensity() {
        return (Density) this.density$delegate.getValue();
    }

    public Rect getEmbeddedViewFocusRect() {
        if (isFocused()) {
            FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(((FocusOwnerImpl) getFocusOwner()).rootFocusNode);
            if (findActiveFocusNode != null) {
                return FocusTraversalKt.focusRect(findActiveFocusNode);
            }
            return null;
        }
        View findFocus = findFocus();
        if (findFocus != null) {
            return FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(findFocus, this);
        }
        return null;
    }

    public FocusOwner getFocusOwner() {
        return this.focusOwner;
    }

    @Override // android.view.View
    public final void getFocusedRect(android.graphics.Rect rect) {
        Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
        if (embeddedViewFocusRect != null) {
            rect.left = Math.round(embeddedViewFocusRect.left);
            rect.top = Math.round(embeddedViewFocusRect.top);
            rect.right = Math.round(embeddedViewFocusRect.right);
            rect.bottom = Math.round(embeddedViewFocusRect.bottom);
            return;
        }
        if (Intrinsics.areEqual(((FocusOwnerImpl) getFocusOwner()).m362focusSearchULY8qGw(6, null, CompositionLocalsKt$LocalLocale$1.INSTANCE$1), Boolean.TRUE)) {
            super.getFocusedRect(rect);
        } else {
            rect.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
    }

    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.fontFamilyResolver$delegate.getValue();
    }

    public Font$ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    public final LifecycleRetainedValuesStoreOwner.FrameEndScheduler getFrameEndScheduler$ui() {
        return this.frameEndScheduler;
    }

    public GraphicsContext getGraphicsContext() {
        return this.graphicsContext;
    }

    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public boolean getHasPendingMeasureOrLayout() {
        return ((SVG) this.measureAndLayoutDelegate.size).isNotEmpty() || !this.outOfFrameQueue.isEmpty();
    }

    @Override // android.view.View
    public int getImportantForAutofill() {
        return 1;
    }

    public InputModeManager getInputModeManager() {
        return this._inputModeManager;
    }

    public final InsetsListener getInsetsListener() {
        return this.insetsListener;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    @Override // android.view.View, android.view.ViewParent
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection$delegate.getValue();
    }

    public LocaleList getLocaleList() {
        return (LocaleList) this.localeList$delegate.getValue();
    }

    public long getMeasureIteration() {
        if (this.measureAndLayoutDelegate.isRegularFile) {
            return 1L;
        }
        InlineClassHelperKt.throwIllegalArgumentException("measureIteration should be only used during the measure/layout pass");
        return 1L;
    }

    public ModifierLocalManager getModifierLocalManager() {
        return this.modifierLocalManager;
    }

    public AndroidComposeView getOutOfFrameExecutor() {
        if (isAttachedToWindow()) {
            return this;
        }
        return null;
    }

    public Placeable.PlacementScope getPlacementScope() {
        int i = PlaceableKt.$r8$clinit;
        return new OuterPlacementScope(0, this);
    }

    public PointerIconService getPointerIconService() {
        return this.pointerIconService;
    }

    /* renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui, reason: not valid java name */
    public final IndirectPointerEventPrimaryDirectionalMotionAxis m585getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui() {
        return this.primaryDirectionalMotionAxisOverride;
    }

    public RectManager getRectManager() {
        return this.rectManager;
    }

    public RetainedValuesStore getRetainedValuesStore() {
        return this.retainedValuesStore;
    }

    public LayoutNode getRoot() {
        return this.root;
    }

    public final boolean getScrollCaptureInProgress$ui() {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return false;
        }
        return ((Boolean) ((ParcelableSnapshotMutableState) scrollCapture.scrollCaptureInProgress$delegate).getValue()).booleanValue();
    }

    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    public LayoutNodeDrawScope getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    public boolean getShowLayoutBounds() {
        return Build.VERSION.SDK_INT >= 30 ? Api30Impl.INSTANCE.isShowingLayoutBounds(this) : this.showLayoutBounds;
    }

    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    public SoftwareKeyboardController getSoftwareKeyboardController() {
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController = this._softwareKeyboardController;
        if (delegatingSoftwareKeyboardController != null) {
            return delegatingSoftwareKeyboardController;
        }
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController2 = new DelegatingSoftwareKeyboardController(getTextInputService());
        this._softwareKeyboardController = delegatingSoftwareKeyboardController2;
        return delegatingSoftwareKeyboardController2;
    }

    public TextInputService getTextInputService() {
        TextInputService textInputService = this._textInputService;
        if (textInputService != null) {
            return textInputService;
        }
        TextInputService textInputService2 = new TextInputService(getLegacyTextInputServiceAndroid());
        this._textInputService = textInputService2;
        return textInputService2;
    }

    public TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    public final RootForTest.UncaughtExceptionHandler getUncaughtExceptionHandler$ui() {
        return null;
    }

    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    public final ViewTreeOwners getViewTreeOwners() {
        Modifier.CC.m(this.viewTreeOwners$delegate.getValue());
        return null;
    }

    public WindowInfo getWindowInfo() {
        return getComposeViewContext().windowInfo;
    }

    public final AndroidAutofillManager get_autofillManager$ui() {
        return this._autofillManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00be A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cf A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0103 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010d A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0128 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0140 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0152 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0155 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:5:0x0018, B:7:0x0021, B:25:0x00b6, B:27:0x00be, B:28:0x00c1, B:30:0x00c5, B:32:0x00cb, B:34:0x00cf, B:35:0x00d5, B:38:0x00dd, B:41:0x00e5, B:42:0x00f1, B:44:0x00f7, B:46:0x00fd, B:48:0x0103, B:49:0x0109, B:51:0x010d, B:52:0x0111, B:57:0x0124, B:59:0x0128, B:60:0x012f, B:66:0x0140, B:67:0x014a, B:69:0x0152, B:70:0x0155, B:76:0x015e), top: B:4:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x004e A[Catch: all -> 0x0076, TryCatch #0 {all -> 0x0076, blocks: (B:90:0x0034, B:92:0x003e, B:97:0x004e, B:100:0x007d, B:102:0x0081, B:13:0x0093, B:21:0x00a6, B:23:0x00ac, B:103:0x0056, B:109:0x0062, B:112:0x006a), top: B:89:0x0034 }] */
    /* renamed from: handleMotionEvent-8iAsVTc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m586handleMotionEvent8iAsVTc(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.m586handleMotionEvent8iAsVTc(android.view.MotionEvent):int");
    }

    public final void invalidateLayoutNodeMeasurement(LayoutNode layoutNode) {
        this.measureAndLayoutDelegate.requestRemeasure(layoutNode, false);
        MutableVector mutableVector = layoutNode.get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            invalidateLayoutNodeMeasurement((LayoutNode) objArr[i2]);
        }
    }

    public final boolean isInBounds(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return RecyclerView.DECELERATION_RATE <= x && x <= ((float) getWidth()) && RecyclerView.DECELERATION_RATE <= y && y <= ((float) getHeight());
    }

    public final boolean isPositionChanged(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        return (motionEvent.getPointerCount() == 1 && (motionEvent2 = this.previousMotionEvent) != null && motionEvent2.getPointerCount() == motionEvent.getPointerCount() && motionEvent.getRawX() == motionEvent2.getRawX() && motionEvent.getRawY() == motionEvent2.getRawY()) ? false : true;
    }

    /* renamed from: localToScreen-58bKbWc, reason: not valid java name */
    public final void m587localToScreen58bKbWc(float[] fArr) {
        recalculateWindowPosition();
        Matrix.m450timesAssign58bKbWc(fArr, this.viewToWindowMatrix);
        float intBitsToFloat = Float.intBitsToFloat((int) (this.windowPosition >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (this.windowPosition & 4294967295L));
        float[] fArr2 = this.tmpMatrix;
        Matrix.m449resetimpl(fArr2);
        Matrix.m451translateimpl(fArr2, intBitsToFloat, intBitsToFloat2);
        TestTagKt.m612preTransformJiSxe2E(fArr, fArr2);
    }

    /* renamed from: localToScreen-MK-Hz9U, reason: not valid java name */
    public final long m588localToScreenMKHz9U(long j) {
        recalculateWindowPosition();
        long m447mapMKHz9U = Matrix.m447mapMKHz9U(j, this.viewToWindowMatrix);
        float intBitsToFloat = Float.intBitsToFloat((int) (this.windowPosition >> 32)) + Float.intBitsToFloat((int) (m447mapMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (this.windowPosition & 4294967295L)) + Float.intBitsToFloat((int) (m447mapMKHz9U & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    public final void measureAndLayout(boolean z) {
        AndroidComposeView$localeList$2 androidComposeView$localeList$2;
        FileMetadata fileMetadata = this.measureAndLayoutDelegate;
        if (((SVG) fileMetadata.size).isNotEmpty() || ((MutableVector) ((CardView.AnonymousClass1) fileMetadata.createdAtMillis).mCardBackground).size != 0) {
            Trace.beginSection("AndroidOwner:measureAndLayout");
            if (z) {
                try {
                    androidComposeView$localeList$2 = this.resendMotionEventOnLayout;
                } finally {
                    Trace.endSection();
                }
            } else {
                androidComposeView$localeList$2 = null;
            }
            if (fileMetadata.measureAndLayout(androidComposeView$localeList$2)) {
                requestLayout();
            }
            fileMetadata.dispatchOnPositionedCallbacks(false);
            getRectManager().dispatchCallbacks();
            if (this.isPendingInteropViewLayoutChangeDispatch) {
                getViewTreeObserver().dispatchOnGlobalLayout();
                this.isPendingInteropViewLayoutChangeDispatch = false;
            }
        }
    }

    /* renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    public final void m589measureAndLayout0kLqBqw(LayoutNode layoutNode, long j) {
        FileMetadata fileMetadata = this.measureAndLayoutDelegate;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            fileMetadata.m882measureAndLayout0kLqBqw(layoutNode, j);
            if (!((SVG) fileMetadata.size).isNotEmpty()) {
                fileMetadata.dispatchOnPositionedCallbacks(false);
                getRectManager().dispatchCallbacks();
                if (this.isPendingInteropViewLayoutChangeDispatch) {
                    getViewTreeObserver().dispatchOnGlobalLayout();
                    this.isPendingInteropViewLayoutChangeDispatch = false;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: moveFocusInChildren-3ESFkO8, reason: not valid java name */
    public final boolean m590moveFocusInChildren3ESFkO8(int i) {
        if (i != 7 && i != 8) {
            Integer m359toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m359toAndroidFocusDirection3ESFkO8(i);
            if (m359toAndroidFocusDirection3ESFkO8 == null) {
                throw Modifier.CC.m("Invalid focus direction");
            }
            int intValue = m359toAndroidFocusDirection3ESFkO8.intValue();
            FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) getFocusOwner()).getActiveFocusTargetNode();
            if (activeFocusTargetNode == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("findNextViewInEmbeddedView called when owner does not have anything focused.");
                return false;
            }
            Integer m359toAndroidFocusDirection3ESFkO82 = FocusInteropUtils_androidKt.m359toAndroidFocusDirection3ESFkO8(i);
            if (m359toAndroidFocusDirection3ESFkO82 == null) {
                throw Modifier.CC.m("Invalid focus direction");
            }
            int intValue2 = m359toAndroidFocusDirection3ESFkO82.intValue();
            ViewFactoryHolder viewFactoryHolder = HitTestResultKt.requireLayoutNode(activeFocusTargetNode).interopViewFactoryHolder;
            View interopView = viewFactoryHolder != null ? viewFactoryHolder.getInteropView() : null;
            View findFocus = findFocus();
            FocusFinder focusFinder = FocusFinder.getInstance();
            View rootView = getRootView();
            rootView.getClass();
            View findNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, findFocus, intValue2);
            if (findNextFocus == null || interopView == null || !TestTagKt.containsDescendant(interopView, findNextFocus)) {
                findNextFocus = null;
            }
            if (findNextFocus != null) {
                return FocusInteropUtils_androidKt.requestInteropFocus(findNextFocus, Integer.valueOf(intValue), null);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        RetainedValuesStore retainedValuesStore;
        Object obj;
        AndroidAutofill androidAutofill;
        super.onAttachedToWindow();
        setAttached(true);
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            setShowLayoutBounds(TestTagKt.getIsShowingLayoutBounds());
        }
        this.insetsListener.onViewAttachedToWindow(this);
        int i2 = 0;
        if (i > 28) {
            if (systemPropertiesChangedRunnable == null) {
                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = new DeviceUtil$$ExternalSyntheticLambda1(r0);
                systemPropertiesChangedRunnable = deviceUtil$$ExternalSyntheticLambda1;
                StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
                try {
                    if (systemPropertiesClass == null) {
                        systemPropertiesClass = Class.forName("android.os.SystemProperties");
                    }
                    Method method = addChangeCallbackMethod;
                    if (method == null) {
                        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                        Class cls = systemPropertiesClass;
                        method = cls != null ? cls.getDeclaredMethod("addChangeCallback", Runnable.class) : null;
                        addChangeCallbackMethod = method;
                    }
                    if (method != null) {
                        method.invoke(null, deviceUtil$$ExternalSyntheticLambda1);
                    }
                } catch (Throwable unused) {
                }
                StrictMode.setVmPolicy(vmPolicy);
            }
            MutableObjectList mutableObjectList = composeViews;
            synchronized (mutableObjectList) {
                mutableObjectList.add(this);
            }
        }
        if (!this.composeViewContextIncrementedDuringInit) {
            getComposeViewContext().incrementViewCount$ui();
        }
        this.composeViewContextIncrementedDuringInit = false;
        invalidateLayoutNodeMeasurement(getRoot());
        invalidateLayers(getRoot());
        getSnapshotObserver().observer.start();
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.register(androidAutofill);
        }
        LifecycleOwner lifecycleOwner = getComposeViewContext().lifecycleOwner;
        ViewModelStoreOwner viewModelStoreOwner = getComposeViewContext().viewModelStoreOwner;
        LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
        int i3 = 2;
        if (lifecycleOwner == null || viewModelStoreOwner == null || frameEndScheduler == null) {
            retainedValuesStore = null;
        } else {
            ViewModelStore viewModelStore = viewModelStoreOwner.getViewModelStore();
            FragmentManagerViewModel.AnonymousClass1 anonymousClass1 = new FragmentManagerViewModel.AnonymousClass1(i3);
            CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
            viewModelStore.getClass();
            empty.getClass();
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, anonymousClass1, empty);
            KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(LifecycleRetainedValuesStoreOwner.class);
            String qualifiedName = orCreateKotlinClass.getQualifiedName();
            if (qualifiedName == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
                return;
            }
            LifecycleRetainedValuesStoreOwner lifecycleRetainedValuesStoreOwner = (LifecycleRetainedValuesStoreOwner) imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
            Object parent = getParent();
            parent.getClass();
            int id = ((View) parent).getId();
            MutableIntObjectMap mutableIntObjectMap = lifecycleRetainedValuesStoreOwner.scopes;
            Object obj2 = mutableIntObjectMap.get(id);
            if (obj2 == null) {
                obj2 = new MutableObjectList(1);
                mutableIntObjectMap.set(id, obj2);
            }
            MutableObjectList mutableObjectList2 = (MutableObjectList) obj2;
            Object[] objArr = mutableObjectList2.content;
            int i4 = mutableObjectList2._size;
            while (true) {
                if (i2 >= i4) {
                    obj = null;
                    break;
                }
                obj = objArr[i2];
                if (!((LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj).isInUse) {
                    break;
                } else {
                    i2++;
                }
            }
            LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = (LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj;
            if (retainedValuesStoreEntry == null) {
                retainedValuesStoreEntry = new LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry();
                mutableObjectList2.add(retainedValuesStoreEntry);
            }
            retainedValuesStoreEntry.isInUse = true;
            this.lifecycleRetainedValuesStoreOwnerEntry = retainedValuesStoreEntry;
            retainedValuesStore = retainedValuesStoreEntry.retainedValuesStore;
        }
        if (retainedValuesStore == null) {
            retainedValuesStore = ForgetfulRetainedValuesStore.INSTANCE;
        }
        this.retainedValuesStore = retainedValuesStore;
        Function1 function1 = this.onReadyForComposition;
        if (function1 != null) {
            function1.invoke(getComposeViewContext());
            this.onReadyForComposition = null;
        }
        LifecycleRegistry lifecycle = getComposeViewContext().lifecycleOwner.getLifecycle();
        lifecycle.addObserver(this);
        lifecycle.addObserver(this.contentCaptureManager);
        this._inputModeManager.inputMode$delegate.setValue(new InputMode(isInTouchMode() ? 1 : 2));
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        getViewTreeObserver().addOnScrollChangedListener(this);
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (Build.VERSION.SDK_INT >= 31) {
            AndroidComposeViewTranslationCallbackS.INSTANCE.setViewTranslationCallback(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            ((FocusOwnerImpl) getFocusOwner()).listeners.add(androidAutofillManager);
            getSemanticsOwner().listeners.add(androidAutofillManager);
        }
        ((FocusOwnerImpl) getFocusOwner()).listeners.add(this);
    }

    @Override // android.view.View
    public final boolean onCheckIsTextEditor() {
        SessionMutex$Session sessionMutex$Session = (SessionMutex$Session) this.textInputSessionMutex.get();
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) (sessionMutex$Session != null ? sessionMutex$Session.value : null);
        if (androidPlatformTextInputSession == null) {
            return getLegacyTextInputServiceAndroid().editorHasFocus;
        }
        SessionMutex$Session sessionMutex$Session2 = (SessionMutex$Session) androidPlatformTextInputSession.methodSessionMutex.get();
        InputMethodSession inputMethodSession = (InputMethodSession) (sessionMutex$Session2 != null ? sessionMutex$Session2.value : null);
        return inputMethodSession != null && (inputMethodSession.disposed ^ true);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateConfiguration(configuration);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0063  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r18) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.view.View
    public final void onCreateVirtualViewTranslationRequests(long[] jArr, int[] iArr, Consumer consumer) {
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.getClass();
        DisplayCompat.onCreateVirtualViewTranslationRequests(androidContentCaptureManager, jArr, consumer);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        AndroidAutofill androidAutofill;
        super.onDetachedFromWindow();
        setAttached(false);
        this.insetsListener.onViewDetachedFromWindow(this);
        View view = this.frameRateCategoryView;
        if (isArrEnabled$ui() && view != null) {
            removeView(view);
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 28) {
            MutableObjectList mutableObjectList = composeViews;
            synchronized (mutableObjectList) {
                mutableObjectList.remove(this);
            }
        }
        getComposeViewContext().decrementViewCount$ui();
        PreferenceManager preferenceManager = getSnapshotObserver().observer;
        YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = (YearInReviewGeoSlideKt$$ExternalSyntheticLambda5) preferenceManager.mOnDisplayPreferenceDialogListener;
        if (yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 != null) {
            yearInReviewGeoSlideKt$$ExternalSyntheticLambda5.dispose();
        }
        preferenceManager.clear();
        LifecycleRegistry lifecycle = getComposeViewContext().lifecycleOwner.getLifecycle();
        lifecycle.removeObserver(this.contentCaptureManager);
        lifecycle.removeObserver(this);
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.unregister(androidAutofill);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getViewTreeObserver().removeOnScrollChangedListener(this);
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            retainedValuesStoreEntry.isInUse = false;
        }
        this.lifecycleRetainedValuesStoreOwnerEntry = null;
        if (i >= 31) {
            AndroidComposeViewTranslationCallbackS.INSTANCE.clearViewTranslationCallback(this);
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            getSemanticsOwner().listeners.remove(androidAutofillManager);
            ((FocusOwnerImpl) getFocusOwner()).listeners.remove(androidAutofillManager);
        }
        RectManager rectManager = getRectManager();
        rectManager.isScreenOrWindowDirty = rectManager.throttledCallbacks.m620updateOffsetsLDcG7Xg(0L, 0L, null, 0, 0);
        getRectManager().dispatchCallbacks();
        RectManager rectManager2 = getRectManager();
        ViewAnimations$$ExternalSyntheticLambda0 viewAnimations$$ExternalSyntheticLambda0 = rectManager2.dispatchToken;
        if (viewAnimations$$ExternalSyntheticLambda0 != null) {
            AndroidComposeView androidComposeView = rectManager2.executeDelayed;
            if (!Animation.CC.m23m((Object) viewAnimations$$ExternalSyntheticLambda0)) {
                viewAnimations$$ExternalSyntheticLambda0 = null;
            }
            if (viewAnimations$$ExternalSyntheticLambda0 != null) {
                androidComposeView.removeCallbacks(viewAnimations$$ExternalSyntheticLambda0);
            }
            rectManager2.dispatchToken = null;
        }
        ((FocusOwnerImpl) getFocusOwner()).listeners.remove(this);
    }

    public final void onEndApplyChanges() {
        MutableObjectList mutableObjectList;
        AndroidAutofillManager androidAutofillManager;
        Object[] objArr;
        if (this.observationClearRequested) {
            PreferenceManager preferenceManager = getSnapshotObserver().observer;
            synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
                try {
                    MutableVector mutableVector = (MutableVector) preferenceManager.mPreferenceScreen;
                    int i = mutableVector.size;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        objArr = mutableVector.content;
                        if (i2 >= i) {
                            break;
                        }
                        SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) objArr[i2];
                        snapshotStateObserver$ObservedScopeMap.removeScopeIf();
                        if (!snapshotStateObserver$ObservedScopeMap.scopeToValues.isNotEmpty()) {
                            i3++;
                        } else if (i3 > 0) {
                            Object[] objArr2 = mutableVector.content;
                            objArr2[i2 - i3] = objArr2[i2];
                        }
                        i2++;
                    }
                    int i4 = i - i3;
                    Arrays.fill(objArr, i4, i, (Object) null);
                    mutableVector.size = i4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            clearChildInvalidObservations(androidViewsHandler);
        }
        if (autofillSupported() && (androidAutofillManager = this._autofillManager) != null) {
            MutableIntSet mutableIntSet = androidAutofillManager.currentlyDisplayedIDs;
            if (mutableIntSet._size == 0 && androidAutofillManager.pendingAutofillCommit) {
                androidAutofillManager.platformAutofillManager.commit();
                androidAutofillManager.pendingAutofillCommit = false;
            }
            if (mutableIntSet._size != 0) {
                androidAutofillManager.pendingAutofillCommit = true;
            }
        }
        while (this.endApplyChangesListeners.isNotEmpty() && this.endApplyChangesListeners.get(0) != null) {
            int i5 = this.endApplyChangesListeners._size;
            int i6 = 0;
            while (true) {
                mutableObjectList = this.endApplyChangesListeners;
                if (i6 < i5) {
                    Function0 function0 = (Function0) mutableObjectList.get(i6);
                    this.endApplyChangesListeners.set(i6, null);
                    if (function0 != null) {
                        function0.invoke();
                    }
                    i6++;
                }
            }
            mutableObjectList.removeRange(0, i5);
        }
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public final void onFocusChanged(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        NodeChain nodeChain;
        boolean z;
        NodeChain nodeChain2;
        boolean z2;
        if (focusTargetNode != null) {
            if (!focusTargetNode.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNode.node;
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode);
            MutableScatterSet mutableScatterSet = null;
            ArrayList arrayList = null;
            while (requireLayoutNode != null) {
                if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 2097152) != 0) {
                    while (node != null) {
                        if ((node.kindSet & 2097152) != 0) {
                            Modifier.Node node2 = node;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if (node2 instanceof IndirectPointerInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node2);
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2 && (node2.kindSet & 2097152) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                        if ((node3.kindSet & 2097152) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node2 = node3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.add(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.add(node3);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node2 = HitTestResultKt.pop(mutableVector);
                            }
                        }
                        node = node.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node = (requireLayoutNode == null || (nodeChain2 = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain2.tail;
            }
            if (arrayList == null) {
                return;
            }
            if (focusTargetNode2 != null) {
                if (!focusTargetNode2.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node4 = focusTargetNode2.node;
                LayoutNode requireLayoutNode2 = HitTestResultKt.requireLayoutNode(focusTargetNode2);
                MutableScatterSet mutableScatterSet2 = null;
                while (requireLayoutNode2 != null) {
                    if ((((Modifier.Node) requireLayoutNode2.nodes.head).aggregateChildKindSet & 2097152) != 0) {
                        while (node4 != null) {
                            if ((node4.kindSet & 2097152) != 0) {
                                Modifier.Node node5 = node4;
                                MutableVector mutableVector2 = null;
                                while (node5 != null) {
                                    if (node5 instanceof IndirectPointerInputModifierNode) {
                                        if (mutableScatterSet2 == null) {
                                            MutableScatterSet mutableScatterSet3 = ScatterSetKt.EmptyScatterSet;
                                            mutableScatterSet2 = new MutableScatterSet();
                                        }
                                        mutableScatterSet2.add(node5);
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (z && (node5.kindSet & 2097152) != 0 && (node5 instanceof DelegatingNode)) {
                                        int i2 = 0;
                                        for (Modifier.Node node6 = ((DelegatingNode) node5).delegate; node6 != null; node6 = node6.child) {
                                            if ((node6.kindSet & 2097152) != 0) {
                                                i2++;
                                                if (i2 == 1) {
                                                    node5 = node6;
                                                } else {
                                                    if (mutableVector2 == null) {
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node5 != null) {
                                                        mutableVector2.add(node5);
                                                        node5 = null;
                                                    }
                                                    mutableVector2.add(node6);
                                                }
                                            }
                                        }
                                        if (i2 == 1) {
                                        }
                                    }
                                    node5 = HitTestResultKt.pop(mutableVector2);
                                }
                            }
                            node4 = node4.parent;
                        }
                    }
                    requireLayoutNode2 = requireLayoutNode2.getParent$ui();
                    node4 = (requireLayoutNode2 == null || (nodeChain = requireLayoutNode2.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                }
                mutableScatterSet = mutableScatterSet2;
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                IndirectPointerInputModifierNode indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) arrayList.get(i3);
                if (!(mutableScatterSet != null ? mutableScatterSet.contains(indirectPointerInputModifierNode) : false)) {
                    indirectPointerInputModifierNode.onCancelIndirectPointerInput();
                }
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.lastMatrixRecalculationAnimationTime = 0L;
        updatePositionCacheAndDispatch();
        int i = Build.VERSION.SDK_INT;
        if (32 > i || i >= 34) {
            return;
        }
        updateConfiguration(getResources().getConfiguration());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("AndroidOwner:onLayout");
        try {
            this.lastMatrixRecalculationAnimationTime = 0L;
            this.measureAndLayoutDelegate.measureAndLayout(this.resendMotionEventOnLayout);
            this.onMeasureConstraints = null;
            updatePositionCacheAndDispatch();
            if (this._androidViewsHandler != null) {
                Trace.beginSection("AndroidOwner:viewLayout");
                getAndroidViewsHandler$ui().layout(0, 0, i3 - i, i4 - i2);
                Trace.endSection();
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }

    public final void onLayoutChange(LayoutNode layoutNode) {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.composeAccessibilityDelegate;
        androidComposeViewAccessibilityDelegateCompat.currentSemanticsNodesInvalidated = true;
        if (androidComposeViewAccessibilityDelegateCompat.isEnabled$ui()) {
            androidComposeViewAccessibilityDelegateCompat.notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.currentSemanticsNodesInvalidated = true;
        if (androidContentCaptureManager.isEnabled$ui()) {
            androidContentCaptureManager.boundsUpdateChannel.mo757trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        FileMetadata fileMetadata = this.measureAndLayoutDelegate;
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                invalidateLayoutNodeMeasurement(getRoot());
            }
            long m583convertMeasureSpecI7RO_PI = m583convertMeasureSpecI7RO_PI(i);
            long m583convertMeasureSpecI7RO_PI2 = m583convertMeasureSpecI7RO_PI(i2);
            long m842fitPrioritizingHeightZbe2FdA = UStringsKt.m842fitPrioritizingHeightZbe2FdA((int) (m583convertMeasureSpecI7RO_PI >>> 32), (int) (m583convertMeasureSpecI7RO_PI & 4294967295L), (int) (m583convertMeasureSpecI7RO_PI2 >>> 32), (int) (4294967295L & m583convertMeasureSpecI7RO_PI2));
            Constraints constraints = this.onMeasureConstraints;
            if (constraints == null) {
                this.onMeasureConstraints = new Constraints(m842fitPrioritizingHeightZbe2FdA);
                this.wasMeasuredWithMultipleConstraints = false;
            } else if (!Constraints.m675equalsimpl0(constraints.value, m842fitPrioritizingHeightZbe2FdA)) {
                this.wasMeasuredWithMultipleConstraints = true;
            }
            fileMetadata.m883updateRootConstraintsBRTryo0(m842fitPrioritizingHeightZbe2FdA);
            fileMetadata.measureOnly();
            setMeasuredDimension(getRoot().layoutDelegate.measurePassDelegate.width, getRoot().layoutDelegate.measurePassDelegate.height);
            if (this._androidViewsHandler != null) {
                Trace.beginSection("AndroidOwner:androidViewMeasure");
                getAndroidViewsHandler$ui().measure(View.MeasureSpec.makeMeasureSpec(getRoot().layoutDelegate.measurePassDelegate.width, 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().layoutDelegate.measurePassDelegate.height, 1073741824));
                Trace.endSection();
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.view.View
    public final void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        if (!autofillSupported() || viewStructure == null) {
            return;
        }
        AndroidAutofillManager androidAutofillManager = this._autofillManager;
        if (androidAutofillManager != null) {
            LayoutNode layoutNode = androidAutofillManager.semanticsOwner.rootNode;
            AutofillId autofillId = androidAutofillManager.rootAutofillId;
            String str = androidAutofillManager.packageName;
            RectManager rectManager = androidAutofillManager.rectManager;
            ExceptionsKt.populate(viewStructure, layoutNode, autofillId, str, rectManager);
            Object[] objArr = ObjectListKt.EmptyArray;
            MutableObjectList mutableObjectList = new MutableObjectList(2);
            mutableObjectList.add(layoutNode);
            mutableObjectList.add(viewStructure);
            while (mutableObjectList.isNotEmpty()) {
                Object removeAt = mutableObjectList.removeAt(mutableObjectList._size - 1);
                removeAt.getClass();
                ViewStructure viewStructure2 = (ViewStructure) removeAt;
                Object removeAt2 = mutableObjectList.removeAt(mutableObjectList._size - 1);
                removeAt2.getClass();
                MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) ((LayoutNode) removeAt2).getChildren$ui();
                int i2 = ((MutableVector) objectListMutableList.objectList).size;
                for (int i3 = 0; i3 < i2; i3++) {
                    LayoutNode layoutNode2 = (LayoutNode) objectListMutableList.get(i3);
                    if (!layoutNode2.isDeactivated && layoutNode2.isAttached() && layoutNode2.isPlaced()) {
                        SemanticsConfiguration semanticsConfiguration = layoutNode2.getSemanticsConfiguration();
                        if (semanticsConfiguration != null) {
                            MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
                            if (mutableScatterMap.contains(SemanticsActions.OnAutofillText) || mutableScatterMap.contains(SemanticsActions.OnFillData) || mutableScatterMap.contains(SemanticsProperties.ContentType) || mutableScatterMap.contains(SemanticsProperties.ContentDataType)) {
                                ViewStructure newChild = viewStructure2.newChild(viewStructure2.addChildCount(1));
                                ExceptionsKt.populate(newChild, layoutNode2, androidAutofillManager.rootAutofillId, str, rectManager);
                                mutableObjectList.add(layoutNode2);
                                mutableObjectList.add(newChild);
                            }
                        }
                        mutableObjectList.add(layoutNode2);
                        mutableObjectList.add(viewStructure2);
                    }
                }
            }
        }
        AndroidAutofill androidAutofill = this._autofill;
        if (androidAutofill != null) {
            AutofillTree autofillTree = androidAutofill.autofillTree;
            LinkedHashMap linkedHashMap = autofillTree.children;
            LinkedHashMap linkedHashMap2 = autofillTree.children;
            if (linkedHashMap.isEmpty()) {
                return;
            }
            int addChildCount = viewStructure.addChildCount(linkedHashMap2.size());
            Iterator it = linkedHashMap2.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                int intValue = ((Number) entry.getKey()).intValue();
                if (entry.getValue() != null) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                    return;
                }
                ViewStructure newChild2 = viewStructure.newChild(addChildCount);
                AutofillApi26Helper.setAutofillId(newChild2, androidAutofill.rootAutofillId, intValue);
                newChild2.setId(intValue, androidAutofill.view.getContext().getPackageName(), null, null);
                AutofillApi26Helper.setAutofillType(newChild2, 1);
                throw null;
            }
        }
    }

    public final void onRequestMeasure(LayoutNode layoutNode, boolean z, boolean z2, boolean z3) {
        LayoutNode parent$ui;
        LayoutNode parent$ui2;
        FileMetadata fileMetadata = this.measureAndLayoutDelegate;
        if (!z) {
            if (fileMetadata.requestRemeasure(layoutNode, z2) && z3) {
                scheduleMeasureAndLayout(layoutNode);
                return;
            }
            return;
        }
        SVG svg = (SVG) fileMetadata.size;
        LayoutNode layoutNode2 = layoutNode.lookaheadRoot;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (layoutNode2 == null) {
            InlineClassHelperKt.throwIllegalStateException("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
        }
        int i = MeasureAndLayoutDelegate$WhenMappings.$EnumSwitchMapping$0[layoutNodeLayoutDelegate.layoutState.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3 || i == 4) {
                ((MutableVector) fileMetadata.lastAccessedAtMillis).add(new MeasureAndLayoutDelegate$PostponedRequest(layoutNode, true, z2));
                return;
            }
            if (i != 5) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            if (!layoutNodeLayoutDelegate.lookaheadMeasurePending || z2) {
                layoutNodeLayoutDelegate.lookaheadMeasurePending = true;
                layoutNodeLayoutDelegate.measurePassDelegate.measurePending = true;
                if (layoutNode.isDeactivated) {
                    return;
                }
                if ((Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) || FileMetadata.getCanAffectParentInLookahead(layoutNode)) && ((parent$ui = layoutNode.getParent$ui()) == null || !parent$ui.layoutDelegate.lookaheadMeasurePending)) {
                    svg.add(layoutNode, Invalidation.LookaheadMeasurement);
                } else if ((layoutNode.isPlaced() || FileMetadata.getCanAffectPlacedParent(layoutNode)) && ((parent$ui2 = layoutNode.getParent$ui()) == null || !parent$ui2.getMeasurePending$ui())) {
                    svg.add(layoutNode, Invalidation.Measurement);
                }
                if (fileMetadata.isDirectory || !z3) {
                    return;
                }
                scheduleMeasureAndLayout(layoutNode);
            }
        }
    }

    public final void onRequestRelayout(LayoutNode layoutNode, boolean z, boolean z2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        FileMetadata fileMetadata = this.measureAndLayoutDelegate;
        if (!z) {
            fileMetadata.getClass();
            int i = MeasureAndLayoutDelegate$WhenMappings.$EnumSwitchMapping$0[layoutNodeLayoutDelegate.layoutState.ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4) {
                return;
            }
            if (i != 5) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            LayoutNode parent$ui = layoutNode.getParent$ui();
            boolean z3 = parent$ui == null || parent$ui.isPlaced();
            if (!z2) {
                if (layoutNode.getMeasurePending$ui()) {
                    return;
                }
                if (layoutNode.getLayoutPending$ui() && layoutNode.isPlaced() == z3 && layoutNode.isPlaced() == layoutNodeLayoutDelegate.measurePassDelegate.isPlacedByParent) {
                    return;
                }
            }
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.measurePassDelegate;
            measurePassDelegate.layoutPending = true;
            measurePassDelegate.layoutPendingForAlignment = true;
            if (!layoutNode.isDeactivated && measurePassDelegate.isPlacedByParent && z3) {
                if ((parent$ui == null || !parent$ui.getLayoutPending$ui()) && (parent$ui == null || !parent$ui.getMeasurePending$ui())) {
                    ((SVG) fileMetadata.size).add(layoutNode, Invalidation.Placement);
                }
                if (fileMetadata.isDirectory) {
                    return;
                }
                scheduleMeasureAndLayout(null);
                return;
            }
            return;
        }
        SVG svg = (SVG) fileMetadata.size;
        int i2 = MeasureAndLayoutDelegate$WhenMappings.$EnumSwitchMapping$0[layoutNodeLayoutDelegate.layoutState.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return;
                }
                if (i2 != 4 && i2 != 5) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
            }
            if ((layoutNodeLayoutDelegate.lookaheadMeasurePending || layoutNodeLayoutDelegate.lookaheadLayoutPending) && !z2) {
                return;
            }
            layoutNodeLayoutDelegate.lookaheadLayoutPending = true;
            layoutNodeLayoutDelegate.lookaheadLayoutPendingForAlignment = true;
            MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.measurePassDelegate;
            measurePassDelegate2.layoutPending = true;
            measurePassDelegate2.layoutPendingForAlignment = true;
            if (layoutNode.isDeactivated) {
                return;
            }
            LayoutNode parent$ui2 = layoutNode.getParent$ui();
            if (Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) && ((parent$ui2 == null || !parent$ui2.layoutDelegate.lookaheadMeasurePending) && (parent$ui2 == null || !parent$ui2.layoutDelegate.lookaheadLayoutPending))) {
                svg.add(layoutNode, Invalidation.LookaheadPlacement);
            } else if (layoutNode.isPlaced() && ((parent$ui2 == null || !parent$ui2.getLayoutPending$ui()) && (parent$ui2 == null || !parent$ui2.getMeasurePending$ui()))) {
                svg.add(layoutNode, Invalidation.Placement);
            }
            if (fileMetadata.isDirectory) {
                return;
            }
            scheduleMeasureAndLayout(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        androidx.compose.ui.input.pointer.PointerIcon pointerIcon;
        int toolType = motionEvent.getToolType(i);
        if (motionEvent.isFromSource(8194) || !motionEvent.isFromSource(16386) || (!(toolType == 2 || toolType == 4) || (pointerIcon = ((AndroidComposeView$pointerIconService$1) getPointerIconService()).currentStylusHoverIcon) == null)) {
            return super.onResolvePointerIcon(motionEvent, i);
        }
        Context context = getContext();
        return pointerIcon instanceof AndroidPointerIconType ? PointerIcon.getSystemIcon(context, ((AndroidPointerIconType) pointerIcon).type) : PointerIcon.getSystemIcon(context, 1000);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        CancellationHandle cancellationHandle;
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(TestTagKt.getIsShowingLayoutBounds());
        }
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.frameEndScheduler;
            frameEndScheduler.getClass();
            ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) retainedValuesStoreEntry._retainedValuesStore.state;
            if (!managedRetainedValuesStore.isEnabled || managedRetainedValuesStore.isContentComposed) {
                return;
            }
            try {
                cancellationHandle = ((Wrapper_androidKt$setContent$1) frameEndScheduler).$tmp0.scheduleFrameEndCallback(new LayoutNode$_foldedChildren$1(11, retainedValuesStoreEntry));
            } catch (CancellationException unused) {
                if (!managedRetainedValuesStore.isDisposed) {
                    if (managedRetainedValuesStore.isContentComposed) {
                        PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore.purgeUnusedExitedValues();
                    managedRetainedValuesStore.isContentComposed = true;
                }
                cancellationHandle = null;
            }
            CancellationHandle cancellationHandle2 = retainedValuesStoreEntry.endRetainCancellationHandle;
            if (cancellationHandle2 != null) {
                cancellationHandle2.cancel();
            }
            retainedValuesStoreEntry.endRetainCancellationHandle = cancellationHandle;
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        if (this.superclassInitComplete) {
            int[] iArr = FocusInteropUtils_androidKt.tempCoordinates;
            LayoutDirection layoutDirection = i != 0 ? i != 1 ? null : LayoutDirection.Rtl : LayoutDirection.Ltr;
            if (layoutDirection == null) {
                layoutDirection = LayoutDirection.Ltr;
            }
            setLayoutDirection(layoutDirection);
        }
    }

    @Override // android.view.View
    public final void onScrollCaptureSearch(android.graphics.Rect rect, Point point, Consumer consumer) {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT < 31 || (scrollCapture = this.scrollCapture) == null) {
            return;
        }
        scrollCapture.onScrollCaptureSearch(this, getSemanticsOwner(), getCoroutineContext(), consumer);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        updatePositionCacheAndDispatch();
    }

    public final void onSemanticsChange() {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.composeAccessibilityDelegate;
        androidComposeViewAccessibilityDelegateCompat.currentSemanticsNodesInvalidated = true;
        Handler handler = androidComposeViewAccessibilityDelegateCompat.view.getHandler();
        if (androidComposeViewAccessibilityDelegateCompat.isEnabled$ui() && !androidComposeViewAccessibilityDelegateCompat.checkingForSemanticsChanges && handler != null) {
            androidComposeViewAccessibilityDelegateCompat.checkingForSemanticsChanges = true;
            handler.post(androidComposeViewAccessibilityDelegateCompat.semanticsChangeChecker);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.currentSemanticsNodesInvalidated = true;
        Handler handler2 = androidContentCaptureManager.view.getHandler();
        if (!androidContentCaptureManager.isEnabled$ui() || androidContentCaptureManager.checkingForSemanticsChanges || handler2 == null) {
            return;
        }
        androidContentCaptureManager.checkingForSemanticsChanges = true;
        handler2.post(androidContentCaptureManager.contentCaptureChangeChecker);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.lifecycleRetainedValuesStoreOwnerEntry;
        if (retainedValuesStoreEntry != null) {
            ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) retainedValuesStoreEntry._retainedValuesStore.state;
            if (managedRetainedValuesStore.isEnabled && !managedRetainedValuesStore.isContentComposed) {
                CancellationHandle cancellationHandle = retainedValuesStoreEntry.endRetainCancellationHandle;
                if (cancellationHandle != null) {
                    cancellationHandle.cancel();
                }
                retainedValuesStoreEntry.endRetainCancellationHandle = null;
                return;
            }
            if (managedRetainedValuesStore.isDisposed) {
                return;
            }
            if (!managedRetainedValuesStore.isContentComposed) {
                PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?");
            }
            if (!managedRetainedValuesStore.keptExitedValues.isEmpty()) {
                PreconditionsKt.throwIllegalStateException("Attempted to start retaining exited values with pending exited values");
            }
            managedRetainedValuesStore.isContentComposed = false;
        }
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public final void onTouchModeChanged(boolean z) {
        this._inputModeManager.inputMode$delegate.setValue(new InputMode(z ? 1 : 2));
    }

    @Override // android.view.View
    public final void onVirtualViewTranslationResponses(LongSparseArray longSparseArray) {
        AndroidContentCaptureManager androidContentCaptureManager = this.contentCaptureManager;
        androidContentCaptureManager.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            DisplayCompat.doTranslation(androidContentCaptureManager, longSparseArray);
        } else {
            androidContentCaptureManager.view.post(new Processor$$ExternalSyntheticLambda2(3, androidContentCaptureManager, longSparseArray));
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        boolean isShowingLayoutBounds;
        this.keyboardModifiersRequireUpdate = true;
        super.onWindowFocusChanged(z);
        if (!z || Build.VERSION.SDK_INT >= 30 || getShowLayoutBounds() == (isShowingLayoutBounds = TestTagKt.getIsShowingLayoutBounds())) {
            return;
        }
        setShowLayoutBounds(isShowingLayoutBounds);
        invalidateLayers(getRoot());
    }

    public final void recalculateWindowPosition() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (currentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = currentAnimationTimeMillis;
            CalculateMatrixToWindow calculateMatrixToWindow = this.matrixToWindow;
            float[] fArr = this.viewToWindowMatrix;
            calculateMatrixToWindow.mo602calculateMatrixToWindowEL8BTi8(this, fArr);
            TestTagKt.m610invertToJiSxe2E(fArr, this.windowToViewMatrix);
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            int[] iArr = this.tmpPositionArray;
            view.getLocationOnScreen(iArr);
            float f = iArr[0];
            float f2 = iArr[1];
            view.getLocationInWindow(iArr);
            float f3 = iArr[0];
            float f4 = f2 - iArr[1];
            this.windowPosition = (Float.floatToRawIntBits(f - f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, android.graphics.Rect rect) {
        if (!isFocused()) {
            FocusDirection focusDirection = FocusInteropUtils_androidKt.toFocusDirection(i);
            int i2 = focusDirection != null ? focusDirection.value : 7;
            Boolean m362focusSearchULY8qGw = ((FocusOwnerImpl) getFocusOwner()).m362focusSearchULY8qGw(i2, rect != null ? new Rect(rect.left, rect.top, rect.right, rect.bottom) : null, new FocusOwnerImpl$takeFocus$1(i2, 3));
            Boolean bool = Boolean.TRUE;
            if (!Intrinsics.areEqual(m362focusSearchULY8qGw, bool)) {
                if (!Intrinsics.areEqual(((FocusOwnerImpl) getFocusOwner()).m362focusSearchULY8qGw(i2, null, new FocusOwnerImpl$takeFocus$1(i2, 4)), bool)) {
                    if (!hasFocus()) {
                        return false;
                    }
                    if (i2 == 1 || i2 == 2) {
                        return ((FocusOwnerImpl) getFocusOwner()).m364resetFocus3ESFkO8(i2);
                    }
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: requestOwnerFocus-7o62pno, reason: not valid java name */
    public final boolean m591requestOwnerFocus7o62pno() {
        if (isFocused()) {
            return true;
        }
        return super.requestFocus(130, null);
    }

    public final void scheduleMeasureAndLayout(LayoutNode layoutNode) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (layoutNode != null) {
            while (layoutNode != null && layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock) {
                if (!this.wasMeasuredWithMultipleConstraints) {
                    LayoutNode parent$ui = layoutNode.getParent$ui();
                    if (parent$ui == null) {
                        break;
                    }
                    long j = ((InnerNodeCoordinator) parent$ui.nodes.innerCoordinator).measurementConstraints;
                    if (Constraints.m679getHasFixedWidthimpl(j) && Constraints.m678getHasFixedHeightimpl(j)) {
                        break;
                    }
                }
                layoutNode = layoutNode.getParent$ui();
            }
            if (layoutNode == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    /* renamed from: screenToLocal-MK-Hz9U, reason: not valid java name */
    public final long m592screenToLocalMKHz9U(long j) {
        recalculateWindowPosition();
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (this.windowPosition >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (this.windowPosition & 4294967295L));
        return Matrix.m447mapMKHz9U((Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32), this.windowToViewMatrix);
    }

    /* renamed from: sendMotionEvent-8iAsVTc, reason: not valid java name */
    public final int m593sendMotionEvent8iAsVTc(MotionEvent motionEvent) {
        Object obj;
        if (this.keyboardModifiersRequireUpdate) {
            this.keyboardModifiersRequireUpdate = false;
            LazyWindowInfo lazyWindowInfo = getComposeViewContext().windowInfo;
            WindowInfoImpl.GlobalKeyboardModifiers.setValue(new PointerKeyboardModifiers(motionEvent.getMetaState()));
        }
        MotionEventAdapter motionEventAdapter = this.motionEventAdapter;
        CardView.AnonymousClass1 convertToPointerInputEvent$ui = motionEventAdapter.convertToPointerInputEvent$ui(motionEvent, this);
        int actionMasked = motionEvent.getActionMasked();
        Cache.RealCacheRequest realCacheRequest = this.pointerInputEventProcessor;
        if (convertToPointerInputEvent$ui == null) {
            if (!realCacheRequest.done) {
                ((androidx.collection.LongSparseArray) ((HintHandler) realCacheRequest.body).state).clear();
                ((PageViewModel) realCacheRequest.cacheOut).processCancel();
            }
            return 0;
        }
        ArrayList arrayList = (ArrayList) convertToPointerInputEvent$ui.mCardBackground;
        int size = arrayList.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                obj = arrayList.get(size);
                if (((PointerInputEventData) obj).down && (actionMasked == 0 || actionMasked == 5)) {
                    break;
                }
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        obj = null;
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData != null) {
            this.lastDownPointerPosition = pointerInputEventData.position;
        }
        int m871processBIzXfog = realCacheRequest.m871processBIzXfog(convertToPointerInputEvent$ui, this, isInBounds(motionEvent));
        convertToPointerInputEvent$ui.this$0 = null;
        if ((actionMasked != 0 && actionMasked != 5) || (m871processBIzXfog & 1) != 0) {
            return m871processBIzXfog;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        motionEventAdapter.activeHoverIds.delete(pointerId);
        motionEventAdapter.motionEventToComposePointerIdMap.delete(pointerId);
        return m871processBIzXfog;
    }

    public final void sendSimulatedEvent(MotionEvent motionEvent, int i, long j, boolean z) {
        int actionMasked = motionEvent.getActionMasked();
        int i2 = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                i2 = motionEvent.getActionIndex();
            }
        } else if (i != 9 && i != 10) {
            i2 = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (i2 >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i3 = 0; i3 < pointerCount; i3++) {
            pointerPropertiesArr[i3] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i4 = 0; i4 < pointerCount; i4++) {
            pointerCoordsArr[i4] = new MotionEvent.PointerCoords();
        }
        int i5 = 0;
        while (i5 < pointerCount) {
            int i6 = ((i2 < 0 || i5 < i2) ? 0 : 1) + i5;
            motionEvent.getPointerProperties(i6, pointerPropertiesArr[i5]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i5];
            motionEvent.getPointerCoords(i6, pointerCoords);
            float f = pointerCoords.x;
            long m588localToScreenMKHz9U = m588localToScreenMKHz9U((Float.floatToRawIntBits(pointerCoords.y) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
            pointerCoords.x = Float.intBitsToFloat((int) (m588localToScreenMKHz9U >> 32));
            pointerCoords.y = Float.intBitsToFloat((int) (m588localToScreenMKHz9U & 4294967295L));
            i5++;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? j : motionEvent.getDownTime(), j, i, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), z ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        CardView.AnonymousClass1 convertToPointerInputEvent$ui = this.motionEventAdapter.convertToPointerInputEvent$ui(obtain, this);
        convertToPointerInputEvent$ui.getClass();
        this.pointerInputEventProcessor.m871processBIzXfog(convertToPointerInputEvent$ui, this, true);
        obtain.recycle();
    }

    public void setAccessibilityEventBatchIntervalMillis(long j) {
        this.composeAccessibilityDelegate.SendRecurringAccessibilityEventsIntervalMillis = j;
    }

    public final void setComposeViewContext(ComposeViewContext composeViewContext) {
        if (getCoroutineContext() != composeViewContext.compositionContext.getEffectCoroutineContext() && !((MutableObjectList.ObjectListMutableList) getRoot().getChildren$ui()).isEmpty()) {
            InlineClassHelperKt.throwIllegalArgumentException("Changing ComposeViewContext cannot change the coroutine context without disposing of the composition first.");
        }
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            ComposeViewContext composeViewContext2 = get_composeViewContext();
            if (composeViewContext != composeViewContext2) {
                if (isAttachedToWindow()) {
                    composeViewContext2.decrementViewCount$ui();
                    composeViewContext.incrementViewCount$ui();
                }
                set_composeViewContext(composeViewContext);
                setCoroutineContext(composeViewContext.compositionContext.getEffectCoroutineContext());
            }
        } finally {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
        }
    }

    public final void setComposeViewContextIncrementedDuringInit$ui(boolean z) {
        this.composeViewContextIncrementedDuringInit = z;
    }

    public final void setConfiguration(Configuration configuration) {
        this.configuration$delegate.setValue(configuration);
    }

    public final void setContentCaptureManager$ui(AndroidContentCaptureManager androidContentCaptureManager) {
        this.contentCaptureManager = androidContentCaptureManager;
    }

    public void setCoroutineContext(CoroutineContext coroutineContext) {
        this.coroutineContext = coroutineContext;
    }

    public final void setFrameEndScheduler$ui(LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler) {
        this.frameEndScheduler = frameEndScheduler;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui(long j) {
        this.lastMatrixRecalculationAnimationTime = j;
    }

    public final void setOnReadyForComposition(Function1 function1) {
        getDerivedIsAttached();
        if (isAttachedToWindow() || this.composeViewContextIncrementedDuringInit) {
            function1.invoke(getComposeViewContext());
        } else {
            this.onReadyForComposition = function1;
        }
    }

    /* renamed from: setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui, reason: not valid java name */
    public final void m594setPrimaryDirectionalMotionAxisOverrider2epLt8$ui(IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        this.primaryDirectionalMotionAxisOverride = indirectPointerEventPrimaryDirectionalMotionAxis;
    }

    public void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
    }

    public void setUncaughtExceptionHandler(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.measureAndLayoutDelegate.getClass();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.coroutines.intrinsics.CoroutineSingletons textInputSession(kotlin.jvm.functions.Function2 r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.compose.ui.platform.AndroidComposeView$textInputSession$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.ui.platform.AndroidComposeView$textInputSession$1 r0 = (androidx.compose.ui.platform.AndroidComposeView$textInputSession$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.platform.AndroidComposeView$textInputSession$1 r0 = new androidx.compose.ui.platform.AndroidComposeView$textInputSession$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L4a
        L2e:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1 r5 = new androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1
            r12 = 2
            r5.<init>(r10, r12)
            r0.label = r4
            androidx.paging.FlowExtKt$simpleScan$1 r4 = new androidx.paging.FlowExtKt$simpleScan$1
            r8 = 0
            r9 = 6
            java.util.concurrent.atomic.AtomicReference r6 = r10.textInputSessionMutex
            r7 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.coroutineScope(r4, r0)
            if (r10 != r1) goto L4a
            return r1
        L4a:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.textInputSession(kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    public final void updateConfiguration(Configuration configuration) {
        Configuration configuration2 = getConfiguration();
        if (Intrinsics.areEqual(configuration2, configuration)) {
            return;
        }
        setConfiguration(new Configuration(configuration));
        if (configuration2.fontScale != configuration.fontScale || configuration2.densityDpi != configuration.densityDpi) {
            setDensity(Room.Density(getContext()));
        }
        if ((configuration2.diff(configuration) & (-1342235264)) != 0) {
            this._windowInfo.getClass();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updatePositionCacheAndDispatch() {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeView.updatePositionCacheAndDispatch():void");
    }

    public final void voteFrameRate(float f) {
        if (isArrEnabled$ui()) {
            if (f > RecyclerView.DECELERATION_RATE) {
                if (Float.isNaN(this.currentFrameRate) || f > this.currentFrameRate) {
                    this.currentFrameRate = f;
                    return;
                }
                return;
            }
            if (f < RecyclerView.DECELERATION_RATE) {
                if (Float.isNaN(this.currentFrameRateCategory) || f < this.currentFrameRateCategory) {
                    this.currentFrameRateCategory = f;
                }
            }
        }
    }

    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    /* renamed from: getClipboard, reason: merged with bridge method [inline-methods] */
    public AndroidClipboard m596getClipboard() {
        return this.clipboard;
    }

    /* renamed from: getClipboardManager, reason: merged with bridge method [inline-methods] */
    public AndroidClipboardManager m597getClipboardManager() {
        return this.clipboardManager;
    }

    /* renamed from: getDragAndDropManager, reason: merged with bridge method [inline-methods] */
    public AndroidDragAndDropManager m598getDragAndDropManager() {
        return this.dragAndDropManager;
    }

    public MutableIntObjectMap getLayoutNodes() {
        return this.layoutNodes;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        ViewGroup.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = i;
        generateDefaultLayoutParams.height = i2;
        addViewInLayout(view, -1, generateDefaultLayoutParams, true);
    }

    @Deprecated
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui$annotations() {
    }

    /* renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations, reason: not valid java name */
    public static /* synthetic */ void m584getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui$annotations() {
    }

    public static /* synthetic */ void getRoot$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    @Deprecated
    public static /* synthetic */ void getTextInputService$annotations() {
    }

    public static /* synthetic */ void getWindowInfo$annotations() {
    }

    public RootForTest getRootForTest() {
        return this;
    }

    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, i, layoutParams, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, -1, layoutParams, true);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RootModifierNode extends Modifier.Node implements BringIntoViewModifierNode, SemanticsModifierNode, KeyInputModifierNode, LayoutModifierNode, TraversableNode {
        public final NodeChainKt$fillVector$1 rulerLambda = new NodeChainKt$fillVector$1(15, this);

        public RootModifierNode() {
        }

        @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
        public final Object bringIntoView(NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2, ContinuationImpl continuationImpl) {
            long mo520localToRootMKHz9U = nodeCoordinator.mo520localToRootMKHz9U(0L);
            Rect rect = (Rect) kTypeImpl$arguments$2.invoke();
            Rect m393translatek4lQ0M = rect != null ? rect.m393translatek4lQ0M(mo520localToRootMKHz9U) : null;
            if (m393translatek4lQ0M != null) {
                AndroidComposeView.this.requestRectangleOnScreen(new android.graphics.Rect((int) m393translatek4lQ0M.left, (int) m393translatek4lQ0M.top, (int) m393translatek4lQ0M.right, (int) m393translatek4lQ0M.bottom), false);
            }
            return Unit.INSTANCE;
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final boolean getShouldClearDescendantSemantics() {
            return false;
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final boolean getShouldMergeDescendantSemantics() {
            return false;
        }

        @Override // androidx.compose.ui.node.TraversableNode
        public final Object getTraverseKey() {
            return "androidx.compose.ui.layout.WindowInsetsRulers";
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final boolean isImportantForBounds() {
            return true;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
            int height;
            height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
            return height;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
            int width;
            width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
            return width;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        /* renamed from: measure-3p2s80s */
        public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
            Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
            return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, this.rulerLambda, new PainterNode$measure$1(mo512measureBRTryo0, 5));
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
            int height;
            height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
            return height;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
            int width;
            width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
            return width;
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        /* renamed from: onKeyEvent-ZmokQxo */
        public final boolean mo33onKeyEventZmokQxo(KeyEvent keyEvent) {
            FocusDirection focusDirection;
            int[] iArr = FocusInteropUtils_androidKt.tempCoordinates;
            long m499getKeyZmokQxo = Key_androidKt.m499getKeyZmokQxo(keyEvent);
            if (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.NavigatePrevious)) {
                focusDirection = new FocusDirection(2);
            } else if (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.NavigateNext)) {
                focusDirection = new FocusDirection(1);
            } else if (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Tab)) {
                focusDirection = new FocusDirection(keyEvent.isShiftPressed() ? 2 : 1);
            } else {
                focusDirection = Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionRight) ? new FocusDirection(4) : Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionLeft) ? new FocusDirection(3) : (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionUp) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.PageUp)) ? new FocusDirection(5) : (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionDown) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.PageDown)) ? new FocusDirection(6) : (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionCenter) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Enter) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.NumPadEnter)) ? new FocusDirection(7) : (Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Back) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Escape)) ? new FocusDirection(8) : null;
            }
            if (focusDirection != null) {
                int i = focusDirection.value;
                if (Key_androidKt.m500getTypeZmokQxo(keyEvent) == 2) {
                    AndroidComposeView androidComposeView = AndroidComposeView.this;
                    FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) androidComposeView.getFocusOwner()).getActiveFocusTargetNode();
                    if (activeFocusTargetNode == null || !activeFocusTargetNode.isInteropViewHost || !androidComposeView.m590moveFocusInChildren3ESFkO8(i)) {
                        Boolean m362focusSearchULY8qGw = ((FocusOwnerImpl) androidComposeView.getFocusOwner()).m362focusSearchULY8qGw(i, androidComposeView.getEmbeddedViewFocusRect(), new NodeChainKt$fillVector$1(14, focusDirection));
                        if (!(m362focusSearchULY8qGw != null ? m362focusSearchULY8qGw.booleanValue() : true)) {
                            if (i == 1 || i == 2) {
                                Integer m359toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m359toAndroidFocusDirection3ESFkO8(i);
                                int intValue = m359toAndroidFocusDirection3ESFkO8 != null ? m359toAndroidFocusDirection3ESFkO8.intValue() : 2;
                                FocusFinder focusFinder = FocusFinder.getInstance();
                                View rootView = androidComposeView.getRootView();
                                rootView.getClass();
                                View findNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, androidComposeView.getView(), intValue);
                                if (findNextFocus == null || findNextFocus.equals(androidComposeView)) {
                                    return ((FocusOwnerImpl) androidComposeView.getFocusOwner()).m364resetFocus3ESFkO8(i);
                                }
                            }
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        /* renamed from: onPreKeyEvent-ZmokQxo */
        public final boolean mo35onPreKeyEventZmokQxo(KeyEvent keyEvent) {
            return false;
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
    }

    public final void setUncaughtExceptionHandler$ui(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
    }

    public final void recalculateWindowPosition(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        CalculateMatrixToWindow calculateMatrixToWindow = this.matrixToWindow;
        float[] fArr = this.viewToWindowMatrix;
        calculateMatrixToWindow.mo602calculateMatrixToWindowEL8BTi8(this, fArr);
        TestTagKt.m610invertToJiSxe2E(fArr, this.windowToViewMatrix);
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long m447mapMKHz9U = Matrix.m447mapMKHz9U((Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L), fArr);
        float rawX = motionEvent.getRawX() - Float.intBitsToFloat((int) (m447mapMKHz9U >> 32));
        float rawY = motionEvent.getRawY() - Float.intBitsToFloat((int) (m447mapMKHz9U & 4294967295L));
        this.windowPosition = (Float.floatToRawIntBits(rawX) << 32) | (Float.floatToRawIntBits(rawY) & 4294967295L);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, android.graphics.Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z || hasFocus()) {
            return;
        }
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) getFocusOwner();
        FocusTraversalKt.clearFocus(focusOwnerImpl.rootFocusNode, true);
        if (focusOwnerImpl.getActiveFocusTargetNode() != null) {
            FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
            focusOwnerImpl.setActiveFocusTargetNode(null);
            if (activeFocusTargetNode != null) {
                activeFocusTargetNode.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Inactive);
            }
        }
    }
}
