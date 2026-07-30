package com.android.launcher3.pageindicators;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WorkspacePageIndicator extends View implements Insettable, PageIndicator {
    public static final int LINE_ANIMATE_DURATION = ViewConfiguration.getScrollBarFadeDuration();
    public static final int LINE_FADE_DELAY = ViewConfiguration.getScrollDefaultDelay();
    public static final Property NUM_PAGES = new Property(Float.class, "num_pages") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.2
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((WorkspacePageIndicator) obj).mNumPagesFloat);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
            workspacePageIndicator.mNumPagesFloat = ((Float) obj2).floatValue();
            workspacePageIndicator.invalidate();
        }
    };
    public static final Property PAINT_ALPHA;
    public static final Property TOTAL_SCROLL;
    public int mActiveAlpha;
    public ValueAnimator[] mAnimators;
    public int mCurrentScroll;
    public final Handler mDelayedLineFadeHandler;
    public Runnable mHideLineRunnable;
    public final Launcher mLauncher;
    public final int mLineHeight;
    public Paint mLinePaint;
    public float mNumPagesFloat;
    public boolean mShouldAutoHide;
    public int mToAlpha;
    public int mTotalScroll;

    static {
        Class<Integer> cls = Integer.class;
        PAINT_ALPHA = new Property(cls, "paint_alpha") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.1
            @Override // android.util.Property
            public Object get(Object obj) {
                return Integer.valueOf(((WorkspacePageIndicator) obj).mLinePaint.getAlpha());
            }

            @Override // android.util.Property
            public void set(Object obj, Object obj2) {
                WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
                workspacePageIndicator.mLinePaint.setAlpha(((Integer) obj2).intValue());
                workspacePageIndicator.invalidate();
            }
        };
        TOTAL_SCROLL = new Property(cls, "total_scroll") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.3
            @Override // android.util.Property
            public Object get(Object obj) {
                return Integer.valueOf(((WorkspacePageIndicator) obj).mTotalScroll);
            }

            @Override // android.util.Property
            public void set(Object obj, Object obj2) {
                WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) obj;
                workspacePageIndicator.mTotalScroll = ((Integer) obj2).intValue();
                workspacePageIndicator.invalidate();
            }
        };
    }

    public WorkspacePageIndicator(Context context) {
        this(context, null);
    }

    public /* synthetic */ void a() {
        animateLineToAlpha(0);
    }

    public final void animateLineToAlpha(int i) {
        if (i == this.mToAlpha) {
            return;
        }
        this.mToAlpha = i;
        setupAndRunAnimation(ObjectAnimator.ofInt(this, (Property<WorkspacePageIndicator, Integer>) PAINT_ALPHA, i), 0);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i = this.mTotalScroll;
        if (i == 0 || this.mNumPagesFloat == RecentsState.NO_OFFSET) {
            return;
        }
        float boundToRange = Utilities.boundToRange(this.mCurrentScroll / i, RecentsState.NO_OFFSET, 1.0f);
        int i2 = (int) (boundToRange * (r1 - r2));
        int width = ((int) (getWidth() / this.mNumPagesFloat)) + i2;
        int height = getHeight() / 2;
        int i3 = this.mLineHeight;
        canvas.drawRoundRect(i2, (getHeight() / 2) - (this.mLineHeight / 2), width, (i3 / 2) + height, i3, i3, this.mLinePaint);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setActiveMarker(int i) {
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (deviceProfile.isVerticalBarLayout()) {
            Rect rect2 = deviceProfile.workspacePadding;
            int i = rect2.left;
            int i2 = deviceProfile.workspaceCellPaddingXPx;
            layoutParams.leftMargin = i + i2;
            layoutParams.rightMargin = rect2.right + i2;
            layoutParams.bottomMargin = rect2.bottom;
        } else {
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = deviceProfile.hotseatBarSizePx + rect.bottom;
        }
        setLayoutParams(layoutParams);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setMarkersCount(int i) {
        float f = i;
        if (Float.compare(f, this.mNumPagesFloat) != 0) {
            setupAndRunAnimation(ObjectAnimator.ofFloat(this, (Property<WorkspacePageIndicator, Float>) NUM_PAGES, f), 1);
            return;
        }
        ValueAnimator[] valueAnimatorArr = this.mAnimators;
        if (valueAnimatorArr[1] != null) {
            valueAnimatorArr[1].cancel();
            this.mAnimators[1] = null;
        }
    }

    public final void setupAndRunAnimation(ValueAnimator valueAnimator, final int i) {
        ValueAnimator[] valueAnimatorArr = this.mAnimators;
        if (valueAnimatorArr[i] != null) {
            valueAnimatorArr[i].cancel();
        }
        ValueAnimator[] valueAnimatorArr2 = this.mAnimators;
        valueAnimatorArr2[i] = valueAnimator;
        valueAnimatorArr2[i].addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WorkspacePageIndicator.this.mAnimators[i] = null;
            }
        });
        this.mAnimators[i].setDuration(LINE_ANIMATE_DURATION);
        this.mAnimators[i].start();
    }

    public WorkspacePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WorkspacePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAnimators = new ValueAnimator[3];
        this.mDelayedLineFadeHandler = new Handler(Looper.getMainLooper());
        this.mShouldAutoHide = true;
        this.mActiveAlpha = 0;
        this.mHideLineRunnable = new Runnable() { // from class: c.a.a.P0.a
            @Override // java.lang.Runnable
            public final void run() {
                WorkspacePageIndicator.this.a();
            }
        };
        Resources resources = context.getResources();
        Paint paint = new Paint();
        this.mLinePaint = paint;
        paint.setAlpha(0);
        this.mLauncher = Launcher.getLauncher(context);
        this.mLineHeight = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_line_height);
        boolean z = ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(context)).mExtractionInfo.supportsDarkText;
        this.mActiveAlpha = z ? 165 : 178;
        this.mLinePaint.setColor(z ? -16777216 : -1);
    }
}
