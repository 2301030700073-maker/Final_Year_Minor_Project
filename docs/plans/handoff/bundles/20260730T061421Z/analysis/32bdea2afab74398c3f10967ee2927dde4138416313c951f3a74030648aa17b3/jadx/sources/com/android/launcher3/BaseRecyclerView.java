package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b.l.W;
import b.m.b.AbstractC0186k0;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class BaseRecyclerView extends RecyclerView {
    public RecyclerViewFastScroller mScrollbar;

    public BaseRecyclerView(Context context) {
        this(context, null);
    }

    public void bindFastScrollbar() {
        AbstractC0186k0 abstractC0186k0;
        ViewGroup viewGroup = (ViewGroup) getParent().getParent();
        final RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) viewGroup.findViewById(R.id.fast_scroller);
        this.mScrollbar = recyclerViewFastScroller;
        TextView textView = (TextView) viewGroup.findViewById(R.id.fast_scroller_popup);
        BaseRecyclerView baseRecyclerView = recyclerViewFastScroller.mRv;
        if (baseRecyclerView != null && (abstractC0186k0 = recyclerViewFastScroller.mOnScrollListener) != null) {
            baseRecyclerView.removeOnScrollListener(abstractC0186k0);
        }
        recyclerViewFastScroller.mRv = this;
        AbstractC0186k0 abstractC0186k02 = new AbstractC0186k0() { // from class: com.android.launcher3.views.RecyclerViewFastScroller.2
            @Override // b.m.b.AbstractC0186k0
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                RecyclerViewFastScroller recyclerViewFastScroller2 = RecyclerViewFastScroller.this;
                recyclerViewFastScroller2.mDy = i2;
                recyclerViewFastScroller2.mRv.onUpdateScrollbar(i2);
            }
        };
        recyclerViewFastScroller.mOnScrollListener = abstractC0186k02;
        addOnScrollListener(abstractC0186k02);
        recyclerViewFastScroller.mPopupView = textView;
        textView.setBackground(new FastScrollThumbDrawable(recyclerViewFastScroller.mThumbPaint, Utilities.isRtl(recyclerViewFastScroller.getResources())));
        onUpdateScrollbar(0);
    }

    public abstract int getCurrentScrollY();

    public int getScrollBarTop() {
        return getPaddingTop();
    }

    public int getScrollbarTrackHeight() {
        return (this.mScrollbar.getHeight() - getScrollBarTop()) - getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        bindFastScrollbar();
    }

    public void onFastScrollCompleted() {
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isLayoutSuppressed()) {
            accessibilityNodeInfo.setScrollable(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i) {
        AccessibilityManager accessibilityManagerForTest;
        super.onScrollStateChanged(i);
        if (i != 0 || (accessibilityManagerForTest = W.getAccessibilityManagerForTest(getContext())) == null) {
            return;
        }
        W.sendEventToTest(accessibilityManagerForTest, "TAPL_SCROLL_FINISHED", null);
    }

    public abstract void onUpdateScrollbar(int i);

    public abstract String scrollToPositionAtProgress(float f);

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutFrozen(boolean z) {
        boolean z2 = z != isLayoutSuppressed();
        super.setLayoutFrozen(z);
        if (z2) {
            ActivityContext.lookupContext(getContext()).getDragLayer().sendAccessibilityEvent(2048);
        }
    }

    public boolean shouldContainerScroll(MotionEvent motionEvent, View view) {
        float[] fArr = {motionEvent.getX(), motionEvent.getY()};
        Utilities.mapCoordInSelfToDescendant(this.mScrollbar, view, fArr);
        if (this.mScrollbar.isNearThumb((int) fArr[0], (int) fArr[1])) {
            return false;
        }
        if (getCurrentScrollY() == 0) {
            return true;
        }
        return getAdapter() == null || getAdapter().getItemCount() == 0;
    }

    public boolean supportsFastScrolling() {
        return true;
    }

    public void synchronizeScrollBarThumbOffsetToViewScroll(int i, int i2) {
        if (i2 <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        float f = i / i2;
        int scrollbarTrackHeight = getScrollbarTrackHeight();
        this.mScrollbar.setThumbOffsetY((int) (f * (scrollbarTrackHeight - r1.mThumbHeight)));
    }

    public BaseRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
