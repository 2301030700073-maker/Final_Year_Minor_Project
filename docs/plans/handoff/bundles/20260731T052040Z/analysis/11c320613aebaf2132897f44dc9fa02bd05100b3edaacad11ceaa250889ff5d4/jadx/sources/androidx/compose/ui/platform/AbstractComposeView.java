package androidx.compose.ui.platform;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.StandardMenuPopup;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.android.HandlerDispatcherKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractComposeView extends ViewGroup {
    public WeakReference cachedViewTreeCompositionContext;
    public ComposeViewContext composeViewContext;
    public WrappedComposition composition;
    public boolean creatingComposition;
    public ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1 disposeViewCompositionStrategy;
    public boolean isTransitionGroupSet;
    public CompositionContext parentContext;
    public IBinder previousAttachedWindowToken;
    public boolean showLayoutBounds;

    public AbstractComposeView(Context context) {
        super(context, null, 0);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(this);
        addOnAttachStateChangeListener(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1);
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0(this);
        BundleKt.getPoolingContainerListenerHolder(this).listeners.add(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
        this.disposeViewCompositionStrategy = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1(this, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
    }

    private final void setParentContext(CompositionContext compositionContext) {
        if (this.parentContext != compositionContext) {
            this.parentContext = compositionContext;
            if (compositionContext != null) {
                this.cachedViewTreeCompositionContext = null;
            }
            WrappedComposition wrappedComposition = this.composition;
            if (wrappedComposition != null) {
                wrappedComposition.dispose();
                this.composition = null;
                if (isAttachedToWindow()) {
                    ensureCompositionCreated();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.previousAttachedWindowToken != iBinder) {
            this.previousAttachedWindowToken = iBinder;
            this.cachedViewTreeCompositionContext = null;
        }
    }

    public abstract void Content(Composer composer, int i);

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        checkAddView();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        return super.addViewInLayout(view, i, layoutParams);
    }

    public final void attachedToWindow() {
        if (isAttachedToWindow()) {
            setPreviousAttachedWindowToken(getWindowToken());
            if (this.composeViewContext == null) {
                AndroidComposeView androidComposeView = null;
                if (getChildCount() != 0) {
                    View childAt = getChildAt(0);
                    if (childAt instanceof AndroidComposeView) {
                        androidComposeView = (AndroidComposeView) childAt;
                    }
                }
                if (androidComposeView != null) {
                    androidComposeView.setComposeViewContext(updateAutoCreatedComposeViewContext(TestTagKt.findViewTreeComposeViewRoot(this), androidComposeView.getComposeViewContext()));
                }
            }
            if (getShouldCreateCompositionOnAttachedToWindow()) {
                ensureCompositionCreated();
            }
        }
    }

    public final void checkAddView() {
        if (this.creatingComposition) {
            return;
        }
        throw new UnsupportedOperationException("Cannot add views to " + getClass().getSimpleName() + "; only Compose content is supported");
    }

    public final void createComposition() {
        ComposeViewContext composeViewContext;
        View view;
        if (this.parentContext == null && !isAttachedToWindow() && ((composeViewContext = this.composeViewContext) == null || (view = composeViewContext.view) == null || !view.isAttachedToWindow())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
        } else {
            ensureCompositionCreated();
        }
    }

    public final void disposeComposition() {
        View childAt = getChildAt(0);
        AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
        if (androidComposeView != null && androidComposeView.composeViewContextIncrementedDuringInit) {
            androidComposeView.getComposeViewContext().decrementViewCount$ui();
            androidComposeView.composeViewContextIncrementedDuringInit = false;
        }
        WrappedComposition wrappedComposition = this.composition;
        if (wrappedComposition != null) {
            wrappedComposition.dispose();
        }
        this.composition = null;
        requestLayout();
    }

    public final void ensureCompositionCreated() {
        if (this.composition == null) {
            try {
                this.creatingComposition = true;
                Trace.beginSection("Compose:initializeView");
                try {
                    ComposeViewContext composeViewContext = this.composeViewContext;
                    if (composeViewContext == null) {
                        composeViewContext = resolveComposeViewContext();
                    }
                    this.composition = Wrapper_androidKt.setContent(this, composeViewContext, new ComposableLambdaImpl(1003123809, true, new Function2() { // from class: androidx.compose.ui.platform.AbstractComposeView$ensureCompositionCreated$1$1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer = (Composer) obj;
                            int intValue = ((Number) obj2).intValue();
                            GapComposer gapComposer = (GapComposer) composer;
                            if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                AbstractComposeView.this.Content(gapComposer, 0);
                            } else {
                                gapComposer.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }));
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } finally {
                this.creatingComposition = false;
            }
        }
    }

    /* renamed from: getAutoClearFocusBehavior-4UtRPd4, reason: not valid java name */
    public final int m368getAutoClearFocusBehavior4UtRPd4() {
        Object tag = getTag(R.id.auto_clear_focus_behavior_tag);
        AutoClearFocusBehavior autoClearFocusBehavior = tag instanceof AutoClearFocusBehavior ? (AutoClearFocusBehavior) tag : null;
        if (autoClearFocusBehavior != null) {
            return autoClearFocusBehavior.value;
        }
        return 1;
    }

    public final ComposeViewContext getComposeViewContext$ui() {
        return this.composeViewContext;
    }

    public final boolean getHasComposition() {
        return this.composition != null;
    }

    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    public void internalOnLayout$ui(int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    public void internalOnMeasure$ui(int i, int i2) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i, i2);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i2)));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + childAt.getMeasuredWidth(), getPaddingBottom() + getPaddingTop() + childAt.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public final boolean isTransitionGroup() {
        return !this.isTransitionGroupSet || super.isTransitionGroup();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.animationScale;
        Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(this);
        View view = this;
        while (parentOrViewTreeDisjointParent instanceof View) {
            View view2 = (View) parentOrViewTreeDisjointParent;
            if (view2.getId() == 16908290) {
                break;
            }
            view = view2;
            parentOrViewTreeDisjointParent = view2.getParent();
        }
        if (view.getParent() == null) {
            getHandler().postAtFrontOfQueue(new ReportExecutor$$ExternalSyntheticLambda0(this, 5));
        } else {
            attachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        internalOnLayout$ui(i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        ensureCompositionCreated();
        internalOnMeasure$ui(i, i2);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.platform.ComposeViewContext resolveComposeViewContext() {
        /*
            r9 = this;
            int r0 = r9.getChildCount()
            r1 = 0
            if (r0 != 0) goto L9
        L7:
            r0 = r1
            goto L1c
        L9:
            r0 = 0
            android.view.View r0 = r9.getChildAt(r0)
            boolean r2 = r0 instanceof androidx.compose.ui.platform.AndroidComposeView
            if (r2 == 0) goto L15
            androidx.compose.ui.platform.AndroidComposeView r0 = (androidx.compose.ui.platform.AndroidComposeView) r0
            goto L16
        L15:
            r0 = r1
        L16:
            if (r0 == 0) goto L7
            androidx.compose.ui.platform.ComposeViewContext r0 = r0.getComposeViewContext()
        L1c:
            android.view.View r4 = androidx.compose.ui.platform.TestTagKt.findViewTreeComposeViewRoot(r9)
            androidx.compose.ui.platform.ComposeViewContext r2 = androidx.compose.ui.platform.TestTagKt.getComposeViewContext(r4)
            if (r2 != 0) goto L7c
            androidx.compose.runtime.CompositionContext r5 = r9.resolveParentCompositionContext()
            androidx.lifecycle.LifecycleOwner r9 = androidx.lifecycle.ViewModelKt.get(r4)
            if (r9 != 0) goto L38
            if (r0 == 0) goto L35
            androidx.lifecycle.LifecycleOwner r9 = r0.lifecycleOwner
            goto L36
        L35:
            r9 = r1
        L36:
            if (r9 == 0) goto L3a
        L38:
            r6 = r9
            goto L40
        L3a:
            java.lang.String r9 = "Composed into the View which doesn't propagate ViewTreeLifecycleOwner!"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            return r1
        L40:
            androidx.savedstate.SavedStateRegistryOwner r9 = org.jsoup.Jsoup.get(r4)
            if (r9 != 0) goto L4e
            if (r0 == 0) goto L4b
            androidx.savedstate.SavedStateRegistryOwner r9 = r0.savedStateRegistryOwner
            goto L4c
        L4b:
            r9 = r1
        L4c:
            if (r9 == 0) goto L50
        L4e:
            r7 = r9
            goto L56
        L50:
            java.lang.String r9 = "Composed into the View which doesn't propagate ViewTreeSavedStateRegistryOwner!"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            return r1
        L56:
            androidx.lifecycle.ViewModelStoreOwner r9 = androidx.lifecycle.ViewModelKt.m464get(r4)
            if (r9 != 0) goto L62
            if (r0 == 0) goto L60
            androidx.lifecycle.ViewModelStoreOwner r1 = r0.viewModelStoreOwner
        L60:
            r8 = r1
            goto L63
        L62:
            r8 = r9
        L63:
            androidx.compose.ui.platform.ComposeViewContext r2 = new androidx.compose.ui.platform.ComposeViewContext
            android.view.View r9 = androidx.compose.ui.platform.TestTagKt.findViewTreeComposeViewRoot(r4)
            androidx.compose.ui.platform.ComposeViewContext r3 = androidx.compose.ui.platform.TestTagKt.getComposeViewContext(r9)
            r2.<init>(r3, r4, r5, r6, r7, r8)
            java.lang.ref.WeakReference r9 = new java.lang.ref.WeakReference
            r9.<init>(r2)
            r0 = 2131361890(0x7f0a0062, float:1.8343545E38)
            r4.setTag(r0, r9)
            return r2
        L7c:
            androidx.compose.ui.platform.ComposeViewContext r9 = r9.updateAutoCreatedComposeViewContext(r4, r2)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AbstractComposeView.resolveComposeViewContext():androidx.compose.ui.platform.ComposeViewContext");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CompositionContext resolveParentCompositionContext() {
        final Recomposer recomposer;
        CoroutineContext coroutineContext;
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        CompositionContext compositionContext = this.parentContext;
        if (compositionContext == null) {
            compositionContext = WindowRecomposer_androidKt.getCompositionContext(this);
            if (compositionContext == null) {
                Object parent = getParent();
                while (compositionContext == null && (parent instanceof View)) {
                    View view = (View) parent;
                    compositionContext = WindowRecomposer_androidKt.getCompositionContext(view);
                    parent = CloseableKt.getParentOrViewTreeDisjointParent(view);
                }
            }
            if (compositionContext != null) {
                CompositionContext compositionContext2 = (!(compositionContext instanceof Recomposer) || ((Recomposer.State) ((Recomposer) compositionContext)._state.getValue()).compareTo(Recomposer.State.ShuttingDown) > 0) ? compositionContext : null;
                if (compositionContext2 != null) {
                    this.cachedViewTreeCompositionContext = new WeakReference(compositionContext2);
                }
            } else {
                compositionContext = null;
            }
            if (compositionContext == null) {
                WeakReference weakReference = this.cachedViewTreeCompositionContext;
                if (weakReference == null || (compositionContext = (CompositionContext) weakReference.get()) == null || ((compositionContext instanceof Recomposer) && ((Recomposer.State) ((Recomposer) compositionContext)._state.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0)) {
                    compositionContext = null;
                }
                if (compositionContext == null) {
                    if (!isAttachedToWindow()) {
                        InlineClassHelperKt.throwIllegalStateException("Cannot locate windowRecomposer; View " + this + " is not attached to a window");
                    }
                    Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(this);
                    final View view2 = this;
                    while (parentOrViewTreeDisjointParent instanceof View) {
                        View view3 = (View) parentOrViewTreeDisjointParent;
                        if (view3.getId() == 16908290) {
                            break;
                        }
                        view2 = view3;
                        parentOrViewTreeDisjointParent = view3.getParent();
                    }
                    CompositionContext compositionContext3 = WindowRecomposer_androidKt.getCompositionContext(view2);
                    if (compositionContext3 == null) {
                        ((WindowRecomposerFactory$Companion$$ExternalSyntheticLambda0) WindowRecomposerPolicy.factory.get()).getClass();
                        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                        SynchronizedLazyImpl synchronizedLazyImpl = AndroidUiDispatcher.Main$delegate;
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            coroutineContext = (CoroutineContext) AndroidUiDispatcher.Main$delegate.getValue();
                        } else {
                            coroutineContext = (CoroutineContext) AndroidUiDispatcher.currentThread.get();
                            if (coroutineContext == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("no AndroidUiDispatcher for this thread");
                                return null;
                            }
                        }
                        CoroutineContext plus = coroutineContext.plus(emptyCoroutineContext);
                        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) plus.get(NeverEqualPolicy.$$INSTANCE);
                        if (monotonicFrameClock != null) {
                            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(monotonicFrameClock);
                            Latch latch = pausableMonotonicFrameClock2.latch;
                            synchronized (latch.lock) {
                                latch._isOpen = false;
                                pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
                            }
                        } else {
                            pausableMonotonicFrameClock = 0;
                        }
                        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        CoroutineContext coroutineContext2 = (MotionDurationScale) plus.get(Alignment.Companion.$$INSTANCE);
                        if (coroutineContext2 == null) {
                            coroutineContext2 = new MotionDurationScaleImpl(view2.getContext().getApplicationContext());
                            ref$ObjectRef.element = coroutineContext2;
                        }
                        if (pausableMonotonicFrameClock != 0) {
                            emptyCoroutineContext = pausableMonotonicFrameClock;
                        }
                        CoroutineContext plus2 = plus.plus(emptyCoroutineContext).plus(coroutineContext2);
                        recomposer = new Recomposer(plus2);
                        recomposer.pauseCompositionFrameClock();
                        final ContextScope CoroutineScope = JobKt.CoroutineScope(plus2);
                        LifecycleOwner lifecycleOwner = ViewModelKt.get(view2);
                        Lifecycle lifecycle = lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null;
                        if (lifecycle == null) {
                            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("ViewTreeLifecycleOwner not found from " + view2);
                            LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                            return null;
                        }
                        view2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
                            @Override // android.view.View.OnAttachStateChangeListener
                            public final void onViewDetachedFromWindow(View view4) {
                                view2.removeOnAttachStateChangeListener(this);
                                recomposer.cancel();
                            }

                            @Override // android.view.View.OnAttachStateChangeListener
                            public final void onViewAttachedToWindow(View view4) {
                            }
                        });
                        lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

                            /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
                            public abstract /* synthetic */ class WhenMappings {
                                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                                static {
                                    int[] iArr = new int[Lifecycle.Event.values().length];
                                    try {
                                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                                    } catch (NoSuchFieldError unused) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                                    } catch (NoSuchFieldError unused2) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                                    } catch (NoSuchFieldError unused3) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                                    } catch (NoSuchFieldError unused4) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                                    } catch (NoSuchFieldError unused5) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                                    } catch (NoSuchFieldError unused6) {
                                    }
                                    try {
                                        iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                                    } catch (NoSuchFieldError unused7) {
                                    }
                                    $EnumSwitchMapping$0 = iArr;
                                }
                            }

                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                                switch (WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
                                    case 1:
                                        JobKt.launch$default(ContextScope.this, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(ref$ObjectRef, recomposer, lifecycleOwner2, this, null), 1);
                                        return;
                                    case 2:
                                        PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                                        if (pausableMonotonicFrameClock3 != null) {
                                            Latch latch2 = pausableMonotonicFrameClock3.latch;
                                            synchronized (latch2.lock) {
                                                try {
                                                    if (!latch2.isOpen()) {
                                                        ArrayList arrayList = (ArrayList) latch2.awaiters;
                                                        latch2.awaiters = (ArrayList) latch2.spareList;
                                                        latch2.spareList = arrayList;
                                                        latch2._isOpen = true;
                                                        int size = arrayList.size();
                                                        for (int i = 0; i < size; i++) {
                                                            ((Continuation) arrayList.get(i)).resumeWith(Unit.INSTANCE);
                                                        }
                                                        arrayList.clear();
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                        }
                                        recomposer.resumeCompositionFrameClock();
                                        return;
                                    case 3:
                                        recomposer.pauseCompositionFrameClock();
                                        return;
                                    case 4:
                                        recomposer.cancel();
                                        return;
                                    case 5:
                                    case 6:
                                    case 7:
                                        return;
                                    default:
                                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                        return;
                                }
                            }
                        });
                        view2.setTag(R.id.androidx_compose_ui_view_composition_context, recomposer);
                        GlobalScope globalScope = GlobalScope.INSTANCE;
                        Handler handler = view2.getHandler();
                        int i = HandlerDispatcherKt.$r8$clinit;
                        view2.addOnAttachStateChangeListener(new StandardMenuPopup.AnonymousClass2(JobKt.launch$default(globalScope, new HandlerContext(handler, "windowRecomposer cleanup", false).immediate, null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposer, view2, null), 2), 3));
                    } else {
                        if (!(compositionContext3 instanceof Recomposer)) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("root viewTreeParentCompositionContext is not a Recomposer");
                            return null;
                        }
                        recomposer = (Recomposer) compositionContext3;
                    }
                    Recomposer recomposer2 = ((Recomposer.State) recomposer._state.getValue()).compareTo(Recomposer.State.ShuttingDown) > 0 ? recomposer : null;
                    if (recomposer2 != null) {
                        this.cachedViewTreeCompositionContext = new WeakReference(recomposer2);
                    }
                    return recomposer;
                }
            }
        }
        return compositionContext;
    }

    /* renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m369setAutoClearFocusBehavior17tfJxM(int i) {
        setTag(R.id.auto_clear_focus_behavior_tag, new AutoClearFocusBehavior(i));
    }

    public final void setComposeViewContext$ui(ComposeViewContext composeViewContext) {
        if (this.composeViewContext != composeViewContext) {
            if (composeViewContext == null) {
                disposeComposition();
            } else if (getChildCount() != 0) {
                View childAt = getChildAt(0);
                AndroidComposeView androidComposeView = childAt instanceof AndroidComposeView ? (AndroidComposeView) childAt : null;
                if (androidComposeView != null) {
                    if (androidComposeView.getCoroutineContext() != composeViewContext.compositionContext.getEffectCoroutineContext()) {
                        disposeComposition();
                    }
                    androidComposeView.setComposeViewContext(composeViewContext);
                }
            }
            this.composeViewContext = composeViewContext;
        }
    }

    public final void setParentCompositionContext(CompositionContext compositionContext) {
        setParentContext(compositionContext);
    }

    public final void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
        KeyEvent.Callback childAt = getChildAt(0);
        if (childAt != null) {
            ((AndroidComposeView) ((Owner) childAt)).setShowLayoutBounds(z);
        }
    }

    @Override // android.view.ViewGroup
    public void setTransitionGroup(boolean z) {
        super.setTransitionGroup(z);
        this.isTransitionGroupSet = true;
    }

    public final void setViewCompositionStrategy(ViewCompositionStrategy viewCompositionStrategy) {
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1 = this.disposeViewCompositionStrategy;
        if (viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1 != null) {
            viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1.invoke();
        }
        ((TestTagKt) viewCompositionStrategy).getClass();
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(this);
        addOnAttachStateChangeListener(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1);
        ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0(this);
        BundleKt.getPoolingContainerListenerHolder(this).listeners.add(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
        this.disposeViewCompositionStrategy = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1(this, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1, viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final ComposeViewContext updateAutoCreatedComposeViewContext(View view, ComposeViewContext composeViewContext) {
        CompositionContext resolveParentCompositionContext = resolveParentCompositionContext();
        LifecycleOwner lifecycleOwner = ViewModelKt.get(view);
        ViewModelStoreOwner m464get = ViewModelKt.m464get(view);
        SavedStateRegistryOwner savedStateRegistryOwner = Jsoup.get(view);
        CompositionContext compositionContext = composeViewContext.compositionContext;
        SavedStateRegistryOwner savedStateRegistryOwner2 = composeViewContext.savedStateRegistryOwner;
        LifecycleOwner lifecycleOwner2 = composeViewContext.lifecycleOwner;
        if (resolveParentCompositionContext == compositionContext && lifecycleOwner == lifecycleOwner2 && m464get == composeViewContext.viewModelStoreOwner && savedStateRegistryOwner == savedStateRegistryOwner2) {
            return composeViewContext;
        }
        if (resolveParentCompositionContext.getEffectCoroutineContext() != composeViewContext.compositionContext.getEffectCoroutineContext()) {
            disposeComposition();
        }
        if (lifecycleOwner == null) {
            lifecycleOwner = lifecycleOwner2;
        }
        ComposeViewContext composeViewContext2 = new ComposeViewContext(composeViewContext, view, resolveParentCompositionContext, lifecycleOwner, savedStateRegistryOwner == null ? savedStateRegistryOwner2 : savedStateRegistryOwner, m464get);
        view.setTag(R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext2));
        return composeViewContext2;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        checkAddView();
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        checkAddView();
        return super.addViewInLayout(view, i, layoutParams, z);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        checkAddView();
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, i, layoutParams);
    }

    public static /* synthetic */ void getComposeViewContext$ui$annotations() {
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }
}
