package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LinearSmoothScroller {
    public final DecelerateInterpolator mDecelerateInterpolator;
    public final DisplayMetrics mDisplayMetrics;
    public boolean mHasCalculatedMillisPerPixel;
    public int mInterimTargetDx;
    public int mInterimTargetDy;
    public RecyclerView.LayoutManager mLayoutManager;
    public final LinearInterpolator mLinearInterpolator;
    public float mMillisPerPixel;
    public boolean mPendingInitialRun;
    public RecyclerView mRecyclerView;
    public final RecyclerView$SmoothScroller$Action mRecyclingAction;
    public boolean mRunning;
    public boolean mStarted;
    public int mTargetPosition = -1;
    public PointF mTargetVector;
    public View mTargetView;

    public LinearSmoothScroller(Context context) {
        RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action = new RecyclerView$SmoothScroller$Action();
        recyclerView$SmoothScroller$Action.mJumpToPosition = -1;
        recyclerView$SmoothScroller$Action.mChanged = false;
        recyclerView$SmoothScroller$Action.mConsecutiveUpdates = 0;
        recyclerView$SmoothScroller$Action.mDx = 0;
        recyclerView$SmoothScroller$Action.mDy = 0;
        recyclerView$SmoothScroller$Action.mDuration = Integer.MIN_VALUE;
        recyclerView$SmoothScroller$Action.mInterpolator = null;
        this.mRecyclingAction = recyclerView$SmoothScroller$Action;
        this.mLinearInterpolator = new LinearInterpolator();
        this.mDecelerateInterpolator = new DecelerateInterpolator();
        this.mHasCalculatedMillisPerPixel = false;
        this.mInterimTargetDx = 0;
        this.mInterimTargetDy = 0;
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    public static int calculateDtToFit(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            return 0;
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    public int calculateDxToMakeVisible(int i, View view) {
        RecyclerView.LayoutManager layoutManager = this.mLayoutManager;
        if (layoutManager == null || !layoutManager.canScrollHorizontally()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return calculateDtToFit(RecyclerView.LayoutManager.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, RecyclerView.LayoutManager.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, layoutManager.getPaddingLeft(), layoutManager.mWidth - layoutManager.getPaddingRight(), i);
    }

    public int calculateDyToMakeVisible(int i, View view) {
        RecyclerView.LayoutManager layoutManager = this.mLayoutManager;
        if (layoutManager == null || !layoutManager.canScrollVertically()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return calculateDtToFit(RecyclerView.LayoutManager.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, RecyclerView.LayoutManager.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutManager.getPaddingTop(), layoutManager.mHeight - layoutManager.getPaddingBottom(), i);
    }

    public final int calculateTimeForScrolling(int i) {
        float abs = Math.abs(i);
        if (!this.mHasCalculatedMillisPerPixel) {
            this.mMillisPerPixel = 25.0f / this.mDisplayMetrics.densityDpi;
            this.mHasCalculatedMillisPerPixel = true;
        }
        return (int) Math.ceil(abs * this.mMillisPerPixel);
    }

    public PointF computeScrollVectorForPosition(int i) {
        Object obj = this.mLayoutManager;
        if (obj instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return ((RecyclerView$SmoothScroller$ScrollVectorProvider) obj).computeScrollVectorForPosition(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView$SmoothScroller$ScrollVectorProvider.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAnimation(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearSmoothScroller.onAnimation(int, int):void");
    }

    public final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            this.mInterimTargetDy = 0;
            this.mInterimTargetDx = 0;
            this.mTargetVector = null;
            this.mRecyclerView.mState.mTargetPosition = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            RecyclerView.LayoutManager layoutManager = this.mLayoutManager;
            if (layoutManager.mSmoothScroller == this) {
                layoutManager.mSmoothScroller = null;
            }
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}
