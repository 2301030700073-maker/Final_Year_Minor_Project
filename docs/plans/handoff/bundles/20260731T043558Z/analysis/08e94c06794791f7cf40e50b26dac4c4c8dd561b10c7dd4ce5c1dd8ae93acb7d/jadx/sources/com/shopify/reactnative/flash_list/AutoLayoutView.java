package com.shopify.reactnative.flash_list;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.facebook.react.views.view.ReactViewGroup;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AutoLayoutView.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0014J\b\u0010\u001d\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u001aH\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\b\u0010$\u001a\u00020\u001aH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/shopify/reactnative/flash_list/AutoLayoutView;", "Lcom/facebook/react/views/view/ReactViewGroup;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "alShadow", "Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;", "getAlShadow", "()Lcom/shopify/reactnative/flash_list/AutoLayoutShadow;", "enableInstrumentation", "", "getEnableInstrumentation", "()Z", "setEnableInstrumentation", "(Z)V", "disableAutoLayout", "getDisableAutoLayout", "setDisableAutoLayout", "pixelDensity", "", "getPixelDensity", "()D", "setPixelDensity", "(D)V", "dispatchDraw", "", "canvas", "Landroid/graphics/Canvas;", "fixLayout", "fixFooter", "getFooterDiff", "", "getFooter", "Landroid/view/View;", "getParentScrollView", "emitBlankAreaEvent", "shopify_flash-list_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class AutoLayoutView extends ReactViewGroup {
    private final AutoLayoutShadow alShadow;
    private boolean disableAutoLayout;
    private boolean enableInstrumentation;
    private double pixelDensity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoLayoutView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.alShadow = new AutoLayoutShadow();
        this.pixelDensity = 1.0d;
    }

    public final AutoLayoutShadow getAlShadow() {
        return this.alShadow;
    }

    public final boolean getEnableInstrumentation() {
        return this.enableInstrumentation;
    }

    public final void setEnableInstrumentation(boolean z) {
        this.enableInstrumentation = z;
    }

    public final boolean getDisableAutoLayout() {
        return this.disableAutoLayout;
    }

    public final void setDisableAutoLayout(boolean z) {
        this.disableAutoLayout = z;
    }

    public final double getPixelDensity() {
        return this.pixelDensity;
    }

    public final void setPixelDensity(double d) {
        this.pixelDensity = d;
    }

    @Override // com.facebook.react.views.view.ReactViewGroup, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        fixLayout();
        fixFooter();
        super.dispatchDraw(canvas);
        View parentScrollView = getParentScrollView();
        if (!this.enableInstrumentation || parentScrollView == null) {
            return;
        }
        int width = this.alShadow.getHorizontal() ? parentScrollView.getWidth() : parentScrollView.getHeight();
        int scrollX = this.alShadow.getHorizontal() ? parentScrollView.getScrollX() : parentScrollView.getScrollY();
        this.alShadow.computeBlankFromGivenOffset(scrollX, Math.max((this.alShadow.getHorizontal() ? getLeft() : getTop()) - scrollX, 0), Math.max((width + scrollX) - (this.alShadow.getHorizontal() ? getRight() : getBottom()), 0));
        emitBlankAreaEvent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void fixLayout() {
        if (getChildCount() <= 1 || this.disableAutoLayout) {
            return;
        }
        int childCount = getChildCount();
        CellContainer[] cellContainerArr = new CellContainer[childCount];
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(childAt instanceof CellContainer)) {
                throw new IllegalStateException("CellRendererComponent outer view should always be CellContainer. Learn more here: https://shopify.github.io/flash-list/docs/usage#cellrenderercomponent.");
            }
            cellContainerArr[i] = childAt;
        }
        if (childCount > 1) {
            ArraysKt.sortWith(cellContainerArr, new Comparator() { // from class: com.shopify.reactnative.flash_list.AutoLayoutView$fixLayout$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(((CellContainer) t).getIndex()), Integer.valueOf(((CellContainer) t2).getIndex()));
                }
            });
        }
        AutoLayoutShadow autoLayoutShadow = this.alShadow;
        autoLayoutShadow.setOffsetFromStart(autoLayoutShadow.getHorizontal() ? getLeft() : getTop());
        this.alShadow.clearGapsAndOverlaps(cellContainerArr);
    }

    private final void fixFooter() {
        View parentScrollView = getParentScrollView();
        if (this.disableAutoLayout || parentScrollView == null) {
            return;
        }
        if (this.alShadow.getHorizontal()) {
            if (getRight() > parentScrollView.getWidth()) {
                return;
            }
        } else if (getBottom() > parentScrollView.getHeight()) {
            return;
        }
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        View footer = getFooter();
        int footerDiff = getFooterDiff();
        if (footerDiff == 0 || footer == null || view == null) {
            return;
        }
        if (this.alShadow.getHorizontal()) {
            footer.offsetLeftAndRight(footerDiff);
            setRight(getRight() + footerDiff);
            view.setRight(view.getRight() + footerDiff);
        } else {
            footer.offsetTopAndBottom(footerDiff);
            setBottom(getBottom() + footerDiff);
            view.setBottom(view.getBottom() + footerDiff);
        }
    }

    private final int getFooterDiff() {
        int bottom;
        int bottom2;
        int top;
        if (getChildCount() == 0) {
            this.alShadow.setLastMaxBoundOverall(0);
        } else if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            AutoLayoutShadow autoLayoutShadow = this.alShadow;
            if (autoLayoutShadow.getHorizontal()) {
                bottom = childAt.getRight();
            } else {
                bottom = childAt.getBottom();
            }
            autoLayoutShadow.setLastMaxBoundOverall(bottom);
        }
        if (this.alShadow.getHorizontal()) {
            bottom2 = getRight();
            top = getLeft();
        } else {
            bottom2 = getBottom();
            top = getTop();
        }
        return this.alShadow.getLastMaxBoundOverall() - (bottom2 - top);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View getFooter() {
        ViewParent parent = getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof CellContainer) && ((CellContainer) childAt).getIndex() == -1) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View getParentScrollView() {
        for (ViewParent viewParent = getParent(); viewParent != 0; viewParent = viewParent.getParent()) {
            if ((viewParent instanceof ScrollView) || (viewParent instanceof HorizontalScrollView)) {
                return (View) viewParent;
            }
        }
        return null;
    }

    private final void emitBlankAreaEvent() {
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext");
        EventDispatcher eventDispatcherForReactTag = UIManagerHelper.getEventDispatcherForReactTag((ReactContext) context, getId());
        if (eventDispatcherForReactTag != null) {
            Context context2 = getContext();
            Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext");
            eventDispatcherForReactTag.dispatchEvent(new BlankAreaEvent(UIManagerHelper.getSurfaceId((ReactContext) context2), getId(), this.alShadow.getBlankOffsetAtStart() / this.pixelDensity, this.alShadow.getBlankOffsetAtEnd() / this.pixelDensity));
        }
    }
}
