package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlexLine {
    public boolean mAnyItemsHaveFlexGrow;
    public boolean mAnyItemsHaveFlexShrink;
    public int mCrossSize;
    public int mDividerLengthInMainSize;
    public int mFirstIndex;
    public int mGoneItemCount;
    public int mItemCount;
    public int mLastIndex;
    public int mMainSize;
    public int mMaxBaseline;
    public int mSumCrossSizeBefore;
    public float mTotalFlexGrow;
    public float mTotalFlexShrink;
    public int mLeft = Integer.MAX_VALUE;
    public int mTop = Integer.MAX_VALUE;
    public int mRight = Integer.MIN_VALUE;
    public int mBottom = Integer.MIN_VALUE;
    public final ArrayList mIndicesAlignSelfStretch = new ArrayList();

    public final int getItemCountNotGone() {
        return this.mItemCount - this.mGoneItemCount;
    }

    public final void updatePositionFromView(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.mLeft = Math.min(this.mLeft, (view.getLeft() - flexItem.getMarginLeft()) - i);
        this.mTop = Math.min(this.mTop, (view.getTop() - flexItem.getMarginTop()) - i2);
        this.mRight = Math.max(this.mRight, flexItem.getMarginRight() + view.getRight() + i3);
        this.mBottom = Math.max(this.mBottom, flexItem.getMarginBottom() + view.getBottom() + i4);
    }
}
