package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.DropTarget;
import com.android.launcher3.DropTargetBar;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DropTargetBar extends FrameLayout implements DragController.DragListener, Insettable {
    public static final TimeInterpolator DEFAULT_INTERPOLATOR = Interpolators.ACCEL;
    public ViewPropertyAnimator mCurrentAnimation;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mDeferOnDragEnd;
    public ButtonDropTarget[] mDropTargets;
    public final Runnable mFadeAnimationEndRunnable;
    public boolean mIsVertical;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mVisible;

    public DropTargetBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFadeAnimationEndRunnable = new Runnable() { // from class: c.a.a.o
            @Override // java.lang.Runnable
            public final void run() {
                DropTargetBar.this.a();
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
    }

    public /* synthetic */ void a() {
        AlphaUpdateListener.updateVisibility(this);
    }

    public void animateToVisibility(boolean z) {
        if (this.mVisible != z) {
            this.mVisible = z;
            ViewPropertyAnimator viewPropertyAnimator = this.mCurrentAnimation;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                this.mCurrentAnimation = null;
            }
            float f = this.mVisible ? 1.0f : RecentsState.NO_OFFSET;
            if (Float.compare(getAlpha(), f) != 0) {
                setVisibility(0);
                this.mCurrentAnimation = animate().alpha(f).setInterpolator(DEFAULT_INTERPOLATOR).setDuration(175L).withEndAction(this.mFadeAnimationEndRunnable);
            }
        }
    }

    public final int getVisibleButtonsCount() {
        int i = 0;
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            if (buttonDropTarget.getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (this.mDeferOnDragEnd) {
            this.mDeferOnDragEnd = false;
        } else {
            animateToVisibility(false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        animateToVisibility(true);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mDropTargets = new ButtonDropTarget[getChildCount()];
        int i = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = this.mDropTargets;
            if (i >= buttonDropTargetArr.length) {
                return;
            }
            buttonDropTargetArr[i] = (ButtonDropTarget) getChildAt(i);
            this.mDropTargets[i].mDropTargetBar = this;
            i++;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mIsVertical) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.drop_target_vertical_gap);
            int i5 = dimensionPixelSize;
            for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
                if (buttonDropTarget.getVisibility() != 8) {
                    int measuredHeight = buttonDropTarget.getMeasuredHeight() + i5;
                    buttonDropTarget.layout(0, i5, buttonDropTarget.getMeasuredWidth(), measuredHeight);
                    i5 = measuredHeight + dimensionPixelSize;
                }
            }
            return;
        }
        int visibleButtonsCount = (i3 - i) / getVisibleButtonsCount();
        int i6 = visibleButtonsCount / 2;
        for (ButtonDropTarget buttonDropTarget2 : this.mDropTargets) {
            if (buttonDropTarget2.getVisibility() != 8) {
                int measuredWidth = buttonDropTarget2.getMeasuredWidth() / 2;
                buttonDropTarget2.layout(i6 - measuredWidth, 0, measuredWidth + i6, buttonDropTarget2.getMeasuredHeight());
                i6 += visibleButtonsCount;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mIsVertical) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, RecyclerView.UNDEFINED_DURATION);
            for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
                if (buttonDropTarget.getVisibility() != 8) {
                    buttonDropTarget.setTextVisible(false);
                    buttonDropTarget.measure(makeMeasureSpec, makeMeasureSpec2);
                }
            }
        } else {
            int visibleButtonsCount = size / getVisibleButtonsCount();
            boolean z = true;
            for (ButtonDropTarget buttonDropTarget2 : this.mDropTargets) {
                if (buttonDropTarget2.getVisibility() != 8) {
                    if (z) {
                        if (!(!r13.mText.equals(TextUtils.ellipsize(r13.mText, r13.getPaint(), visibleButtonsCount - (r13.getCompoundDrawablePadding() + (r13.mDrawable.getIntrinsicWidth() + (r13.getPaddingRight() + r13.getPaddingLeft()))), TextUtils.TruncateAt.END)))) {
                            z = true;
                        }
                    }
                    z = false;
                }
            }
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(visibleButtonsCount, RecyclerView.UNDEFINED_DURATION);
            int makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
            for (ButtonDropTarget buttonDropTarget3 : this.mDropTargets) {
                if (buttonDropTarget3.getVisibility() != 8) {
                    buttonDropTarget3.setTextVisible(z);
                    buttonDropTarget3.measure(makeMeasureSpec3, makeMeasureSpec4);
                }
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        DeviceProfile deviceProfile = Launcher.getLauncher(getContext()).getDeviceProfile();
        this.mIsVertical = deviceProfile.isVerticalBarLayout();
        layoutParams.leftMargin = rect.left;
        layoutParams.topMargin = rect.top;
        layoutParams.bottomMargin = rect.bottom;
        layoutParams.rightMargin = rect.right;
        int i2 = 1;
        if (deviceProfile.isVerticalBarLayout()) {
            layoutParams.width = deviceProfile.dropTargetBarSizePx;
            layoutParams.height = deviceProfile.availableHeightPx - (deviceProfile.edgeMarginPx * 2);
            layoutParams.gravity = deviceProfile.isSeascape() ? 5 : 3;
            if (!deviceProfile.isSeascape()) {
                i2 = 2;
            }
        } else {
            if (deviceProfile.isTablet) {
                int i3 = deviceProfile.widthPx;
                int i4 = deviceProfile.edgeMarginPx;
                int i5 = deviceProfile.inv.numColumns;
                i = (((i3 - (i4 * 2)) - (deviceProfile.cellWidthPx * i5)) / ((i5 + 1) * 2)) + i4;
            } else {
                i = deviceProfile.desiredWorkspaceLeftRightMarginPx - deviceProfile.inv.defaultWidgetPadding.right;
            }
            layoutParams.width = deviceProfile.availableWidthPx - (i * 2);
            layoutParams.topMargin += deviceProfile.edgeMarginPx;
            layoutParams.height = deviceProfile.dropTargetBarSizePx;
            layoutParams.gravity = 49;
            i2 = 0;
        }
        setLayoutParams(layoutParams);
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            buttonDropTarget.setToolTipLocation(i2);
        }
    }

    public DropTargetBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFadeAnimationEndRunnable = new Runnable() { // from class: c.a.a.o
            @Override // java.lang.Runnable
            public final void run() {
                DropTargetBar.this.a();
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
    }
}
