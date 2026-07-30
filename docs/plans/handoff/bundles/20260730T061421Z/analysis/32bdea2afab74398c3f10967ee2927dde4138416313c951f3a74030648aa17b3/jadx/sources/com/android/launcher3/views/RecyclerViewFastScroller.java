package com.android.launcher3.views;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import b.l.W;
import b.m.b.AbstractC0186k0;
import com.android.launcher3.BaseRecyclerView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.quickstep.fallback.RecentsState;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerViewFastScroller extends View {
    public final boolean mCanThumbDetach;
    public final ViewConfiguration mConfig;
    public final float mDeltaThreshold;
    public int mDownX;
    public int mDownY;
    public int mDy;
    public boolean mIgnoreDragGesture;
    public boolean mIsDragging;
    public boolean mIsThumbDetached;
    public float mLastTouchY;
    public int mLastY;
    public final int mMaxWidth;
    public final int mMinWidth;
    public AbstractC0186k0 mOnScrollListener;
    public String mPopupSectionName;
    public TextView mPopupView;
    public boolean mPopupVisible;
    public BaseRecyclerView mRv;
    public final RectF mThumbBounds;
    public final Point mThumbDrawOffset;
    public final int mThumbHeight;
    public int mThumbOffsetY;
    public final int mThumbPadding;
    public final Paint mThumbPaint;
    public int mTouchOffsetY;
    public final Paint mTrackPaint;
    public int mWidth;
    public ObjectAnimator mWidthAnimator;
    public static final Rect sTempRect = new Rect();
    public static final Property TRACK_WIDTH = new Property(Integer.class, "width") { // from class: com.android.launcher3.views.RecyclerViewFastScroller.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Integer.valueOf(((RecyclerViewFastScroller) obj).mWidth);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) obj;
            int intValue = ((Integer) obj2).intValue();
            if (recyclerViewFastScroller.mWidth == intValue) {
                return;
            }
            recyclerViewFastScroller.mWidth = intValue;
            recyclerViewFastScroller.invalidate();
        }
    };
    public static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());

    public RecyclerViewFastScroller(Context context) {
        this(context, null);
    }

    public final void animatePopupVisibility(boolean z) {
        if (this.mPopupVisible != z) {
            this.mPopupVisible = z;
            this.mPopupView.animate().cancel();
            this.mPopupView.animate().alpha(z ? 1.0f : RecentsState.NO_OFFSET).setDuration(z ? 200L : 150L).start();
        }
    }

    public final void calcTouchOffsetAndPrepToFastScroll(int i, int i2) {
        this.mIsDragging = true;
        if (this.mCanThumbDetach) {
            this.mIsThumbDetached = true;
        }
        this.mTouchOffsetY = (i2 - i) + this.mTouchOffsetY;
        animatePopupVisibility(true);
        showActiveScrollbar(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if (r6 != 3) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleTouchEvent(android.view.MotionEvent r6, android.graphics.Point r7) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.RecyclerViewFastScroller.handleTouchEvent(android.view.MotionEvent, android.graphics.Point):boolean");
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isHitInParent(float f, float f2, Point point) {
        if (this.mThumbOffsetY < 0) {
            return false;
        }
        getHitRect(sTempRect);
        Rect rect = sTempRect;
        rect.top = this.mRv.getScrollBarTop() + rect.top;
        if (point != null) {
            Rect rect2 = sTempRect;
            point.set(rect2.left, rect2.top);
        }
        return sTempRect.contains((int) f, (int) f2);
    }

    public final boolean isNearThumb(int i, int i2) {
        int i3 = i2 - this.mThumbOffsetY;
        return i >= 0 && i < getWidth() && i3 >= 0 && i3 <= this.mThumbHeight;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mThumbOffsetY < 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getWidth() / 2, this.mRv.getScrollBarTop());
        this.mThumbDrawOffset.set(getWidth() / 2, this.mRv.getScrollBarTop());
        float f = this.mWidth / 2;
        float scrollbarTrackHeight = this.mRv.getScrollbarTrackHeight();
        float f2 = this.mWidth;
        canvas.drawRoundRect(-f, RecentsState.NO_OFFSET, f, scrollbarTrackHeight, f2, f2, this.mTrackPaint);
        canvas.translate(RecentsState.NO_OFFSET, this.mThumbOffsetY);
        this.mThumbDrawOffset.y += this.mThumbOffsetY;
        int i = this.mThumbPadding;
        float f3 = f + i;
        float f4 = this.mWidth + i + i;
        this.mThumbBounds.set(-f3, RecentsState.NO_OFFSET, f3, this.mThumbHeight);
        canvas.drawRoundRect(this.mThumbBounds, f4, f4, this.mThumbPaint);
        if (Utilities.ATLEAST_Q) {
            this.mThumbBounds.roundOut((Rect) SYSTEM_GESTURE_EXCLUSION_RECT.get(0));
            Rect rect = (Rect) SYSTEM_GESTURE_EXCLUSION_RECT.get(0);
            Point point = this.mThumbDrawOffset;
            rect.offset(point.x, point.y);
            setSystemGestureExclusionRects(SYSTEM_GESTURE_EXCLUSION_RECT);
        }
        canvas.restoreToCount(save);
    }

    public void setThumbOffsetY(int i) {
        if (this.mThumbOffsetY == i) {
            return;
        }
        if (this.mPopupVisible) {
            int height = this.mPopupView.getHeight();
            float scrollBarTop = this.mRv.getScrollBarTop() + i;
            int i2 = this.mWidth;
            int i3 = this.mThumbPadding;
            this.mPopupView.setTranslationY(Utilities.boundToRange(((((i2 + i3) + i3) / 2.0f) + scrollBarTop) - (height / 2.0f), RecentsState.NO_OFFSET, (this.mRv.getScrollbarTrackHeight() + (this.mRv.getScrollBarTop() + getTop())) - height));
        }
        this.mThumbOffsetY = i;
        invalidate();
    }

    public final void showActiveScrollbar(boolean z) {
        ObjectAnimator objectAnimator = this.mWidthAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        Property property = TRACK_WIDTH;
        int[] iArr = new int[1];
        iArr[0] = z ? this.mMaxWidth : this.mMinWidth;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, (Property<RecyclerViewFastScroller, Integer>) property, iArr);
        this.mWidthAnimator = ofInt;
        ofInt.setDuration(150L);
        this.mWidthAnimator.start();
    }

    public final void updateFastScrollSectionNameAndThumbOffset(int i) {
        int scrollbarTrackHeight = this.mRv.getScrollbarTrackHeight() - this.mThumbHeight;
        float max = Math.max(0, Math.min(scrollbarTrackHeight, i - this.mTouchOffsetY));
        String scrollToPositionAtProgress = this.mRv.scrollToPositionAtProgress(max / scrollbarTrackHeight);
        if (!scrollToPositionAtProgress.equals(this.mPopupSectionName)) {
            this.mPopupSectionName = scrollToPositionAtProgress;
            this.mPopupView.setText(scrollToPositionAtProgress);
        }
        animatePopupVisibility(!scrollToPositionAtProgress.isEmpty());
        this.mLastTouchY = max;
        setThumbOffsetY((int) max);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDy = 0;
        this.mThumbBounds = new RectF();
        this.mThumbDrawOffset = new Point();
        Paint paint = new Paint();
        this.mTrackPaint = paint;
        paint.setColor(W.getAttrColor(context, R.attr.textColorPrimary));
        this.mTrackPaint.setAlpha(30);
        Paint paint2 = new Paint();
        this.mThumbPaint = paint2;
        paint2.setAntiAlias(true);
        this.mThumbPaint.setColor(W.getColorAccent(context));
        this.mThumbPaint.setStyle(Paint.Style.FILL);
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_track_min_width);
        this.mMinWidth = dimensionPixelSize;
        this.mWidth = dimensionPixelSize;
        this.mMaxWidth = resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_track_max_width);
        this.mThumbPadding = resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_thumb_padding);
        this.mThumbHeight = resources.getDimensionPixelSize(com.android.systemui.shared.R.dimen.fastscroll_thumb_height);
        this.mConfig = ViewConfiguration.get(context);
        this.mDeltaThreshold = resources.getDisplayMetrics().density * 4.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerViewFastScroller, i, 0);
        this.mCanThumbDetach = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }
}
