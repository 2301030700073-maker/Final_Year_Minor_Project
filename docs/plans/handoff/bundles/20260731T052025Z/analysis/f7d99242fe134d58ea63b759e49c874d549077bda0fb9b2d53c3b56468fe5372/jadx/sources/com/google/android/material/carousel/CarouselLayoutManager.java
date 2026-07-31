package com.google.android.material.carousel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.view.PreviewView$$ExternalSyntheticLambda1;
import androidx.compose.animation.FlingCalculator;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.R$styleable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.james.mime4j.stream.MimeTokenStream;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    public final FlingCalculator carouselStrategy;
    public Token orientationHelper;
    public final View.OnLayoutChangeListener recyclerViewSizeChangeListener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$1, reason: invalid class name */
    public final class AnonymousClass1 extends LinearSmoothScroller {
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateDxToMakeVisible(View view, int i) {
            return 0;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateDyToMakeVisible(View view, int i) {
            return 0;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final PointF computeScrollVectorForPosition(int i) {
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            Canvas canvas2;
            float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
            Paint paint = this.linePaint;
            paint.setStrokeWidth(dimension);
            Iterator it = this.keylines.iterator();
            while (it.hasNext()) {
                ((KeylineState$Keyline) it.next()).getClass();
                ThreadLocal threadLocal = ColorUtils.TEMP_ARRAY;
                float f = 1.0f - 0.0f;
                paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f))));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).isHorizontal()) {
                    canvas2 = canvas;
                    canvas2.drawLine(0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper.getParentTop(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper.getParentBottom(), paint);
                } else {
                    canvas2 = canvas;
                    canvas2.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper.getParentLeft(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).orientationHelper.getParentRight(), 0.0f, paint);
                }
                canvas = canvas2;
            }
        }
    }

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new DebugItemDecoration();
        this.recyclerViewSizeChangeListener = new PreviewView$$ExternalSyntheticLambda1(1, this);
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
    public final void getDecoratedBoundsWithMargins(Rect rect, View view) {
        super.getDecoratedBoundsWithMargins(rect, view);
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
        return this.orientationHelper.type == 0;
    }

    public final boolean isLayoutRtl() {
        return isHorizontal() && this.mRecyclerView.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void measureChildWithMargins(View view) {
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        FlingCalculator flingCalculator = this.carouselStrategy;
        float f = flingCalculator.friction;
        if (f <= 0.0f) {
            f = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        flingCalculator.friction = f;
        float f2 = flingCalculator.magicPhysicalCoefficient;
        if (f2 <= 0.0f) {
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

    /* JADX WARN: Code restructure failed: missing block: B:47:0x002f, code lost:
    
        if (r7 == 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0039, code lost:
    
        if (isLayoutRtl() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x003d, code lost:
    
        if (r7 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0046, code lost:
    
        if (isLayoutRtl() != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r5, int r6, org.apache.james.mime4j.stream.MimeTokenStream r7, androidx.recyclerview.widget.RecyclerView.State r8) {
        /*
            r4 = this;
            int r7 = r4.getChildCount()
            r8 = 0
            if (r7 != 0) goto L9
            goto L8a
        L9:
            org.jsoup.parser.Token r7 = r4.orientationHelper
            int r7 = r7.type
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L3b
            r3 = 2
            if (r6 == r3) goto L31
            r3 = 17
            if (r6 == r3) goto L40
            r3 = 33
            if (r6 == r3) goto L3d
            r3 = 66
            if (r6 == r3) goto L33
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L2f
            java.lang.String r7 = "CarouselLayoutManager"
            java.lang.String r3 = "Unknown focus request:"
            androidx.camera.camera2.pipe.CameraDevices$CC.m32m(r6, r3, r7)
        L2d:
            r6 = r0
            goto L49
        L2f:
            if (r7 != r2) goto L2d
        L31:
            r6 = r2
            goto L49
        L33:
            if (r7 != 0) goto L2d
            boolean r6 = r4.isLayoutRtl()
            if (r6 == 0) goto L31
        L3b:
            r6 = r1
            goto L49
        L3d:
            if (r7 != r2) goto L2d
            goto L3b
        L40:
            if (r7 != 0) goto L2d
            boolean r6 = r4.isLayoutRtl()
            if (r6 == 0) goto L3b
            goto L31
        L49:
            if (r6 != r0) goto L4c
            goto L8a
        L4c:
            r7 = 0
            if (r6 != r1) goto L7f
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            if (r5 != 0) goto L56
            goto L8a
        L56:
            android.view.View r5 = r4.getChildAt(r7)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r5 = r5 - r2
            if (r5 < 0) goto L6e
            int r6 = r4.getItemCount()
            if (r5 < r6) goto L68
            goto L6e
        L68:
            org.jsoup.parser.Token r4 = r4.orientationHelper
            r4.getParentStart()
            throw r8
        L6e:
            boolean r5 = r4.isLayoutRtl()
            if (r5 == 0) goto L7a
            int r5 = r4.getChildCount()
            int r7 = r5 + (-1)
        L7a:
            android.view.View r4 = r4.getChildAt(r7)
            return r4
        L7f:
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r6 = r4.getItemCount()
            int r6 = r6 - r2
            if (r5 != r6) goto L8b
        L8a:
            return r8
        L8b:
            int r5 = r4.getChildCount()
            int r5 = r5 - r2
            android.view.View r5 = r4.getChildAt(r5)
            int r5 = androidx.recyclerview.widget.RecyclerView.LayoutManager.getPosition(r5)
            int r5 = r5 + r2
            if (r5 < 0) goto La8
            int r6 = r4.getItemCount()
            if (r5 < r6) goto La2
            goto La8
        La2:
            org.jsoup.parser.Token r4 = r4.orientationHelper
            r4.getParentStart()
            throw r8
        La8:
            boolean r5 = r4.isLayoutRtl()
            if (r5 == 0) goto Laf
            goto Lb5
        Laf:
            int r5 = r4.getChildCount()
            int r7 = r5 + (-1)
        Lb5:
            android.view.View r4 = r4.getChildAt(r7)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.onFocusSearchFailed(android.view.View, int, org.apache.james.mime4j.stream.MimeTokenStream, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
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
    public final void onLayoutChildren(MimeTokenStream mimeTokenStream, RecyclerView.State state) {
        if (state.getItemCount() > 0) {
            if ((isHorizontal() ? this.mWidth : this.mHeight) > 0.0f) {
                isLayoutRtl();
                measureChildWithMargins(mimeTokenStream.getViewForPosition(0));
                throw null;
            }
        }
        removeAndRecycleAllViews(mimeTokenStream);
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
    public final int scrollHorizontallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (!isHorizontal() || getChildCount() == 0 || i == 0) {
            return 0;
        }
        measureChildWithMargins(mimeTokenStream.getViewForPosition(0));
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.State state, MimeTokenStream mimeTokenStream) {
        if (!canScrollVertically() || getChildCount() == 0 || i == 0) {
            return 0;
        }
        measureChildWithMargins(mimeTokenStream.getViewForPosition(0));
        throw null;
    }

    public final void setOrientation(int i) {
        Token token;
        final int i2 = 1;
        if (i != 0 && i != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("invalid orientation:", i));
            return;
        }
        assertNotInLayoutOrScroll(null);
        Token token2 = this.orientationHelper;
        if (token2 == null || i != token2.type) {
            if (i == 0) {
                token = new Token(this, i2) { // from class: com.google.android.material.carousel.CarouselOrientationHelper$1
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ CarouselLayoutManager val$carouselLayoutManager;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                        this.$r8$classId = i2;
                        switch (i2) {
                            case 1:
                                this.val$carouselLayoutManager = this;
                                super(0);
                                break;
                            default:
                                this.val$carouselLayoutManager = this;
                                break;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentBottom() {
                        int i3 = this.$r8$classId;
                        CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                        switch (i3) {
                            case 0:
                                return carouselLayoutManager.mHeight;
                            default:
                                return carouselLayoutManager.mHeight - carouselLayoutManager.getPaddingBottom();
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentLeft() {
                        switch (this.$r8$classId) {
                            case 0:
                                return this.val$carouselLayoutManager.getPaddingLeft();
                            default:
                                return 0;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentRight() {
                        int i3 = this.$r8$classId;
                        CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                        switch (i3) {
                            case 0:
                                return carouselLayoutManager.mWidth - carouselLayoutManager.getPaddingRight();
                            default:
                                return carouselLayoutManager.mWidth;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentStart() {
                        switch (this.$r8$classId) {
                            case 0:
                                return 0;
                            default:
                                CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                                if (carouselLayoutManager.isLayoutRtl()) {
                                    return carouselLayoutManager.mWidth;
                                }
                                return 0;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentTop() {
                        switch (this.$r8$classId) {
                            case 0:
                                return 0;
                            default:
                                return this.val$carouselLayoutManager.getPaddingTop();
                        }
                    }
                };
            } else if (i != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m("invalid orientation");
                return;
            } else {
                final int i3 = 0;
                token = new Token(this, i3) { // from class: com.google.android.material.carousel.CarouselOrientationHelper$1
                    public final /* synthetic */ int $r8$classId;
                    public final /* synthetic */ CarouselLayoutManager val$carouselLayoutManager;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                        this.$r8$classId = i3;
                        switch (i3) {
                            case 1:
                                this.val$carouselLayoutManager = this;
                                super(0);
                                break;
                            default:
                                this.val$carouselLayoutManager = this;
                                break;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentBottom() {
                        int i32 = this.$r8$classId;
                        CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                        switch (i32) {
                            case 0:
                                return carouselLayoutManager.mHeight;
                            default:
                                return carouselLayoutManager.mHeight - carouselLayoutManager.getPaddingBottom();
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentLeft() {
                        switch (this.$r8$classId) {
                            case 0:
                                return this.val$carouselLayoutManager.getPaddingLeft();
                            default:
                                return 0;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentRight() {
                        int i32 = this.$r8$classId;
                        CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                        switch (i32) {
                            case 0:
                                return carouselLayoutManager.mWidth - carouselLayoutManager.getPaddingRight();
                            default:
                                return carouselLayoutManager.mWidth;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentStart() {
                        switch (this.$r8$classId) {
                            case 0:
                                return 0;
                            default:
                                CarouselLayoutManager carouselLayoutManager = this.val$carouselLayoutManager;
                                if (carouselLayoutManager.isLayoutRtl()) {
                                    return carouselLayoutManager.mWidth;
                                }
                                return 0;
                        }
                    }

                    @Override // org.jsoup.parser.Token
                    public final int getParentTop() {
                        switch (this.$r8$classId) {
                            case 0:
                                return 0;
                            default:
                                return this.val$carouselLayoutManager.getPaddingTop();
                        }
                    }
                };
            }
            this.orientationHelper = token;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(recyclerView.getContext());
        anonymousClass1.mTargetPosition = i;
        startSmoothScroll(anonymousClass1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
    }

    public CarouselLayoutManager() {
        FlingCalculator flingCalculator = new FlingCalculator();
        new DebugItemDecoration();
        this.recyclerViewSizeChangeListener = new PreviewView$$ExternalSyntheticLambda1(1, this);
        this.carouselStrategy = flingCalculator;
        requestLayout();
        setOrientation(0);
    }
}
