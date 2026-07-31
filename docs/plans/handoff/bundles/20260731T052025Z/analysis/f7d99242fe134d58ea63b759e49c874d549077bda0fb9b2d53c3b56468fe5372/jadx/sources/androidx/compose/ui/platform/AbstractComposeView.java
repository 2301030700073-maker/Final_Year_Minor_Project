package androidx.compose.ui.platform;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Trace;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.window.PopupLayout$Content$4;
import androidx.fragment.app.FragmentStateManager;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.OperationKt;
import com.fsck.k9.R;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.android.HandlerDispatcherKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractComposeView extends ViewGroup {
    public WeakReference cachedViewTreeCompositionContext;
    public ComposeViewContext composeViewContext;
    public WrappedComposition composition;
    public boolean creatingComposition;
    public Function0 disposeViewCompositionStrategy;
    public boolean isTransitionGroupSet;
    public CompositionContext parentContext;
    public IBinder previousAttachedWindowToken;
    public boolean showLayoutBounds;

    public AbstractComposeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setClipChildren(false);
        setClipToPadding(false);
        setImportantForAccessibility(1);
        final FragmentStateManager.AnonymousClass1 anonymousClass1 = new FragmentStateManager.AnonymousClass1(4, this);
        addOnAttachStateChangeListener(anonymousClass1);
        final ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0 = new ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0(this);
        Validate.getPoolingContainerListenerHolder(this).listeners.add(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
        this.disposeViewCompositionStrategy = new Function0() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                FragmentStateManager.AnonymousClass1 anonymousClass12 = anonymousClass1;
                AbstractComposeView abstractComposeView = AbstractComposeView.this;
                abstractComposeView.removeOnAttachStateChangeListener(anonymousClass12);
                Validate.getPoolingContainerListenerHolder(abstractComposeView).listeners.remove(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0);
                return Unit.INSTANCE;
            }
        };
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("createComposition requires a previous call to createComposition(ComposeViewContext), a parent reference, or the View to be attached to a window. Attach the View or call setParentCompositionReference.");
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
                    this.composition = Wrapper_androidKt.setContent(this, composeViewContext, new ComposableLambdaImpl(1003123809, new PopupLayout$Content$4(4, this), true));
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
    public final int m641getAutoClearFocusBehavior4UtRPd4() {
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

    public void internalOnLayout$ui(boolean z, int i, int i2, int i3, int i4) {
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
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.animationScale;
        Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(this);
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
            getHandler().postAtFrontOfQueue(new Preview$$ExternalSyntheticLambda0(22, this));
        } else {
            attachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        internalOnLayout$ui(z, i, i2, i3, i4);
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
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r1
        L40:
            androidx.savedstate.SavedStateRegistryOwner r9 = org.jsoup.helper.Validate.get(r4)
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
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r1
        L56:
            androidx.lifecycle.ViewModelStoreOwner r9 = androidx.lifecycle.ViewModelKt.m801get(r4)
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
            r0 = 2131296375(0x7f090077, float:1.8210665E38)
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
        Recomposer recomposer;
        CompositionContext compositionContext = this.parentContext;
        if (compositionContext == null) {
            compositionContext = WindowRecomposer_androidKt.getCompositionContext(this);
            if (compositionContext == null) {
                Object parent = getParent();
                while (compositionContext == null && (parent instanceof View)) {
                    View view = (View) parent;
                    compositionContext = WindowRecomposer_androidKt.getCompositionContext(view);
                    parent = OperationKt.getParentOrViewTreeDisjointParent(view);
                }
            }
            Recomposer.State state = Recomposer.State.ShuttingDown;
            if (compositionContext != null) {
                CompositionContext compositionContext2 = (!(compositionContext instanceof Recomposer) || ((Recomposer.State) ((Recomposer) compositionContext)._state.getValue()).compareTo(state) > 0) ? compositionContext : null;
                if (compositionContext2 != null) {
                    this.cachedViewTreeCompositionContext = new WeakReference(compositionContext2);
                }
            } else {
                compositionContext = null;
            }
            if (compositionContext == null) {
                WeakReference weakReference = this.cachedViewTreeCompositionContext;
                if (weakReference == null || (compositionContext = (CompositionContext) weakReference.get()) == null || ((compositionContext instanceof Recomposer) && ((Recomposer.State) ((Recomposer) compositionContext)._state.getValue()).compareTo(state) <= 0)) {
                    compositionContext = null;
                }
                if (compositionContext == null) {
                    if (!isAttachedToWindow()) {
                        InlineClassHelperKt.throwIllegalStateException("Cannot locate windowRecomposer; View " + this + " is not attached to a window");
                    }
                    Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(this);
                    View view2 = this;
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
                        Recomposer createLifecycleAwareWindowRecomposer$default = WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer$default(view2, null, 3);
                        view2.setTag(R.id.androidx_compose_ui_view_composition_context, createLifecycleAwareWindowRecomposer$default);
                        Handler handler = view2.getHandler();
                        int i = HandlerDispatcherKt.$r8$clinit;
                        view2.addOnAttachStateChangeListener(new FragmentStateManager.AnonymousClass1(5, JobKt.launch$default(GlobalScope.INSTANCE, new HandlerContext(handler, "windowRecomposer cleanup", false).immediate, null, new BlockRunner$maybeRun$1(createLifecycleAwareWindowRecomposer$default, view2, r2, 2), 2)));
                        recomposer = createLifecycleAwareWindowRecomposer$default;
                    } else {
                        if (!(compositionContext3 instanceof Recomposer)) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("root viewTreeParentCompositionContext is not a Recomposer");
                            return null;
                        }
                        recomposer = (Recomposer) compositionContext3;
                    }
                    r2 = ((Recomposer.State) recomposer._state.getValue()).compareTo(state) > 0 ? recomposer : null;
                    if (r2 != null) {
                        this.cachedViewTreeCompositionContext = new WeakReference(r2);
                    }
                    return recomposer;
                }
            }
        }
        return compositionContext;
    }

    /* renamed from: setAutoClearFocusBehavior-17tfJxM, reason: not valid java name */
    public final void m642setAutoClearFocusBehavior17tfJxM(int i) {
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
        Function0 function0 = this.disposeViewCompositionStrategy;
        if (function0 != null) {
            function0.invoke();
        }
        this.disposeViewCompositionStrategy = viewCompositionStrategy.installFor(this);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final ComposeViewContext updateAutoCreatedComposeViewContext(View view, ComposeViewContext composeViewContext) {
        CompositionContext resolveParentCompositionContext = resolveParentCompositionContext();
        LifecycleOwner lifecycleOwner = ViewModelKt.get(view);
        ViewModelStoreOwner m801get = ViewModelKt.m801get(view);
        SavedStateRegistryOwner savedStateRegistryOwner = Validate.get(view);
        CompositionContext compositionContext = composeViewContext.compositionContext;
        SavedStateRegistryOwner savedStateRegistryOwner2 = composeViewContext.savedStateRegistryOwner;
        LifecycleOwner lifecycleOwner2 = composeViewContext.lifecycleOwner;
        if (resolveParentCompositionContext == compositionContext && lifecycleOwner == lifecycleOwner2 && m801get == composeViewContext.viewModelStoreOwner && savedStateRegistryOwner == savedStateRegistryOwner2) {
            return composeViewContext;
        }
        if (resolveParentCompositionContext.getEffectCoroutineContext() != composeViewContext.compositionContext.getEffectCoroutineContext()) {
            disposeComposition();
        }
        if (lifecycleOwner == null) {
            lifecycleOwner = lifecycleOwner2;
        }
        ComposeViewContext composeViewContext2 = new ComposeViewContext(composeViewContext, view, resolveParentCompositionContext, lifecycleOwner, savedStateRegistryOwner == null ? savedStateRegistryOwner2 : savedStateRegistryOwner, m801get);
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

    public /* synthetic */ AbstractComposeView(Context context) {
        this(context, null, 0);
    }
}
