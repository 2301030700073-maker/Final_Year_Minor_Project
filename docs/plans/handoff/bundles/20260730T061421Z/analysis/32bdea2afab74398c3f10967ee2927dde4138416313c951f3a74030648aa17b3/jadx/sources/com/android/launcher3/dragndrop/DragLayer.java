package com.android.launcher3.dragndrop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTargetBar;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.graphics.OverviewScrim;
import com.android.launcher3.graphics.WorkspaceAndHotseatScrim;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class DragLayer extends BaseDragLayer {
    public View mAnchorView;
    public int mAnchorViewInitialScrollX;
    public int mChildCountOnLastUpdate;
    public DragController mDragController;
    public ValueAnimator mDropAnim;
    public DragView mDropView;
    public final ViewGroupFocusHelper mFocusIndicatorHelper;
    public boolean mHoverPointClosesFolder;
    public View mMoveTarget;
    public final OverviewScrim mOverviewScrim;
    public int mTopViewIndex;
    public final WorkspaceAndHotseatScrim mWorkspaceScrim;

    public DragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 3);
        this.mDropAnim = null;
        this.mDropView = null;
        this.mAnchorViewInitialScrollX = 0;
        this.mAnchorView = null;
        this.mHoverPointClosesFolder = false;
        this.mChildCountOnLastUpdate = -1;
        setMotionEventSplittingEnabled(false);
        setChildrenDrawingOrderEnabled(true);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper(this);
        this.mWorkspaceScrim = new WorkspaceAndHotseatScrim(this);
        this.mOverviewScrim = new OverviewScrim(this);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType == null) {
            super.addChildrenForAccessibility(arrayList);
            return;
        }
        addAccessibleChildToList(topOpenViewWithType, arrayList);
        if (isInAccessibleDrag()) {
            addAccessibleChildToList(((Launcher) this.mActivity).mDropTargetBar, arrayList);
        }
    }

    public void animateView(final DragView dragView, final Rect rect, final Rect rect2, final float f, final float f2, final float f3, final float f4, final float f5, int i, final Interpolator interpolator, final Interpolator interpolator2, Runnable runnable, int i2, View view) {
        int i3;
        float hypot = (float) Math.hypot(rect2.left - rect.left, rect2.top - rect.top);
        Resources resources = getResources();
        float integer = resources.getInteger(R.integer.config_dropAnimMaxDist);
        if (i < 0) {
            int integer2 = resources.getInteger(R.integer.config_dropAnimMaxDuration);
            if (hypot < integer) {
                integer2 = (int) (Interpolators.DEACCEL_1_5.getInterpolation(hypot / integer) * integer2);
            }
            i3 = Math.max(integer2, resources.getInteger(R.integer.config_dropAnimMinDuration));
        } else {
            i3 = i;
        }
        Interpolator interpolator3 = (interpolator2 == null || interpolator == null) ? Interpolators.DEACCEL_1_5 : null;
        final float alpha = dragView.getAlpha();
        final float scaleX = dragView.getScaleX();
        animateView(dragView, new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.dragndrop.DragLayer.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int scrollX;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int measuredWidth = dragView.getMeasuredWidth();
                int measuredHeight = dragView.getMeasuredHeight();
                Interpolator interpolator4 = interpolator2;
                float interpolation = interpolator4 == null ? floatValue : interpolator4.getInterpolation(floatValue);
                Interpolator interpolator5 = interpolator;
                float interpolation2 = interpolator5 == null ? floatValue : interpolator5.getInterpolation(floatValue);
                float f6 = f2;
                float f7 = scaleX;
                float f8 = f6 * f7;
                float f9 = f3 * f7;
                float f10 = 1.0f - floatValue;
                float f11 = (f8 * f10) + (f4 * floatValue);
                float f12 = (f10 * f9) + (f5 * floatValue);
                float a2 = a.a(1.0f, interpolation, alpha, f * interpolation);
                Rect rect3 = rect;
                int round = (int) ((((f8 - 1.0f) * measuredWidth) / 2.0f) + rect3.left + Math.round((rect2.left - r4) * interpolation2));
                int round2 = (int) ((((f9 - 1.0f) * measuredHeight) / 2.0f) + rect3.top + Math.round((rect2.top - r6) * interpolation2));
                View view2 = DragLayer.this.mAnchorView;
                if (view2 == null) {
                    scrollX = 0;
                } else {
                    float scaleX2 = view2.getScaleX();
                    DragLayer dragLayer = DragLayer.this;
                    scrollX = (int) (scaleX2 * (dragLayer.mAnchorViewInitialScrollX - dragLayer.mAnchorView.getScrollX()));
                }
                int scrollX2 = (round - DragLayer.this.mDropView.getScrollX()) + scrollX;
                int scrollY = round2 - DragLayer.this.mDropView.getScrollY();
                DragLayer.this.mDropView.setTranslationX(scrollX2);
                DragLayer.this.mDropView.setTranslationY(scrollY);
                DragLayer.this.mDropView.setScaleX(f11);
                DragLayer.this.mDropView.setScaleY(f12);
                DragLayer.this.mDropView.setAlpha(a2);
            }
        }, i3, interpolator3, runnable, i2, view);
    }

    public void animateViewIntoPosition(DragView dragView, int[] iArr, float f, float f2, float f3, int i, Runnable runnable, int i2) {
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        animateViewIntoPosition(dragView, rect.left, rect.top, iArr[0], iArr[1], f, 1.0f, 1.0f, f2, f3, runnable, i, i2, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        updateChildIndices();
    }

    public void clearAnimatedView() {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mDropAnim = null;
        DragView dragView = this.mDropView;
        if (dragView != null) {
            DragController dragController = this.mDragController;
            Objects.requireNonNull(dragController);
            if (dragView.getParent() != null) {
                dragView.mDragLayer.removeView(dragView);
            }
            if (dragController.mDragObject.deferDragViewCleanupPostAnimation) {
                dragController.callOnDragEnd();
            }
        }
        this.mDropView = null;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mWorkspaceScrim.draw(canvas);
        OverviewScrim overviewScrim = this.mOverviewScrim;
        View view = overviewScrim.mStableScrimmedView;
        overviewScrim.mCurrentScrimmedView = view;
        int indexOfChild = indexOfChild(view);
        int childCount = getChildCount();
        while (true) {
            View view2 = overviewScrim.mCurrentScrimmedView;
            if (view2 == null || view2.getVisibility() == 0 || indexOfChild >= childCount) {
                break;
            }
            indexOfChild++;
            overviewScrim.mCurrentScrimmedView = getChildAt(indexOfChild);
        }
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
        OverviewScrim overviewScrim2 = this.mOverviewScrim;
        if (overviewScrim2.mCurrentScrimmedView == null) {
            canvas.drawColor(GraphicsUtils.setColorAlphaBound(overviewScrim2.mScrimColor, overviewScrim2.mScrimAlpha));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return (this.mDragController.mDragDriver != null) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.offsetLocation(getTranslationX(), RecentsState.NO_OFFSET);
        try {
            return super.dispatchTouchEvent(motionEvent);
        } finally {
            motionEvent.offsetLocation(-getTranslationX(), RecentsState.NO_OFFSET);
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return super.dispatchUnhandledMove(view, i) || this.mMoveTarget.dispatchUnhandledMove(view, i);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        OverviewScrim overviewScrim = this.mOverviewScrim;
        if (view == overviewScrim.mCurrentScrimmedView) {
            canvas.drawColor(GraphicsUtils.setColorAlphaBound(overviewScrim.mScrimColor, overviewScrim.mScrimAlpha));
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        if (this.mChildCountOnLastUpdate != i) {
            updateChildIndices();
        }
        int i3 = this.mTopViewIndex;
        return i3 == -1 ? i2 : i2 == i + (-1) ? i3 : i2 < i3 ? i2 : i2 + 1;
    }

    public final boolean isEventOverAccessibleDropTargetBar(MotionEvent motionEvent) {
        return isInAccessibleDrag() && isEventOverView(((Launcher) this.mActivity).mDropTargetBar, motionEvent);
    }

    public final boolean isInAccessibleDrag() {
        return ((Launcher) this.mActivity).mAccessibilityDelegate.isInAccessibleDrag();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        Object obj = this.mActivity;
        if (obj != null && ((Launcher) obj).mWorkspace != null) {
            AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) obj);
            if ((topOpenView instanceof Folder) && ((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
                Folder folder = (Folder) topOpenView;
                int action = motionEvent.getAction();
                if (action == 7) {
                    boolean z = isEventOverView(topOpenView, motionEvent) || isEventOverAccessibleDropTargetBar(motionEvent);
                    if (!z && !this.mHoverPointClosesFolder) {
                        sendTapOutsideFolderAccessibilityEvent(folder.mIsEditingName);
                        this.mHoverPointClosesFolder = true;
                        return true;
                    }
                    if (!z) {
                        return true;
                    }
                    this.mHoverPointClosesFolder = false;
                } else if (action == 9) {
                    if (!(isEventOverView(topOpenView, motionEvent) || isEventOverAccessibleDropTargetBar(motionEvent))) {
                        sendTapOutsideFolderAccessibilityEvent(folder.mIsEditingName);
                        this.mHoverPointClosesFolder = true;
                        return true;
                    }
                    this.mHoverPointClosesFolder = false;
                }
            }
        }
        return false;
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (isInAccessibleDrag() && (view instanceof DropTargetBar)) {
            return true;
        }
        return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        WorkspaceAndHotseatScrim workspaceAndHotseatScrim = this.mWorkspaceScrim;
        Drawable drawable = workspaceAndHotseatScrim.mTopScrim;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
            workspaceAndHotseatScrim.mFinalMaskRect.set(RecentsState.NO_OFFSET, i2 - workspaceAndHotseatScrim.mMaskHeight, i, i2);
        }
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = ((Launcher) this.mActivity).createTouchControllers();
    }

    public final void sendTapOutsideFolderAccessibilityEvent(boolean z) {
        W.sendCustomAccessibilityEvent(this, 8, getContext().getString(z ? R.string.folder_tap_to_rename : R.string.folder_tap_to_close));
    }

    @Override // com.android.launcher3.InsettableFrameLayout, com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        super.setInsets(rect);
        WorkspaceAndHotseatScrim workspaceAndHotseatScrim = this.mWorkspaceScrim;
        boolean z = this.mAllowSysuiScrims;
        boolean z2 = false;
        workspaceAndHotseatScrim.mDrawTopScrim = z && workspaceAndHotseatScrim.mTopScrim != null && rect.top > 0;
        if (z && workspaceAndHotseatScrim.mBottomMask != null && !workspaceAndHotseatScrim.mLauncher.getDeviceProfile().isVerticalBarLayout()) {
            if (!Utilities.ATLEAST_Q || workspaceAndHotseatScrim.mLauncher.getRootView() == null || workspaceAndHotseatScrim.mLauncher.getRootView().getRootWindowInsets() == null || workspaceAndHotseatScrim.mLauncher.getRootView().getRootWindowInsets().getTappableElementInsets().bottom > 0) {
                z2 = true;
            }
        }
        workspaceAndHotseatScrim.mDrawBottomScrim = z2;
        OverviewScrim overviewScrim = this.mOverviewScrim;
        Objects.requireNonNull(overviewScrim);
        overviewScrim.mStableScrimmedView = (LauncherState.OVERVIEW.getVisibleElements(overviewScrim.mLauncher) & 1) != 0 ? overviewScrim.mLauncher.mHotseat : overviewScrim.mLauncher.getOverviewPanel();
    }

    public final void updateChildIndices() {
        this.mTopViewIndex = -1;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i) instanceof DragView) {
                this.mTopViewIndex = i;
            }
        }
        this.mChildCountOnLastUpdate = childCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void animateViewIntoPosition(DragView dragView, final View view, int i, View view2) {
        int i2;
        int i3;
        float f;
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) view.getParent();
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        shortcutAndWidgetContainer.measureChild(view);
        shortcutAndWidgetContainer.layoutChild(view);
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        int i4 = rect.left;
        int i5 = rect.top;
        float scaleX = view.getScaleX();
        float f2 = 1.0f - scaleX;
        float[] fArr = {((view.getMeasuredWidth() * f2) / 2.0f) + layoutParams.x, ((view.getMeasuredHeight() * f2) / 2.0f) + layoutParams.y};
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf((View) view.getParent(), fArr) * scaleX;
        int round = Math.round(fArr[0]);
        int round2 = Math.round(fArr[1]);
        if (view instanceof DraggableView) {
            ((DraggableView) view).getWorkspaceVisualDragBounds(new Rect());
            float width = ((r8.width() * 1.0f) / (dragView.getMeasuredWidth() - dragView.mBlurSizeOutline)) * descendantCoordRelativeToSelf;
            float f3 = 1.0f - width;
            float measuredHeight = (dragView.getMeasuredHeight() * f3) / 2.0f;
            int i6 = dragView.mBlurSizeOutline;
            int measuredWidth = (int) ((((r8.left * descendantCoordRelativeToSelf) - ((i6 * width) / 2.0f)) - ((dragView.getMeasuredWidth() * f3) / 2.0f)) + round);
            f = width;
            i2 = (int) ((((descendantCoordRelativeToSelf * r8.top) - ((i6 * width) / 2.0f)) - measuredHeight) + round2);
            i3 = measuredWidth;
        } else {
            i2 = round2;
            i3 = round;
            f = descendantCoordRelativeToSelf;
        }
        view.setVisibility(4);
        animateViewIntoPosition(dragView, i4, i5, i3, i2, 1.0f, 1.0f, 1.0f, f, f, new Runnable() { // from class: c.a.a.H0.d
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(0);
            }
        }, 0, i, view2);
    }

    public void animateView(DragView dragView, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, int i, TimeInterpolator timeInterpolator, final Runnable runnable, final int i2, View view) {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mDropView = dragView;
        ValueAnimator valueAnimator2 = dragView.mAnim;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            dragView.mAnim.cancel();
        }
        this.mDropView.requestLayout();
        if (view != null) {
            this.mAnchorViewInitialScrollX = view.getScrollX();
        }
        this.mAnchorView = view;
        ValueAnimator valueAnimator3 = new ValueAnimator();
        this.mDropAnim = valueAnimator3;
        valueAnimator3.setInterpolator(timeInterpolator);
        this.mDropAnim.setDuration(i);
        this.mDropAnim.setFloatValues(RecentsState.NO_OFFSET, 1.0f);
        this.mDropAnim.addUpdateListener(animatorUpdateListener);
        this.mDropAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.dragndrop.DragLayer.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                if (i2 == 0) {
                    DragLayer.this.clearAnimatedView();
                }
                DragLayer.this.mDropAnim = null;
            }
        });
        this.mDropAnim.start();
    }

    public void animateViewIntoPosition(DragView dragView, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4, float f5, Runnable runnable, int i5, int i6, View view) {
        animateView(dragView, new Rect(i, i2, dragView.getMeasuredWidth() + i, dragView.getMeasuredHeight() + i2), new Rect(i3, i4, dragView.getMeasuredWidth() + i3, dragView.getMeasuredHeight() + i4), f, f2, f3, f4, f5, i6, null, null, runnable, i5, view);
    }
}
