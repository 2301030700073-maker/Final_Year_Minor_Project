package androidx.core.view;

import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextHelper;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.adapter.ZslControlNoOpImpl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.media.ClosingFinalizer;
import androidx.camera.camera2.pipe.media.OutputImage;
import androidx.camera.core.AutoValue_SurfaceOutput_CameraInputInfo;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda1;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.impl.utils.futures.ChainingListenableFuture;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda3;
import androidx.camera.core.processing.util.AutoValue_OutConfig;
import androidx.camera.view.PreviewStreamStateObserver;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.ComposePausableCompositionException;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.ThreadMap;
import androidx.compose.runtime.internal.Thread_androidKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityRecreator;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.EmojiProcessor$ProcessorSm;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ServiceLifecycleDispatcher$DispatchRunnable;
import androidx.room.util.RelationUtil;
import androidx.tracing.TraceApi29Impl;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import com.google.common.util.concurrent.ListenableFuture;
import com.jcraft.jzlib.Adler32;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import net.openid.appauth.AuthorizationRequest;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MenuHostHelper implements FeatureCombinationQuery, FutureCallback, Observable, CallbackToFutureAdapter$Resolver, DraggableState, Applier, SaveableStateRegistry.Entry, InputContentInfoCompat$InputContentInfoCompatImpl {
    public static MenuHostHelper sInstance;
    public final /* synthetic */ int $r8$classId;
    public Object mMenuProviders;
    public Object mOnInvalidateMenuCallback;
    public Object mProviderToLifecycleContainers;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LifecycleContainer {
        public final Lifecycle mLifecycle;
        public MenuHostHelper$$ExternalSyntheticLambda0 mObserver;

        public LifecycleContainer(Lifecycle lifecycle, MenuHostHelper$$ExternalSyntheticLambda0 menuHostHelper$$ExternalSyntheticLambda0) {
            this.mLifecycle = lifecycle;
            this.mObserver = menuHostHelper$$ExternalSyntheticLambda0;
            lifecycle.addObserver(menuHostHelper$$ExternalSyntheticLambda0);
        }
    }

    public MenuHostHelper(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 13:
                long[] jArr = ScatterMapKt.EmptyGroup;
                this.mOnInvalidateMenuCallback = new MutableScatterMap();
                break;
            case 18:
                this.mOnInvalidateMenuCallback = new AtomicReference(Expect_jvmKt.emptyThreadMap);
                this.mMenuProviders = new Object();
                break;
            case 21:
                this.mOnInvalidateMenuCallback = new PreviewView.AnonymousClass1(25);
                this.mMenuProviders = new PreviewView.AnonymousClass1(25);
                this.mProviderToLifecycleContainers = new PreviewView.AnonymousClass1(25);
                break;
            case 24:
                this.mOnInvalidateMenuCallback = new WeakHashMap();
                this.mMenuProviders = new WeakHashMap();
                this.mProviderToLifecycleContainers = new WeakHashMap();
                break;
            default:
                this.mOnInvalidateMenuCallback = new MutableLiveData();
                this.mProviderToLifecycleContainers = new HashMap();
                break;
        }
    }

    public static boolean delete(Editable editable, KeyEvent keyEvent, boolean z) {
        TypefaceEmojiSpan[] typefaceEmojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (typefaceEmojiSpanArr = (TypefaceEmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, TypefaceEmojiSpan.class)) != null && typefaceEmojiSpanArr.length > 0) {
                for (TypefaceEmojiSpan typefaceEmojiSpan : typefaceEmojiSpanArr) {
                    int spanStart = editable.getSpanStart(typefaceEmojiSpan);
                    int spanEnd = editable.getSpanEnd(typefaceEmojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static MenuHostHelper obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new MenuHostHelper(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public void add(LayoutNode layoutNode, Invalidation invalidation) {
        PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) this.mOnInvalidateMenuCallback;
        PreviewView.AnonymousClass1 anonymousClass12 = (PreviewView.AnonymousClass1) this.mMenuProviders;
        PreviewView.AnonymousClass1 anonymousClass13 = (PreviewView.AnonymousClass1) this.mProviderToLifecycleContainers;
        int ordinal = invalidation.ordinal();
        if (ordinal == 0) {
            anonymousClass1.add(layoutNode);
            anonymousClass13.add(layoutNode);
            return;
        }
        if (ordinal == 1) {
            anonymousClass12.add(layoutNode);
            anonymousClass13.add(layoutNode);
            return;
        }
        if (ordinal == 2) {
            if (layoutNode.lookaheadRoot != null) {
                anonymousClass13.add(layoutNode);
                return;
            } else {
                anonymousClass1.add(layoutNode);
                return;
            }
        }
        if (ordinal != 3) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        } else if (layoutNode.lookaheadRoot != null) {
            anonymousClass13.add(layoutNode);
        } else {
            anonymousClass12.add(layoutNode);
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, Observable.Observer observer) {
        synchronized (((HashMap) this.mProviderToLifecycleContainers)) {
            boolean isEmpty = ((HashMap) this.mProviderToLifecycleContainers).isEmpty();
            ((HashMap) this.mProviderToLifecycleContainers).put(observer, executor);
            if (isEmpty) {
                Util.mainThreadExecutor().execute(new LiveDataObservable$$ExternalSyntheticLambda1(this, 1));
            } else {
                executor.execute(new CameraX$$ExternalSyntheticLambda2(18, this, observer));
            }
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(Object obj, Function2 function2) {
        ((MutableIntList) this.mOnInvalidateMenuCallback).add(7);
        MutableObjectList mutableObjectList = (MutableObjectList) this.mMenuProviders;
        mutableObjectList.add(function2);
        mutableObjectList.add(obj);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        callbackToFutureAdapter$Completer.addCancellationListener(new Fragment.AnonymousClass1(7, this), Util.directExecutor());
        ((HandlerScheduledExecutorService.HandlerScheduledFuture) this.mProviderToLifecycleContainers).mCompleter.set(callbackToFutureAdapter$Completer);
        return "HandlerScheduledFuture-" + ((Callable) this.mMenuProviders).toString();
    }

    public boolean contains(LayoutNode layoutNode) {
        return !(layoutNode.lookaheadRoot == null) && (((SortedSet) ((PreviewView.AnonymousClass1) this.mOnInvalidateMenuCallback).this$0).contains(layoutNode) || ((SortedSet) ((PreviewView.AnonymousClass1) this.mMenuProviders).this$0).contains(layoutNode));
    }

    public void createAndSendSurfaceOutput(SurfaceEdge surfaceEdge, Map.Entry entry) {
        SurfaceEdge surfaceEdge2 = (SurfaceEdge) entry.getValue();
        Utf8.SafeProcessor.d("SurfaceProcessorNode", "     -> outputEdge = " + surfaceEdge2);
        AutoValue_SurfaceOutput_CameraInputInfo autoValue_SurfaceOutput_CameraInputInfo = null;
        AutoValue_SurfaceOutput_CameraInputInfo autoValue_SurfaceOutput_CameraInputInfo2 = new AutoValue_SurfaceOutput_CameraInputInfo(surfaceEdge.mStreamSpec.resolution, ((AutoValue_OutConfig) entry.getKey()).getCropRect, surfaceEdge.mHasCameraTransform ? (CameraInternal) this.mMenuProviders : null, ((AutoValue_OutConfig) entry.getKey()).getRotationDegrees, ((AutoValue_OutConfig) entry.getKey()).isMirroring);
        int i = ((AutoValue_OutConfig) entry.getKey()).getFormat;
        surfaceEdge2.getClass();
        Validate.checkMainThread();
        surfaceEdge2.checkNotClosed();
        RelationUtil.checkState("Consumer can only be linked once.", !surfaceEdge2.mHasConsumer);
        surfaceEdge2.mHasConsumer = true;
        SurfaceEdge.SettableSurface settableSurface = surfaceEdge2.mSettableSurface;
        ChainingListenableFuture transformAsync = Futures.transformAsync(settableSurface.getSurface(), new SurfaceEdge$$ExternalSyntheticLambda3(surfaceEdge2, settableSurface, i, autoValue_SurfaceOutput_CameraInputInfo2, autoValue_SurfaceOutput_CameraInputInfo), Util.mainThreadExecutor());
        transformAsync.addListener(new ActivityRecreator.AnonymousClass1(1, transformAsync, new CardView.AnonymousClass1(16, this, surfaceEdge2)), Util.mainThreadExecutor());
    }

    public Object dequeue() {
        Object removeLast;
        synchronized (this.mMenuProviders) {
            removeLast = ((ArrayDeque) this.mOnInvalidateMenuCallback).removeLast();
        }
        return removeLast;
    }

    @Override // androidx.compose.runtime.Applier
    public void down(Object obj) {
        ((MutableIntList) this.mOnInvalidateMenuCallback).add(1);
        ((MutableObjectList) this.mMenuProviders).add(obj);
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public Object drag(Function2 function2, SuspendLambda suspendLambda) {
        Object coroutineScope = JobKt.coroutineScope(new RippleNode$onAttach$1(this, function2, null, 13), suspendLambda);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }

    public Object get() {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            return this.mProviderToLifecycleContainers;
        }
        ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.mOnInvalidateMenuCallback).get();
        int find = threadMap.find(currentThreadId);
        if (find >= 0) {
            return threadMap.values[find];
        }
        return null;
    }

    public Canvas getCanvas() {
        return ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.canvas;
    }

    public ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) this.mMenuProviders;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = TraceApi29Impl.getColorStateList((Context) this.mOnInvalidateMenuCallback, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getContentUri() {
        return (Uri) this.mOnInvalidateMenuCallback;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public ClipDescription getDescription() {
        return (ClipDescription) this.mMenuProviders;
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.mMenuProviders;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : Utf8.SafeProcessor.getDrawable((Context) this.mOnInvalidateMenuCallback, resourceId);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        Drawable drawable;
        if (!((TypedArray) this.mMenuProviders).hasValue(i) || (resourceId = ((TypedArray) this.mMenuProviders).getResourceId(i, 0)) == 0) {
            return null;
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = (Context) this.mOnInvalidateMenuCallback;
        synchronized (appCompatDrawableManager) {
            drawable = appCompatDrawableManager.mResourceManager.getDrawable(context, resourceId, true);
        }
        return drawable;
    }

    public Typeface getFont(int i, int i2, AppCompatTextHelper.AnonymousClass1 anonymousClass1) {
        int resourceId = ((TypedArray) this.mMenuProviders).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.mProviderToLifecycleContainers) == null) {
            this.mProviderToLifecycleContainers = new TypedValue();
        }
        Context context = (Context) this.mOnInvalidateMenuCallback;
        TypedValue typedValue = (TypedValue) this.mProviderToLifecycleContainers;
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        if (context.isRestricted()) {
            return null;
        }
        return ResourcesCompat.loadFont(context, resourceId, typedValue, i2, anonymousClass1, true, false);
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Object getInputContentInfo() {
        return null;
    }

    public KeyboardActions getKeyboardActions() {
        KeyboardActions keyboardActions = (KeyboardActions) this.mMenuProviders;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyboardActions");
        throw null;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getLinkUri() {
        return (Uri) this.mProviderToLifecycleContainers;
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public long m795getSizeNHjbRc() {
        return ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.size;
    }

    public boolean hasGlyph(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if ((typefaceEmojiRasterizer.mCache & 3) == 0) {
            DefaultGlyphChecker defaultGlyphChecker = (DefaultGlyphChecker) this.mProviderToLifecycleContainers;
            MetadataItem metadataItem = typefaceEmojiRasterizer.getMetadataItem();
            int __offset = metadataItem.__offset(8);
            if (__offset != 0) {
                ((ByteBuffer) metadataItem.bb).getShort(__offset + metadataItem.bb_pos);
            }
            defaultGlyphChecker.getClass();
            ThreadLocal threadLocal = DefaultGlyphChecker.sStringBuilder;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            boolean hasGlyph = defaultGlyphChecker.mTextPaint.hasGlyph(sb.toString());
            int i3 = typefaceEmojiRasterizer.mCache & 4;
            typefaceEmojiRasterizer.mCache = hasGlyph ? i3 | 2 : i3 | 1;
        }
        return (typefaceEmojiRasterizer.mCache & 3) == 2;
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i, Object obj) {
        MutableIntList mutableIntList = (MutableIntList) this.mOnInvalidateMenuCallback;
        mutableIntList.add(5);
        mutableIntList.add(i);
        ((MutableObjectList) this.mMenuProviders).add(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, Object obj) {
        MutableIntList mutableIntList = (MutableIntList) this.mOnInvalidateMenuCallback;
        mutableIntList.add(6);
        mutableIntList.add(i);
        ((MutableObjectList) this.mMenuProviders).add(obj);
    }

    public boolean isNotEmpty() {
        return !(((SortedSet) ((PreviewView.AnonymousClass1) this.mOnInvalidateMenuCallback).this$0).isEmpty() && ((SortedSet) ((PreviewView.AnonymousClass1) this.mProviderToLifecycleContainers).this$0).isEmpty() && ((SortedSet) ((PreviewView.AnonymousClass1) this.mMenuProviders).this$0).isEmpty());
    }

    public boolean isStaleResolvedFont() {
        if (((State) this.mOnInvalidateMenuCallback).getValue() != this.mProviderToLifecycleContainers) {
            return true;
        }
        MenuHostHelper menuHostHelper = (MenuHostHelper) this.mMenuProviders;
        return menuHostHelper != null && menuHostHelper.isStaleResolvedFont();
    }

    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public boolean isSupported(SessionConfig sessionConfig) {
        CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
        ComboRequestListener comboRequestListener = new ComboRequestListener();
        CameraMetadata cameraMetadata = (CameraMetadata) this.mOnInvalidateMenuCallback;
        LocalStore.AnonymousClass8 anonymousClass8 = new LocalStore.AnonymousClass8(((Camera2CameraMetadata) cameraMetadata).camera, 1);
        CameraQuirks cameraQuirks = (CameraQuirks) this.mProviderToLifecycleContainers;
        CameraGraphConfigProvider cameraGraphConfigProvider = new CameraGraphConfigProvider(cameraCallbackMap, comboRequestListener, anonymousClass8, cameraQuirks, new ZslControlNoOpImpl(), new FlowLayoutBuildingBlocks.WrapInfo(cameraQuirks.getQuirks()), cameraMetadata, null, null);
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        return ((Boolean) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new RippleNode$onAttach$1(this, cameraGraphConfigProvider.m19create79VDu0o(0, sessionConfig, true, null, null, emptyMap, emptyMap), null, 3))).booleanValue();
    }

    public boolean measure(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.mMenuProviders;
        int[] iArr = constraintWidget.mListDimensionBehaviors;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        basicMeasure$Measure.horizontalBehavior = iArr[0];
        basicMeasure$Measure.verticalBehavior = iArr[1];
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = i;
        boolean z = basicMeasure$Measure.horizontalBehavior == 3;
        boolean z2 = basicMeasure$Measure.verticalBehavior == 3;
        boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        if (z3 && iArr2[0] == 4) {
            basicMeasure$Measure.horizontalBehavior = 1;
        }
        if (z4 && iArr2[1] == 4) {
            basicMeasure$Measure.verticalBehavior = 1;
        }
        measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        int i2 = basicMeasure$Measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i2;
        constraintWidget.mHasBaseline = i2 > 0;
        basicMeasure$Measure.measureStrategy = 0;
        return basicMeasure$Measure.measuredNeedsSolverPass;
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        MutableIntList mutableIntList = (MutableIntList) this.mOnInvalidateMenuCallback;
        mutableIntList.add(3);
        mutableIntList.add(i);
        mutableIntList.add(i2);
        mutableIntList.add(i3);
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
    public void onFailure(Throwable th) {
        switch (this.$r8$classId) {
            case 5:
                boolean z = th instanceof CancellationException;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.mMenuProviders;
                if (!z) {
                    callbackToFutureAdapter$Completer.set(null);
                    break;
                } else {
                    RelationUtil.checkState(null, callbackToFutureAdapter$Completer.setException(new SurfaceRequest.RequestCancelledException(((String) this.mProviderToLifecycleContainers).concat(" cancelled."), th)));
                    break;
                }
            default:
                ((PreviewStreamStateObserver) this.mProviderToLifecycleContainers).mFlowFuture = null;
                ArrayList arrayList = (ArrayList) this.mOnInvalidateMenuCallback;
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((CameraInfoInternal) ((CameraInfo) this.mMenuProviders)).removeSessionCaptureCallback((CameraCaptureCallback) it.next());
                    }
                    arrayList.clear();
                    break;
                }
                break;
        }
    }

    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
    public void onSuccess(Object obj) {
        switch (this.$r8$classId) {
            case 5:
                Futures.propagateTransform(true, (ListenableFuture) this.mOnInvalidateMenuCallback, (CallbackToFutureAdapter$Completer) this.mMenuProviders, Util.directExecutor());
                break;
            default:
                ((PreviewStreamStateObserver) this.mProviderToLifecycleContainers).mFlowFuture = null;
                break;
        }
    }

    public void playTo(UiApplier uiApplier, AuthorizationRequest.Builder builder) {
        Exception exc;
        Exception exc2;
        int i;
        int i2;
        MutableIntList mutableIntList = (MutableIntList) this.mOnInvalidateMenuCallback;
        int i3 = mutableIntList._size;
        MutableObjectList mutableObjectList = (MutableObjectList) this.mMenuProviders;
        MutableObjectList mutableObjectList2 = new MutableObjectList();
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i4 + 1;
            try {
                try {
                    switch (mutableIntList.get(i4)) {
                        case 0:
                            uiApplier.up();
                            i4 = i6;
                        case 1:
                            int i7 = i5 + 1;
                            uiApplier.down(mutableObjectList.get(i5));
                            i5 = i7;
                            i4 = i6;
                        case 2:
                            int i8 = i4 + 2;
                            i4 += 3;
                            uiApplier.remove(mutableIntList.get(i6), mutableIntList.get(i8));
                        case 3:
                            int i9 = i4 + 2;
                            try {
                                i = i4 + 3;
                            } catch (Exception e) {
                                exc = e;
                                i4 = i9;
                            }
                            try {
                                i4 += 4;
                                uiApplier.move(mutableIntList.get(i6), mutableIntList.get(i9), mutableIntList.get(i));
                            } catch (Exception e2) {
                                exc = e2;
                                i4 = i;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                            }
                        case 4:
                            uiApplier.clear();
                            i4 = i6;
                        case 5:
                            i4 += 2;
                            i2 = i5 + 1;
                            uiApplier.insertBottomUp(mutableIntList.get(i6), mutableObjectList.get(i5));
                            i5 = i2;
                        case 6:
                            i4 += 2;
                            try {
                                i2 = i5 + 1;
                                uiApplier.insertTopDown(mutableIntList.get(i6), mutableObjectList.get(i5));
                                i5 = i2;
                            } catch (Exception e3) {
                                exc2 = e3;
                                exc = exc2;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                            }
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            int i10 = i5 + 1;
                            Object obj = mutableObjectList.get(i5);
                            obj.getClass();
                            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj);
                            i5 += 2;
                            ((Function2) obj).invoke(uiApplier.getCurrent(), mutableObjectList.get(i10));
                            i4 = i6;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            Object obj2 = uiApplier.current;
                            if (obj2 instanceof ComposeNodeLifecycleCallback) {
                                ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) obj2;
                                if (((MutableVector) builder.mState).remove(composeNodeLifecycleCallback)) {
                                    composeNodeLifecycleCallback.onDeactivate();
                                }
                            }
                            mutableObjectList2.add(obj2);
                            uiApplier.reuse();
                            i4 = i6;
                        default:
                            i4 = i6;
                    }
                } catch (Exception e4) {
                    exc2 = e4;
                    i4 = i6;
                    exc = exc2;
                    throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                }
            } catch (Throwable th) {
                uiApplier.onEndChanges();
                throw th;
            }
        }
        if (i5 != mutableObjectList._size) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        mutableIntList._size = 0;
        uiApplier.onEndChanges();
    }

    public void postDispatchRunnable(Lifecycle.Event event) {
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable = (ServiceLifecycleDispatcher$DispatchRunnable) this.mProviderToLifecycleContainers;
        if (serviceLifecycleDispatcher$DispatchRunnable != null) {
            serviceLifecycleDispatcher$DispatchRunnable.run();
        }
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable2 = new ServiceLifecycleDispatcher$DispatchRunnable((LifecycleRegistry) this.mOnInvalidateMenuCallback, event);
        this.mProviderToLifecycleContainers = serviceLifecycleDispatcher$DispatchRunnable2;
        ((Handler) this.mMenuProviders).postAtFrontOfQueue(serviceLifecycleDispatcher$DispatchRunnable2);
    }

    public Object process(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessor$EmojiProcessCallback emojiProcessor$EmojiProcessCallback) {
        int i4;
        char c;
        EmojiProcessor$ProcessorSm emojiProcessor$ProcessorSm = new EmojiProcessor$ProcessorSm((MetadataRepo$Node) ((Dispatcher) this.mMenuProviders).runningAsyncCalls);
        int codePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean z2 = true;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                SparseArray sparseArray = emojiProcessor$ProcessorSm.mCurrentNode.mChildren;
                MetadataRepo$Node metadataRepo$Node = sparseArray == null ? null : (MetadataRepo$Node) sparseArray.get(codePointAt);
                if (emojiProcessor$ProcessorSm.mState == 2) {
                    if (metadataRepo$Node != null) {
                        emojiProcessor$ProcessorSm.mCurrentNode = metadataRepo$Node;
                        emojiProcessor$ProcessorSm.mCurrentDepth++;
                    } else {
                        if (codePointAt == 65038) {
                            emojiProcessor$ProcessorSm.reset();
                        } else if (codePointAt != 65039) {
                            MetadataRepo$Node metadataRepo$Node2 = emojiProcessor$ProcessorSm.mCurrentNode;
                            if (metadataRepo$Node2.mData != null) {
                                if (emojiProcessor$ProcessorSm.mCurrentDepth != 1) {
                                    emojiProcessor$ProcessorSm.mFlushNode = metadataRepo$Node2;
                                    emojiProcessor$ProcessorSm.reset();
                                } else if (emojiProcessor$ProcessorSm.shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                                    emojiProcessor$ProcessorSm.mFlushNode = emojiProcessor$ProcessorSm.mCurrentNode;
                                    emojiProcessor$ProcessorSm.reset();
                                } else {
                                    emojiProcessor$ProcessorSm.reset();
                                }
                                c = 3;
                            } else {
                                emojiProcessor$ProcessorSm.reset();
                            }
                        }
                        c = 1;
                    }
                    c = 2;
                } else if (metadataRepo$Node == null) {
                    emojiProcessor$ProcessorSm.reset();
                    c = 1;
                } else {
                    emojiProcessor$ProcessorSm.mState = 2;
                    emojiProcessor$ProcessorSm.mCurrentNode = metadataRepo$Node;
                    emojiProcessor$ProcessorSm.mCurrentDepth = 1;
                    c = 2;
                }
                emojiProcessor$ProcessorSm.mLastCodepoint = codePointAt;
                if (c == 1) {
                    i6 = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (i6 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i6);
                    }
                } else if (c == 2) {
                    int charCount = Character.charCount(codePointAt) + i6;
                    if (charCount < i2) {
                        codePointAt = Character.codePointAt(charSequence, charCount);
                    }
                    i6 = charCount;
                } else if (c == 3) {
                    if (z || !hasGlyph(charSequence, i4, i6, emojiProcessor$ProcessorSm.mFlushNode.mData)) {
                        z2 = emojiProcessor$EmojiProcessCallback.handleEmoji(charSequence, i4, i6, emojiProcessor$ProcessorSm.mFlushNode.mData);
                        i5++;
                    }
                }
            }
        }
        if (emojiProcessor$ProcessorSm.mState == 2 && emojiProcessor$ProcessorSm.mCurrentNode.mData != null && ((emojiProcessor$ProcessorSm.mCurrentDepth > 1 || emojiProcessor$ProcessorSm.shouldUseEmojiPresentationStyleForSingleCodepoint()) && i5 < i3 && z2 && (z || !hasGlyph(charSequence, i4, i6, emojiProcessor$ProcessorSm.mCurrentNode.mData)))) {
            emojiProcessor$EmojiProcessCallback.handleEmoji(charSequence, i4, i6, emojiProcessor$ProcessorSm.mCurrentNode.mData);
        }
        return emojiProcessor$EmojiProcessCallback.getResult();
    }

    public void recycle() {
        ((TypedArray) this.mMenuProviders).recycle();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        MutableIntList mutableIntList = (MutableIntList) this.mOnInvalidateMenuCallback;
        mutableIntList.add(2);
        mutableIntList.add(i);
        mutableIntList.add(i2);
    }

    public void removeMenuProvider(FragmentManager.AnonymousClass2 anonymousClass2) {
        ((CopyOnWriteArrayList) this.mMenuProviders).remove(anonymousClass2);
        LifecycleContainer lifecycleContainer = (LifecycleContainer) ((HashMap) this.mProviderToLifecycleContainers).remove(anonymousClass2);
        if (lifecycleContainer != null) {
            lifecycleContainer.mLifecycle.removeObserver(lifecycleContainer.mObserver);
            lifecycleContainer.mObserver = null;
        }
        ((Runnable) this.mOnInvalidateMenuCallback).run();
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer observer) {
        synchronized (((HashMap) this.mProviderToLifecycleContainers)) {
            ((HashMap) this.mProviderToLifecycleContainers).remove(observer);
            if (((HashMap) this.mProviderToLifecycleContainers).isEmpty()) {
                Util.mainThreadExecutor().execute(new LiveDataObservable$$ExternalSyntheticLambda1(this, 0));
            }
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        ((MutableIntList) this.mOnInvalidateMenuCallback).add(8);
    }

    /* renamed from: runAction-KlQnJC8, reason: not valid java name */
    public boolean m796runActionKlQnJC8(int i) {
        SoftwareKeyboardController softwareKeyboardController;
        if (i == 7) {
            getKeyboardActions();
        } else if (i == 2) {
            getKeyboardActions();
        } else if (i == 6) {
            getKeyboardActions();
        } else if (i == 5) {
            getKeyboardActions();
        } else if (i == 3) {
            getKeyboardActions();
        } else if (i == 4) {
            getKeyboardActions();
        } else if (i != 1 && i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("invalid ImeAction");
            return false;
        }
        if (i == 6) {
            FocusOwner focusOwner = (FocusOwner) this.mProviderToLifecycleContainers;
            if (focusOwner != null) {
                ((FocusOwnerImpl) focusOwner).m415moveFocusaToIllA(1, true);
                return true;
            }
            Intrinsics.throwUninitializedPropertyAccessException("focusManager");
            throw null;
        }
        if (i != 5) {
            if (i != 7 || (softwareKeyboardController = (SoftwareKeyboardController) this.mOnInvalidateMenuCallback) == null) {
                return false;
            }
            ((DelegatingSoftwareKeyboardController) softwareKeyboardController).hide();
            return true;
        }
        FocusOwner focusOwner2 = (FocusOwner) this.mProviderToLifecycleContainers;
        if (focusOwner2 != null) {
            ((FocusOwnerImpl) focusOwner2).m415moveFocusaToIllA(2, true);
            return true;
        }
        Intrinsics.throwUninitializedPropertyAccessException("focusManager");
        throw null;
    }

    public void set(Object obj) {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            this.mProviderToLifecycleContainers = obj;
            return;
        }
        synchronized (this.mMenuProviders) {
            ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.mOnInvalidateMenuCallback).get();
            int find = threadMap.find(currentThreadId);
            if (find < 0) {
                ((AtomicReference) this.mOnInvalidateMenuCallback).set(threadMap.newWith(currentThreadId, obj));
            } else {
                threadMap.values[find] = obj;
            }
        }
    }

    public void setCanvas(Canvas canvas) {
        ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.canvas = canvas;
    }

    public void setDensity(Density density) {
        ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.density = density;
    }

    public void setLayoutDirection(LayoutDirection layoutDirection) {
        ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.layoutDirection = layoutDirection;
    }

    /* renamed from: setSize-uvyYCjk, reason: not valid java name */
    public void m797setSizeuvyYCjk(long j) {
        ((CanvasDrawScope) this.mProviderToLifecycleContainers).drawParams.size = j;
    }

    public void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        constraintWidgetContainer.getClass();
        int i4 = constraintWidgetContainer.mMinWidth;
        int i5 = constraintWidgetContainer.mMinHeight;
        constraintWidgetContainer.mMinWidth = 0;
        constraintWidgetContainer.mMinHeight = 0;
        constraintWidgetContainer.setWidth(i2);
        constraintWidgetContainer.setHeight(i3);
        if (i4 < 0) {
            constraintWidgetContainer.mMinWidth = 0;
        } else {
            constraintWidgetContainer.mMinWidth = i4;
        }
        if (i5 < 0) {
            constraintWidgetContainer.mMinHeight = 0;
        } else {
            constraintWidgetContainer.mMinHeight = i5;
        }
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) this.mProviderToLifecycleContainers;
        constraintWidgetContainer2.mPass = i;
        constraintWidgetContainer2.layout();
    }

    public void unregister() {
        MutableScatterMap mutableScatterMap = (MutableScatterMap) this.mOnInvalidateMenuCallback;
        String str = (String) this.mMenuProviders;
        List list = (List) mutableScatterMap.remove(str);
        if (list != null) {
            list.remove((Function0) this.mProviderToLifecycleContainers);
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        mutableScatterMap.set(str, list);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        ((MutableIntList) this.mOnInvalidateMenuCallback).add(0);
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList arrayList = (ArrayList) this.mOnInvalidateMenuCallback;
        arrayList.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i);
            int[] iArr = constraintWidget.mListDimensionBehaviors;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.mDependencyGraph.mNeedBuildGraph = true;
    }

    @Override // androidx.compose.runtime.Applier
    public /* synthetic */ void onEndChanges() {
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void requestPermission() {
    }

    public /* synthetic */ MenuHostHelper(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.mOnInvalidateMenuCallback = obj;
        this.mMenuProviders = obj2;
        this.mProviderToLifecycleContainers = obj3;
    }

    public /* synthetic */ MenuHostHelper(Object obj, Object obj2, Object obj3, boolean z, int i) {
        this.$r8$classId = i;
        this.mProviderToLifecycleContainers = obj;
        this.mOnInvalidateMenuCallback = obj2;
        this.mMenuProviders = obj3;
    }

    public MenuHostHelper(Recomposer$$ExternalSyntheticLambda1 recomposer$$ExternalSyntheticLambda1) {
        this.$r8$classId = 16;
        this.mOnInvalidateMenuCallback = new AtomicInt(0);
        this.mMenuProviders = new LocalStore.AnonymousClass7(5);
        this.mProviderToLifecycleContainers = new Recomposer$$ExternalSyntheticLambda6(25, this, recomposer$$ExternalSyntheticLambda1);
    }

    public MenuHostHelper(SystemForegroundService systemForegroundService) {
        this.$r8$classId = 29;
        this.mOnInvalidateMenuCallback = new LifecycleRegistry(systemForegroundService, true);
        this.mMenuProviders = new Handler(Looper.getMainLooper());
    }

    public MenuHostHelper(SoftwareKeyboardController softwareKeyboardController) {
        this.$r8$classId = 14;
        this.mOnInvalidateMenuCallback = softwareKeyboardController;
    }

    public MenuHostHelper(OutputImage outputImage) {
        this.$r8$classId = 4;
        this.mOnInvalidateMenuCallback = outputImage;
        this.mMenuProviders = AtomicFU.atomic(1);
        this.mProviderToLifecycleContainers = AtomicFU.atomic(ClosingFinalizer.INSTANCE);
    }

    public MenuHostHelper(ZslControlImpl$$ExternalSyntheticLambda1 zslControlImpl$$ExternalSyntheticLambda1) {
        this.$r8$classId = 9;
        this.mMenuProviders = new Object();
        this.mOnInvalidateMenuCallback = new ArrayDeque(3);
        this.mProviderToLifecycleContainers = zslControlImpl$$ExternalSyntheticLambda1;
    }

    public /* synthetic */ MenuHostHelper(int i, boolean z) {
        this.$r8$classId = i;
    }

    public MenuHostHelper(View view) {
        this.$r8$classId = 22;
        this.mOnInvalidateMenuCallback = view;
        this.mMenuProviders = ResultKt.lazy(LazyThreadSafetyMode.NONE, new LayoutNode$_foldedChildren$1(14, this));
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        if (Build.VERSION.SDK_INT >= 30) {
            SoftwareKeyboardControllerCompat$Impl30 softwareKeyboardControllerCompat$Impl30 = new SoftwareKeyboardControllerCompat$Impl30(view);
            softwareKeyboardControllerCompat$Impl30.mView = view;
            anonymousClass7.this$0 = softwareKeyboardControllerCompat$Impl30;
        } else {
            anonymousClass7.this$0 = new Fragment.AnonymousClass7(view);
        }
        this.mProviderToLifecycleContainers = anonymousClass7;
    }

    public MenuHostHelper(CanvasDrawScope canvasDrawScope) {
        this.$r8$classId = 20;
        this.mProviderToLifecycleContainers = canvasDrawScope;
        this.mOnInvalidateMenuCallback = new PreviewView.AnonymousClass1(22, this);
    }

    public MenuHostHelper(Context context, TypedArray typedArray) {
        this.$r8$classId = 2;
        this.mOnInvalidateMenuCallback = context;
        this.mMenuProviders = typedArray;
    }

    public MenuHostHelper(Runnable runnable) {
        this.$r8$classId = 0;
        this.mMenuProviders = new CopyOnWriteArrayList();
        this.mProviderToLifecycleContainers = new HashMap();
        this.mOnInvalidateMenuCallback = runnable;
    }

    public MenuHostHelper(Context context, LocationManager locationManager) {
        this.$r8$classId = 1;
        this.mProviderToLifecycleContainers = new TwilightManager$TwilightState();
        this.mOnInvalidateMenuCallback = context;
        this.mMenuProviders = locationManager;
    }

    public MenuHostHelper(ConstraintWidgetContainer constraintWidgetContainer) {
        this.$r8$classId = 26;
        this.mOnInvalidateMenuCallback = new ArrayList();
        this.mMenuProviders = new BasicMeasure$Measure();
        this.mProviderToLifecycleContainers = constraintWidgetContainer;
    }

    public MenuHostHelper(CameraInternal cameraInternal, DefaultSurfaceProcessor defaultSurfaceProcessor) {
        this.$r8$classId = 10;
        this.mMenuProviders = cameraInternal;
        this.mOnInvalidateMenuCallback = defaultSurfaceProcessor;
    }

    public MenuHostHelper(Dispatcher dispatcher, Adler32 adler32, DefaultGlyphChecker defaultGlyphChecker, Set set) {
        this.$r8$classId = 28;
        this.mOnInvalidateMenuCallback = adler32;
        this.mMenuProviders = dispatcher;
        this.mProviderToLifecycleContainers = defaultGlyphChecker;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new LocalStore.AnonymousClass8(2, str, false));
        }
    }

    public MenuHostHelper(TypefaceResult$Immutable typefaceResult$Immutable, MenuHostHelper menuHostHelper) {
        this.$r8$classId = 23;
        this.mOnInvalidateMenuCallback = typefaceResult$Immutable;
        this.mMenuProviders = menuHostHelper;
        this.mProviderToLifecycleContainers = typefaceResult$Immutable.value;
    }

    public MenuHostHelper(Object obj) {
        this.$r8$classId = 17;
        this.mOnInvalidateMenuCallback = new MutableIntList();
        this.mMenuProviders = new MutableObjectList();
        this.mProviderToLifecycleContainers = obj;
    }

    public MenuHostHelper(Function1 function1) {
        this.$r8$classId = 12;
        this.mOnInvalidateMenuCallback = function1;
        this.mMenuProviders = new DefaultDraggableState$dragScope$1(0, this);
        this.mProviderToLifecycleContainers = new MutatorMutex();
    }
}
