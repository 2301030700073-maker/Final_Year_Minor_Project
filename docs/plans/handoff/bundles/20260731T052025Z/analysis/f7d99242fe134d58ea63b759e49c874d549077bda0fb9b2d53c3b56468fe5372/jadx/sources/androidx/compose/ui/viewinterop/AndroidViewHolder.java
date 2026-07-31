package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.text.TextMeasurePolicy;
import androidx.compose.material3.FabPlacement;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexNode$measure$1;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda4;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.DialogLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, ComposeNodeLifecycleCallback, OwnerScope, OnApplyWindowInsetsListener {
    public Function1 bringIntoViewRequester;
    public Density density;
    public final NestedScrollDispatcher dispatcher;
    public boolean hasUpdateBlock;
    public WindowInsetsCompat insets;
    public boolean isDrawing;
    public int lastHeightMeasureSpec;
    public int lastWidthMeasureSpec;
    public final LayoutNode layoutNode;
    public LifecycleOwner lifecycleOwner;
    public final int[] location;
    public Modifier modifier;
    public final FabPlacement nestedScrollingParentHelper;
    public Function1 onDensityChanged;
    public Function1 onModifierChanged;
    public Function1 onRequestDisallowInterceptTouchEvent;
    public final Owner owner;
    public final int[] position;
    public Function0 release;
    public Function0 reset;
    public final AndroidViewHolder$runUpdate$1 runInvalidate;
    public final AndroidViewHolder$runUpdate$1 runUpdate;
    public SavedStateRegistryOwner savedStateRegistryOwner;
    public long size;
    public Function0 update;
    public final View view;

    public AndroidViewHolder(Context context, GapComposer.CompositionContextImpl compositionContextImpl, int i, NestedScrollDispatcher nestedScrollDispatcher, View view, Owner owner) {
        super(context);
        this.dispatcher = nestedScrollDispatcher;
        this.view = view;
        this.owner = owner;
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.animationScale;
        setTag(R.id.androidx_compose_ui_view_composition_context, compositionContextImpl);
        int i2 = 0;
        setSaveFromParentEnabled(false);
        addView(view);
        ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this;
        int i3 = 1;
        ViewCompat.setWindowInsetsAnimationCallback(this, new DialogLayout.AnonymousClass1(viewFactoryHolder, i3));
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, this);
        this.update = AndroidViewHolder$reset$1.INSTANCE$2;
        this.reset = AndroidViewHolder$reset$1.INSTANCE;
        this.release = AndroidViewHolder$reset$1.INSTANCE$1;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        this.modifier = companion;
        this.density = Operation$State.Density$default();
        int i4 = 2;
        this.position = new int[2];
        this.size = 0L;
        this.runUpdate = new AndroidViewHolder$runUpdate$1(viewFactoryHolder, i2);
        this.runInvalidate = new AndroidViewHolder$runUpdate$1(viewFactoryHolder, i3);
        this.location = new int[2];
        this.lastWidthMeasureSpec = Integer.MIN_VALUE;
        this.lastHeightMeasureSpec = Integer.MIN_VALUE;
        this.nestedScrollingParentHelper = new FabPlacement(1, (byte) 0);
        LayoutNode layoutNode = new LayoutNode(3);
        layoutNode.interopViewFactoryHolder = viewFactoryHolder;
        Modifier semantics = SemanticsModifierKt.semantics(NestedScrollModifierKt.nestedScroll(companion, AndroidView_androidKt.NoOpScrollConnection, nestedScrollDispatcher), true, AndroidView_androidKt$NoOpUpdate$1.INSTANCE$3);
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.onTouchEvent = new AndroidViewHolder$layoutNode$1$4(viewFactoryHolder, i3);
        ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$1 = new ProduceKt$awaitClose$4$1();
        ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$12 = pointerInteropFilter.requestDisallowInterceptTouchEvent;
        if (produceKt$awaitClose$4$12 != null) {
            produceKt$awaitClose$4$12.$cont = null;
        }
        pointerInteropFilter.requestDisallowInterceptTouchEvent = produceKt$awaitClose$4$1;
        produceKt$awaitClose$4$1.$cont = pointerInteropFilter;
        setOnRequestDisallowInterceptTouchEvent$ui(produceKt$awaitClose$4$1);
        Modifier then = RulerKt.onGloballyPositioned(ClipKt.drawBehind(semantics.then(pointerInteropFilter), new FocusOwnerImpl$focusSearch$1(viewFactoryHolder, layoutNode, viewFactoryHolder, 5)), new AndroidViewHolder$layoutNode$1$3(viewFactoryHolder, layoutNode, i4)).then(new BringIntoViewElement(new AndroidViewHolder$layoutNode$1$4(viewFactoryHolder, i4)));
        layoutNode.setModifier(this.modifier.then(then));
        this.onModifierChanged = new ZIndexNode$measure$1(10, layoutNode, then);
        layoutNode.setDensity(this.density);
        this.onDensityChanged = new NodeChainKt$fillVector$1(26, layoutNode);
        layoutNode.onAttach = new AndroidViewHolder$layoutNode$1$3(viewFactoryHolder, layoutNode, i2);
        layoutNode.onDetach = new AndroidViewHolder$layoutNode$1$4(viewFactoryHolder, i2);
        layoutNode.setMeasurePolicy(new TextMeasurePolicy(i3, viewFactoryHolder, layoutNode));
        this.layoutNode = layoutNode;
    }

    public static final int access$obtainMeasureSpec(ViewFactoryHolder viewFactoryHolder, int i, int i2, int i3) {
        return (i3 >= 0 || i == i2) ? View.MeasureSpec.makeMeasureSpec(RangesKt.coerceIn(i3, i, i2), 1073741824) : (i3 != -2 || i2 == Integer.MAX_VALUE) ? (i3 != -1 || i2 == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i2, 1073741824) : View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            InlineClassHelperKt.throwIllegalStateException("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return ((AndroidComposeView) this.owner).getSnapshotObserver();
    }

    public static Insets inset(Insets insets, int i, int i2, int i3, int i4) {
        int i5 = insets.left - i;
        if (i5 < 0) {
            i5 = 0;
        }
        int i6 = insets.top - i2;
        if (i6 < 0) {
            i6 = 0;
        }
        int i7 = insets.right - i3;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = insets.bottom - i4;
        return Insets.of(i5, i6, i7, i8 >= 0 ? i8 : 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        int[] iArr = this.location;
        getLocationInWindow(iArr);
        int i = iArr[0];
        region.op(i, iArr[1], getWidth() + i, getHeight() + iArr[1], Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final Density getDensity() {
        return this.density;
    }

    public final View getInteropView() {
        return this.view;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        FabPlacement fabPlacement = this.nestedScrollingParentHelper;
        return fabPlacement.height | fabPlacement.left;
    }

    public final Function1 getOnDensityChanged$ui() {
        return this.onDensityChanged;
    }

    public final Function1 getOnModifierChanged$ui() {
        return this.onModifierChanged;
    }

    public final Function1 getOnRequestDisallowInterceptTouchEvent$ui() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    public final Function0 getRelease() {
        return this.release;
    }

    public final Function0 getReset() {
        return this.reset;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    public final Function0 getUpdate() {
        return this.update;
    }

    public final View getView() {
        return this.view;
    }

    public final WindowInsetsCompat insetToLayoutPosition(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        Insets insets = impl.getInsets(-1);
        Insets insets2 = Insets.NONE;
        if (!insets.equals(insets2) || !impl.getInsetsIgnoringVisibility(-9).equals(insets2) || impl.getDisplayCutout() != null) {
            InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) this.layoutNode.nodes.innerCoordinator;
            if (innerNodeCoordinator.tail.isAttached) {
                long m760roundk4lQ0M = IntOffsetKt.m760roundk4lQ0M(innerNodeCoordinator.mo579localToRootMKHz9U(0L));
                int i = (int) (m760roundk4lQ0M >> 32);
                if (i < 0) {
                    i = 0;
                }
                int i2 = (int) (m760roundk4lQ0M & 4294967295L);
                if (i2 < 0) {
                    i2 = 0;
                }
                long mo576getSizeYbymL2g = RulerKt.findRootCoordinates(innerNodeCoordinator).mo576getSizeYbymL2g();
                int i3 = (int) (mo576getSizeYbymL2g >> 32);
                int i4 = (int) (mo576getSizeYbymL2g & 4294967295L);
                long j = innerNodeCoordinator.measuredSize;
                long m760roundk4lQ0M2 = IntOffsetKt.m760roundk4lQ0M(innerNodeCoordinator.mo579localToRootMKHz9U((Float.floatToRawIntBits((int) (j >> 32)) << 32) | (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L)));
                int i5 = i3 - ((int) (m760roundk4lQ0M2 >> 32));
                if (i5 < 0) {
                    i5 = 0;
                }
                int i6 = i4 - ((int) (4294967295L & m760roundk4lQ0M2));
                int i7 = i6 >= 0 ? i6 : 0;
                if (i != 0 || i2 != 0 || i5 != 0 || i7 != 0) {
                    return windowInsetsCompat.mImpl.inset(i, i2, i5, i7);
                }
            }
        }
        return windowInsetsCompat;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        if (!this.isDrawing) {
            this.layoutNode.invalidateLayer$ui();
            return null;
        }
        this.view.postOnAnimation(new AndroidComposeView$$ExternalSyntheticLambda4(3, this.runInvalidate));
        return null;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.view.isNestedScrollingEnabled();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return isAttachedToWindow();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.insets = new WindowInsetsCompat(windowInsetsCompat);
        return insetToLayoutPosition(windowInsetsCompat);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.runUpdate.invoke();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void onDeactivate() {
        this.reset.invoke();
        removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onDescendantInvalidated(View view, View view2) {
        super.onDescendantInvalidated(view, view2);
        if (!this.isDrawing) {
            this.layoutNode.invalidateLayer$ui();
        } else {
            this.view.postOnAnimation(new AndroidComposeView$$ExternalSyntheticLambda4(3, this.runInvalidate));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().observer.clear(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.view.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View view = this.view;
        if (view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            return;
        }
        if (view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        view.measure(i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        this.lastWidthMeasureSpec = i;
        this.lastHeightMeasureSpec = i2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.view.isNestedScrollingEnabled()) {
            return false;
        }
        JobKt.launch$default(this.dispatcher.getCoroutineScope(), null, null, new AndroidViewHolder$onNestedFling$1(z, this, Util.Velocity(f * (-1.0f), f2 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        if (!this.view.isNestedScrollingEnabled()) {
            return false;
        }
        JobKt.launch$default(this.dispatcher.getCoroutineScope(), null, null, new AndroidViewHolder$onNestedPreFling$1(this, Util.Velocity(f * (-1.0f), f2 * (-1.0f)), (Continuation) null, 0), 3);
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (this.view.isNestedScrollingEnabled()) {
            long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
            int i4 = i3 == 0 ? 1 : 2;
            NestedScrollNode nestedScrollNode = this.dispatcher.nestedScrollNode;
            NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
            long mo188onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo188onPreScrollOzD1aCk(i4, floatToRawIntBits) : 0L;
            iArr[0] = MathKt.roundToInt(Float.intBitsToFloat((int) (mo188onPreScrollOzD1aCk >> 32))) * (-1);
            iArr[1] = MathKt.roundToInt(Float.intBitsToFloat((int) (mo188onPreScrollOzD1aCk & 4294967295L))) * (-1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.view.isNestedScrollingEnabled()) {
            long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
            long floatToRawIntBits2 = (Float.floatToRawIntBits(i3 * (-1.0f)) << 32) | (Float.floatToRawIntBits(i4 * (-1.0f)) & 4294967295L);
            int i6 = i5 == 0 ? 1 : 2;
            NestedScrollNode nestedScrollNode = this.dispatcher.nestedScrollNode;
            NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
            long mo186onPostScrollDzOQY0M = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo186onPostScrollDzOQY0M(i6, floatToRawIntBits, floatToRawIntBits2) : 0L;
            iArr[0] = MathKt.roundToInt(Float.intBitsToFloat((int) (mo186onPostScrollDzOQY0M >> 32))) * (-1);
            iArr[1] = MathKt.roundToInt(Float.intBitsToFloat((int) (mo186onPostScrollDzOQY0M & 4294967295L))) * (-1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        FabPlacement fabPlacement = this.nestedScrollingParentHelper;
        if (i2 == 1) {
            fabPlacement.height = i;
        } else {
            fabPlacement.left = i;
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void onRelease() {
        this.release.invoke();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return ((i & 2) == 0 && (i & 1) == 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onStopNestedScroll(View view, int i) {
        FabPlacement fabPlacement = this.nestedScrollingParentHelper;
        if (i == 1) {
            fabPlacement.height = 0;
        } else {
            fabPlacement.left = 0;
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Function1 function1 = this.bringIntoViewRequester;
        if (function1 == null) {
            return true;
        }
        function1.invoke(rect != null ? new androidx.compose.ui.geometry.Rect(rect.left, rect.top, rect.right, rect.bottom) : null);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        Function1 function1 = this.onRequestDisallowInterceptTouchEvent;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z));
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void setDensity(Density density) {
        if (density != this.density) {
            this.density = density;
            Function1 function1 = this.onDensityChanged;
            if (function1 != null) {
                function1.invoke(density);
            }
        }
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.lifecycleOwner) {
            this.lifecycleOwner = lifecycleOwner;
            setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
        }
    }

    public final void setModifier(Modifier modifier) {
        if (modifier != this.modifier) {
            this.modifier = modifier;
            Function1 function1 = this.onModifierChanged;
            if (function1 != null) {
                function1.invoke(modifier);
            }
        }
    }

    public final void setOnDensityChanged$ui(Function1 function1) {
        this.onDensityChanged = function1;
    }

    public final void setOnModifierChanged$ui(Function1 function1) {
        this.onModifierChanged = function1;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui(Function1 function1) {
        this.onRequestDisallowInterceptTouchEvent = function1;
    }

    public final void setRelease(Function0 function0) {
        this.release = function0;
    }

    public final void setReset(Function0 function0) {
        this.reset = function0;
    }

    public final void setSavedStateRegistryOwner(SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
        }
    }

    public final void setUpdate(Function0 function0) {
        this.update = function0;
        this.hasUpdateBlock = true;
        this.runUpdate.invoke();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        if (this.view.isNestedScrollingEnabled()) {
            long floatToRawIntBits = (Float.floatToRawIntBits(i * (-1.0f)) << 32) | (Float.floatToRawIntBits(i2 * (-1.0f)) & 4294967295L);
            long floatToRawIntBits2 = (Float.floatToRawIntBits(i3 * (-1.0f)) << 32) | (Float.floatToRawIntBits(i4 * (-1.0f)) & 4294967295L);
            int i6 = i5 == 0 ? 1 : 2;
            NestedScrollNode nestedScrollNode = this.dispatcher.nestedScrollNode;
            NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
            if (parentNestedScrollNode$ui != null) {
                parentNestedScrollNode$ui.mo186onPostScrollDzOQY0M(i6, floatToRawIntBits, floatToRawIntBits2);
            }
        }
    }
}
