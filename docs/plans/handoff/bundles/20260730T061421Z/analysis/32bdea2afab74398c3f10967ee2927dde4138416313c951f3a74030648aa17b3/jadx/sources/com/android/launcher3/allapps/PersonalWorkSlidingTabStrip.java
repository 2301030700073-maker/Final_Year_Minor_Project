package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import b.l.W;
import com.android.launcher3.Utilities;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PersonalWorkSlidingTabStrip extends LinearLayout implements PageIndicator {
    public AllAppsContainerView mContainerView;
    public final Paint mDividerPaint;
    public int mIndicatorLeft;
    public int mIndicatorRight;
    public boolean mIsRtl;
    public int mLastActivePage;
    public float mScrollOffset;
    public int mSelectedIndicatorHeight;
    public final Paint mSelectedIndicatorPaint;
    public int mSelectedPosition;

    public PersonalWorkSlidingTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIndicatorLeft = -1;
        this.mIndicatorRight = -1;
        this.mSelectedPosition = 0;
        this.mLastActivePage = 0;
        setOrientation(0);
        setWillNotDraw(false);
        this.mSelectedIndicatorHeight = getResources().getDimensionPixelSize(R.dimen.all_apps_tabs_indicator_height);
        Paint paint = new Paint();
        this.mSelectedIndicatorPaint = paint;
        paint.setColor(W.getAttrColor(context, android.R.attr.colorAccent));
        Paint paint2 = new Paint();
        this.mDividerPaint = paint2;
        paint2.setColor(W.getAttrColor(context, android.R.attr.colorControlHighlight));
        this.mDividerPaint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.all_apps_divider_height));
        this.mIsRtl = Utilities.isRtl(getResources());
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float height = getHeight() - this.mDividerPaint.getStrokeWidth();
        canvas.drawLine(getPaddingLeft(), height, getWidth() - getPaddingRight(), height, this.mDividerPaint);
        canvas.drawRect(this.mIndicatorLeft, getHeight() - this.mSelectedIndicatorHeight, this.mIndicatorRight, getHeight(), this.mSelectedIndicatorPaint);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateTabTextColor(this.mSelectedPosition);
        updateIndicatorPosition(this.mScrollOffset);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setActiveMarker(int i) {
        updateTabTextColor(i);
        if (this.mContainerView != null && this.mLastActivePage != i) {
            updateIndicatorPosition(i);
            this.mContainerView.onTabChanged(i);
        }
        this.mLastActivePage = i;
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setMarkersCount(int i) {
    }

    public final void updateIndicatorPosition(float f) {
        int i;
        this.mScrollOffset = f;
        View childAt = getChildAt(this.mIsRtl ? 1 : 0);
        int i2 = -1;
        if (childAt != null) {
            i2 = (int) ((childAt.getWidth() * this.mScrollOffset) + childAt.getLeft());
            i = childAt.getWidth() + i2;
        } else {
            i = -1;
        }
        if (i2 == this.mIndicatorLeft && i == this.mIndicatorRight) {
            return;
        }
        this.mIndicatorLeft = i2;
        this.mIndicatorRight = i;
        invalidate();
    }

    public void updateTabTextColor(int i) {
        this.mSelectedPosition = i;
        int i2 = 0;
        while (i2 < getChildCount()) {
            ((Button) getChildAt(i2)).setSelected(i2 == i);
            i2++;
        }
    }
}
