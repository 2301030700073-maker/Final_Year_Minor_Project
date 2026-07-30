package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.m.b.InterfaceC0184j0;
import b.m.b.Q;
import com.android.launcher3.BaseRecyclerView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WidgetsRecyclerView extends BaseRecyclerView implements InterfaceC0184j0 {
    public WidgetsListAdapter mAdapter;
    public final Point mFastScrollerOffset;
    public final int mScrollbarTop;
    public boolean mTouchDownOnScroller;

    public WidgetsRecyclerView(Context context) {
        this(context, null);
    }

    public int getAvailableScrollHeight() {
        return ((this.mAdapter.getItemCount() * getChildAt(0).getMeasuredHeight()) - getScrollbarTrackHeight()) - this.mScrollbarTop;
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public int getCurrentScrollY() {
        if (isModelNotReady() || getChildCount() == 0) {
            return -1;
        }
        View childAt = getChildAt(0);
        int measuredHeight = childAt.getMeasuredHeight() * getChildPosition(childAt);
        return (getPaddingTop() + measuredHeight) - getLayoutManager().getDecoratedTop(childAt);
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public int getScrollBarTop() {
        return this.mScrollbarTop;
    }

    public final boolean isModelNotReady() {
        return this.mAdapter.getItemCount() == 0;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setLayoutManager(new LinearLayoutManager(getContext()));
    }

    @Override // b.m.b.InterfaceC0184j0
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mTouchDownOnScroller = this.mScrollbar.isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset);
        }
        if (this.mTouchDownOnScroller) {
            return this.mScrollbar.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
        return false;
    }

    @Override // b.m.b.InterfaceC0184j0
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // b.m.b.InterfaceC0184j0
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.mTouchDownOnScroller) {
            this.mScrollbar.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public void onUpdateScrollbar(int i) {
        if (isModelNotReady()) {
            return;
        }
        int currentScrollY = getCurrentScrollY();
        if (currentScrollY < 0) {
            this.mScrollbar.setThumbOffsetY(-1);
        } else {
            synchronizeScrollBarThumbOffsetToViewScroll(currentScrollY, getAvailableScrollHeight());
        }
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public String scrollToPositionAtProgress(float f) {
        if (isModelNotReady()) {
            return "";
        }
        stopScroll();
        float itemCount = this.mAdapter.getItemCount() * f;
        int availableScrollHeight = getAvailableScrollHeight();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) getLayoutManager();
        linearLayoutManager.mPendingScrollPosition = 0;
        linearLayoutManager.mPendingScrollPositionOffset = (int) (-(availableScrollHeight * f));
        LinearLayoutManager.SavedState savedState = linearLayoutManager.mPendingSavedState;
        if (savedState != null) {
            savedState.f185a = -1;
        }
        linearLayoutManager.requestLayout();
        if (f == 1.0f) {
            itemCount -= 1.0f;
        }
        return ((WidgetListRowEntry) this.mAdapter.mEntries.get((int) itemCount)).titleSectionName;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(Q q) {
        super.setAdapter(q);
        this.mAdapter = (WidgetsListAdapter) q;
    }

    public WidgetsRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetsRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFastScrollerOffset = new Point();
        this.mScrollbarTop = getResources().getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        addOnItemTouchListener(this);
    }
}
