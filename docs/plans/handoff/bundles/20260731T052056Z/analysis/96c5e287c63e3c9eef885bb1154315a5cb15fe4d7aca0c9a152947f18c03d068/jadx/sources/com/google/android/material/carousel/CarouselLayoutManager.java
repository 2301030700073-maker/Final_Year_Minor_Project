package com.google.android.material.carousel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.core.Animation;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import com.google.android.material.R$styleable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    public final FlingCalculator carouselStrategy;
    public CarouselOrientationHelper$1 orientationHelper;
    public final View.OnLayoutChangeListener recyclerViewSizeChangeListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DebugItemDecoration extends RecyclerView.ItemDecoration {
        public final List keylines;
        public final Paint linePaint;

        public DebugItemDecoration() {
            Paint paint = new Paint();
            this.linePaint = paint;
            this.keylines = DesugarCollections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
            int paddingRight;
            Canvas canvas2;
            int i;
            float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
            Paint paint = this.linePaint;
            paint.setStrokeWidth(dimension);
            Iterator it = this.keylines.iterator();
            while (it.hasNext()) {
                ((KeylineState$Keyline) it.next()).getClass();
                paint.setColor(ColorUtils.blendARGB(-65281, RecyclerView.DECELERATION_RATE, -16776961));
                int i2 = 0;
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).isHorizontal()) {
                    CarouselOrientationHelper$1 carouselOrientationHelper$1 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper;
                    switch (carouselOrientationHelper$1.$r8$classId) {
                        case 0:
                            break;
                        default:
                            i2 = carouselOrientationHelper$1.val$carouselLayoutManager.getPaddingTop();
                            break;
                    }
                    float f = i2;
                    CarouselOrientationHelper$1 carouselOrientationHelper$12 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper;
                    switch (carouselOrientationHelper$12.$r8$classId) {
                        case 0:
                            i = carouselOrientationHelper$12.val$carouselLayoutManager.mHeight;
                            break;
                        default:
                            CarouselLayoutManager carouselLayoutManager = carouselOrientationHelper$12.val$carouselLayoutManager;
                            i = carouselLayoutManager.mHeight - carouselLayoutManager.getPaddingBottom();
                            break;
                    }
                    float f2 = i;
                    canvas2 = canvas;
                    canvas2.drawLine(RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE, f2, paint);
                } else {
                    CarouselOrientationHelper$1 carouselOrientationHelper$13 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper;
                    switch (carouselOrientationHelper$13.$r8$classId) {
                        case 0:
                            i2 = carouselOrientationHelper$13.val$carouselLayoutManager.getPaddingLeft();
                            break;
                    }
                    float f3 = i2;
                    CarouselOrientationHelper$1 carouselOrientationHelper$14 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper;
                    switch (carouselOrientationHelper$14.$r8$classId) {
                        case 0:
                            CarouselLayoutManager carouselLayoutManager2 = carouselOrientationHelper$14.val$carouselLayoutManager;
                            paddingRight = carouselLayoutManager2.mWidth - carouselLayoutManager2.getPaddingRight();
                            break;
                        default:
                            paddingRight = carouselOrientationHelper$14.val$carouselLayoutManager.mWidth;
                            break;
                    }
                    canvas2 = canvas;
                    canvas2.drawLine(f3, RecyclerView.DECELERATION_RATE, paddingRight, RecyclerView.DECELERATION_RATE, paint);
                }
                canvas = canvas2;
            }
        }
    }

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new DebugItemDecoration();
        this.recyclerViewSizeChangeListener = new CarouselLayoutManager$$ExternalSyntheticLambda0(0, this);
        this.carouselStrategy = new FlingCalculator();
        requestLayout();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            obtainStyledAttributes.getInt(0, 0);
            requestLayout();
            setOrientation(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }

    public final float addEnd(float f, float f2) {
        return isLayoutRtl() ? f - f2 : f + f2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return !isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public final PointF computeScrollVectorForPosition(int i) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        getChildCount();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        rect.centerY();
        if (isHorizontal()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    public final boolean isHorizontal() {
        return this.orientationHelper.orientation == 0;
    }

    public final boolean isLayoutRtl() {
        return isHorizontal() && this.mRecyclerView.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        FlingCalculator flingCalculator = this.carouselStrategy;
        float f = flingCalculator.friction;
        if (f <= RecyclerView.DECELERATION_RATE) {
            f = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        flingCalculator.friction = f;
        float f2 = flingCalculator.magicPhysicalCoefficient;
        if (f2 <= RecyclerView.DECELERATION_RATE) {
            f2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        flingCalculator.magicPhysicalCoefficient = f2;
        requestLayout();
        recyclerView.addOnLayoutChangeListener(this.recyclerViewSizeChangeListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.recyclerViewSizeChangeListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x003b, code lost:
    
        if (r7 == 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0045, code lost:
    
        if (isLayoutRtl() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0049, code lost:
    
        if (r7 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0052, code lost:
    
        if (isLayoutRtl() != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r5, int r6, androidx.recyclerview.widget.RecyclerView.Recycler r7, androidx.recyclerview.widget.RecyclerView.State r8) {
        /*
            r4 = this;
            int r7 = r4.getChildCount()
            r8 = 0
            if (r7 != 0) goto L9
            goto L96
        L9:
            com.google.android.material.carousel.CarouselOrientationHelper$1 r7 = r4.orientationHelper
            int r7 = r7.orientation
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L47
            r3 = 2
            if (r6 == r3) goto L3d
            r3 = 17
            if (r6 == r3) goto L4c
            r3 = 33
            if (r6 == r3) goto L49
            r3 = 66
            if (r6 == r3) goto L3f
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L3b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r3 = "Unknown focus request:"
            r7.<init>(r3)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "CarouselLayoutManager"
            android.util.Log.d(r7, r6)
        L39:
            r6 = r0
            goto L55
        L3b:
            if (r7 != r2) goto L39
        L3d:
            r6 = r2
            goto L55
        L3f:
            if (r7 != 0) goto L39
            boolean r6 = r4.isLayoutRtl()
            if (r6 == 0) goto L3d
        L47:
            r6 = r1
            goto L55
        L49:
            if (r7 != r2) goto L39
            goto L47
        L4c:
            if (r7 != 0) goto L39
            boolean r6 = r4.isLayoutRtl()
            if (r6 == 0) goto L47
            goto L3d
        L55:
            if (r6 != r0) goto L58
            goto L96
        L58:
            r7 = 0
            if (r6 != r1) goto L8b
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            if (r5 != 0) goto L62
            goto L96
        L62:
            android.view.View r5 = r4.getChildAt(r7)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r5 = r5 - r2
            if (r5 < 0) goto L7a
            int r6 = r4.getItemCount()
            if (r5 < r6) goto L74
            goto L7a
        L74:
            com.google.android.material.carousel.CarouselOrientationHelper$1 r4 = r4.orientationHelper
            r4.getParentStart()
            throw r8
        L7a:
            boolean r5 = r4.isLayoutRtl()
            if (r5 == 0) goto L86
            int r5 = r4.getChildCount()
            int r7 = r5 + (-1)
        L86:
            android.view.View r4 = r4.getChildAt(r7)
            return r4
        L8b:
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r6 = r4.getItemCount()
            int r6 = r6 - r2
            if (r5 != r6) goto L97
        L96:
            return r8
        L97:
            int r5 = r4.getChildCount()
            int r5 = r5 - r2
            android.view.View r5 = r4.getChildAt(r5)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r5 = r5 + r2
            if (r5 < 0) goto Lb4
            int r6 = r4.getItemCount()
            if (r5 < r6) goto Lae
            goto Lb4
        Lae:
            com.google.android.material.carousel.CarouselOrientationHelper$1 r4 = r4.orientationHelper
            r4.getParentStart()
            throw r8
        Lb4:
            boolean r5 = r4.isLayoutRtl()
            if (r5 == 0) goto Lbb
            goto Lc1
        Lbb:
            int r5 = r4.getChildCount()
            int r7 = r5 + (-1)
        Lc1:
            android.view.View r4 = r4.getChildAt(r7)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(RecyclerView.LayoutManager.getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(RecyclerView.LayoutManager.getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(int i, int i2) {
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsChanged() {
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(int i, int i2) {
        getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() > 0) {
            if ((isHorizontal() ? this.mWidth : this.mHeight) > RecyclerView.DECELERATION_RATE) {
                isLayoutRtl();
                recycler.getViewForPosition(0);
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
                return;
            }
        }
        removeAndRecycleAllViews(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return;
        }
        RecyclerView.LayoutManager.getPosition(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!isHorizontal() || getChildCount() == 0 || i == 0) {
            return 0;
        }
        recycler.getViewForPosition(0);
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!canScrollVertically() || getChildCount() == 0 || i == 0) {
            return 0;
        }
        recycler.getViewForPosition(0);
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        return 0;
    }

    public final void setOrientation(int i) {
        CarouselOrientationHelper$1 carouselOrientationHelper$1;
        if (i != 0 && i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "invalid orientation:"));
            return;
        }
        assertNotInLayoutOrScroll(null);
        CarouselOrientationHelper$1 carouselOrientationHelper$12 = this.orientationHelper;
        if (carouselOrientationHelper$12 == null || i != carouselOrientationHelper$12.orientation) {
            if (i == 0) {
                carouselOrientationHelper$1 = new CarouselOrientationHelper$1(this, 1);
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("invalid orientation");
                    return;
                }
                carouselOrientationHelper$1 = new CarouselOrientationHelper$1(this, 0);
            }
            this.orientationHelper = carouselOrientationHelper$1;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, recyclerView.getContext());
        anonymousClass1.mTargetPosition = i;
        startSmoothScroll(anonymousClass1);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$1, reason: invalid class name */
    public final class AnonymousClass1 extends LinearSmoothScroller {
        public final /* synthetic */ int $r8$classId = 1;

        public /* synthetic */ AnonymousClass1(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDxToMakeVisible(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    return 0;
                default:
                    return super.calculateDxToMakeVisible(view, i);
            }
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDyToMakeVisible(View view, int i) {
            switch (this.$r8$classId) {
                case 0:
                    return 0;
                default:
                    return super.calculateDyToMakeVisible(view, i);
            }
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            switch (this.$r8$classId) {
                case 1:
                    return 100.0f / displayMetrics.densityDpi;
                default:
                    return super.calculateSpeedPerPixel(displayMetrics);
            }
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public PointF computeScrollVectorForPosition(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return null;
                default:
                    return super.computeScrollVectorForPosition(i);
            }
        }

        public AnonymousClass1(CarouselLayoutManager carouselLayoutManager, Context context) {
            super(context);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
    }

    public CarouselLayoutManager() {
        FlingCalculator flingCalculator = new FlingCalculator();
        new DebugItemDecoration();
        this.recyclerViewSizeChangeListener = new CarouselLayoutManager$$ExternalSyntheticLambda0(0, this);
        this.carouselStrategy = flingCalculator;
        requestLayout();
        setOrientation(0);
    }
}
