package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import b.l.W;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.CellLayout;
import com.android.launcher3.FirstFrameAnimatorHelper.MyListener;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class AppWidgetResizeFrame extends AbstractFloatingView implements View.OnKeyListener {
    public final int mBackgroundPadding;
    public final IntRange mBaselineX;
    public final IntRange mBaselineY;
    public boolean mBottomBorderActive;
    public int mBottomTouchRegionAdjustment;
    public CellLayout mCellLayout;
    public int mDeltaX;
    public int mDeltaXAddOn;
    public final IntRange mDeltaXRange;
    public int mDeltaY;
    public int mDeltaYAddOn;
    public final IntRange mDeltaYRange;
    public final int[] mDirectionVector;
    public final View[] mDragHandles;
    public DragLayer mDragLayer;
    public final FirstFrameAnimatorHelper mFirstFrameAnimatorHelper;
    public final int[] mLastDirectionVector;
    public final Launcher mLauncher;
    public boolean mLeftBorderActive;
    public int mMinHSpan;
    public int mMinVSpan;
    public int mResizeMode;
    public boolean mRightBorderActive;
    public int mRunningHInc;
    public int mRunningVInc;
    public final DragViewStateAnnouncer mStateAnnouncer;
    public final List mSystemGestureExclusionRects;
    public final IntRange mTempRange1;
    public final IntRange mTempRange2;
    public boolean mTopBorderActive;
    public int mTopTouchRegionAdjustment;
    public final int mTouchTargetWidth;
    public Rect mWidgetPadding;
    public LauncherAppWidgetHostView mWidgetView;
    public int mXDown;
    public int mYDown;
    public static final Rect sTmpRect = new Rect();
    public static final MainThreadInitializedObject CELL_SIZE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.e
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return AppWidgetResizeFrame.c(context);
        }
    });

    public class IntRange {
        public int end;
        public int start;

        public IntRange(AnonymousClass1 anonymousClass1) {
        }

        public void applyDelta(boolean z, boolean z2, int i, IntRange intRange) {
            intRange.start = z ? this.start + i : this.start;
            int i2 = this.end;
            if (z2) {
                i2 += i;
            }
            intRange.end = i2;
        }

        public int applyDeltaAndBound(boolean z, boolean z2, int i, int i2, int i3, IntRange intRange) {
            applyDelta(z, z2, i, intRange);
            if (intRange.start < 0) {
                intRange.start = 0;
            }
            if (intRange.end > i3) {
                intRange.end = i3;
            }
            if (intRange.size() < i2) {
                if (z) {
                    intRange.start = intRange.end - i2;
                } else if (z2) {
                    intRange.end = intRange.start + i2;
                }
            }
            return z2 ? intRange.size() - size() : size() - intRange.size();
        }

        public int size() {
            return this.end - this.start;
        }
    }

    public AppWidgetResizeFrame(Context context) {
        this(context, null);
    }

    public static /* synthetic */ Point[] c(Context context) {
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        return new Point[]{idp.landscapeProfile.getCellSize(), idp.portraitProfile.getCellSize()};
    }

    public static Rect getWidgetSizeRanges(Context context, int i, int i2, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        float f = context.getResources().getDisplayMetrics().density;
        Point[] pointArr = (Point[]) CELL_SIZE.b(context);
        rect.set((int) ((i * pointArr[1].x) / f), (int) ((pointArr[0].y * i2) / f), (int) ((pointArr[0].x * i) / f), (int) ((i2 * pointArr[1].y) / f));
        return rect;
    }

    public static void showForWidget(LauncherAppWidgetHostView launcherAppWidgetHostView, CellLayout cellLayout) {
        Launcher launcher = Launcher.getLauncher(cellLayout.getContext());
        AbstractFloatingView.closeAllOpenViews(launcher);
        DragLayer dragLayer = launcher.mDragLayer;
        AppWidgetResizeFrame appWidgetResizeFrame = (AppWidgetResizeFrame) launcher.getLayoutInflater().inflate(R.layout.app_widget_resize_frame, (ViewGroup) dragLayer, false);
        appWidgetResizeFrame.mCellLayout = cellLayout;
        appWidgetResizeFrame.mWidgetView = launcherAppWidgetHostView;
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo) launcherAppWidgetHostView.getAppWidgetInfo();
        appWidgetResizeFrame.mResizeMode = ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).resizeMode;
        appWidgetResizeFrame.mDragLayer = dragLayer;
        appWidgetResizeFrame.mMinHSpan = launcherAppWidgetProviderInfo.minSpanX;
        appWidgetResizeFrame.mMinVSpan = launcherAppWidgetProviderInfo.minSpanY;
        appWidgetResizeFrame.mWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(appWidgetResizeFrame.getContext(), launcherAppWidgetHostView.getAppWidgetInfo().provider, null);
        int i = appWidgetResizeFrame.mResizeMode;
        if (i == 1) {
            appWidgetResizeFrame.mDragHandles[1].setVisibility(8);
            appWidgetResizeFrame.mDragHandles[3].setVisibility(8);
        } else if (i == 2) {
            appWidgetResizeFrame.mDragHandles[0].setVisibility(8);
            appWidgetResizeFrame.mDragHandles[2].setVisibility(8);
        }
        appWidgetResizeFrame.mCellLayout.markCellsAsUnoccupiedForView(appWidgetResizeFrame.mWidgetView);
        appWidgetResizeFrame.setOnKeyListener(appWidgetResizeFrame);
        ((BaseDragLayer.LayoutParams) appWidgetResizeFrame.getLayoutParams()).customPosition = true;
        dragLayer.addView(appWidgetResizeFrame);
        appWidgetResizeFrame.mIsOpen = true;
        appWidgetResizeFrame.snapToWidget(false);
    }

    public static void updateWidgetSizeRanges(AppWidgetHostView appWidgetHostView, Launcher launcher, int i, int i2) {
        getWidgetSizeRanges(launcher, i, i2, sTmpRect);
        Rect rect = sTmpRect;
        appWidgetHostView.updateAppWidgetSize(null, rect.left, rect.top, rect.right, rect.bottom);
    }

    public /* synthetic */ void a() {
        snapToWidget(true);
    }

    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        requestLayout();
    }

    public final void getSnappedRectRelativeToDragLayer(Rect rect) {
        LauncherAppWidgetHostView launcherAppWidgetHostView = this.mWidgetView;
        float f = launcherAppWidgetHostView.mScaleToFit;
        this.mDragLayer.getViewRectRelativeToSelf(launcherAppWidgetHostView, rect);
        int i = this.mBackgroundPadding * 2;
        int width = rect.width();
        Rect rect2 = this.mWidgetPadding;
        int i2 = i + ((int) (((width - rect2.left) - rect2.right) * f));
        int i3 = this.mBackgroundPadding * 2;
        int height = rect.height();
        int i4 = this.mWidgetPadding.top;
        int i5 = i3 + ((int) (((height - i4) - r4.bottom) * f));
        int i6 = rect.left;
        int i7 = this.mBackgroundPadding;
        int i8 = (int) ((r4.left * f) + (i6 - i7));
        int i9 = (int) ((f * i4) + (rect.top - i7));
        rect.left = i8;
        rect.top = i9;
        rect.right = i8 + i2;
        rect.bottom = i9 + i5;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        this.mDragLayer.removeView(this);
    }

    public final boolean handleTouchDown(MotionEvent motionEvent) {
        Rect rect = new Rect();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        getHitRect(rect);
        if (rect.contains(x, y)) {
            int left = x - getLeft();
            int top = y - getTop();
            boolean z = (this.mResizeMode & 1) != 0;
            boolean z2 = (this.mResizeMode & 2) != 0;
            this.mLeftBorderActive = left < this.mTouchTargetWidth && z;
            this.mRightBorderActive = left > getWidth() - this.mTouchTargetWidth && z;
            this.mTopBorderActive = top < this.mTouchTargetWidth + this.mTopTouchRegionAdjustment && z2;
            boolean z3 = top > (getHeight() - this.mTouchTargetWidth) + this.mBottomTouchRegionAdjustment && z2;
            this.mBottomBorderActive = z3;
            boolean z4 = this.mLeftBorderActive || this.mRightBorderActive || this.mTopBorderActive || z3;
            if (z4) {
                this.mDragHandles[0].setAlpha(this.mLeftBorderActive ? 1.0f : 0.0f);
                this.mDragHandles[2].setAlpha(this.mRightBorderActive ? 1.0f : 0.0f);
                this.mDragHandles[1].setAlpha(this.mTopBorderActive ? 1.0f : 0.0f);
                this.mDragHandles[3].setAlpha(this.mBottomBorderActive ? 1.0f : 0.0f);
            }
            if (this.mLeftBorderActive) {
                IntRange intRange = this.mDeltaXRange;
                int i = -getLeft();
                int width = getWidth() - (this.mTouchTargetWidth * 2);
                intRange.start = i;
                intRange.end = width;
            } else if (this.mRightBorderActive) {
                IntRange intRange2 = this.mDeltaXRange;
                int width2 = (this.mTouchTargetWidth * 2) - getWidth();
                int width3 = this.mDragLayer.getWidth() - getRight();
                intRange2.start = width2;
                intRange2.end = width3;
            } else {
                IntRange intRange3 = this.mDeltaXRange;
                intRange3.start = 0;
                intRange3.end = 0;
            }
            IntRange intRange4 = this.mBaselineX;
            int left2 = getLeft();
            int right = getRight();
            intRange4.start = left2;
            intRange4.end = right;
            if (this.mTopBorderActive) {
                IntRange intRange5 = this.mDeltaYRange;
                int i2 = -getTop();
                int height = getHeight() - (this.mTouchTargetWidth * 2);
                intRange5.start = i2;
                intRange5.end = height;
            } else if (this.mBottomBorderActive) {
                IntRange intRange6 = this.mDeltaYRange;
                int height2 = (this.mTouchTargetWidth * 2) - getHeight();
                int height3 = this.mDragLayer.getHeight() - getBottom();
                intRange6.start = height2;
                intRange6.end = height3;
            } else {
                IntRange intRange7 = this.mDeltaYRange;
                intRange7.start = 0;
                intRange7.end = 0;
            }
            IntRange intRange8 = this.mBaselineY;
            int top2 = getTop();
            int bottom = getBottom();
            intRange8.start = top2;
            intRange8.end = bottom;
            if (z4) {
                this.mXDown = x;
                this.mYDown = y;
                return true;
            }
        }
        return false;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 8) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && handleTouchDown(motionEvent)) {
            return true;
        }
        close(false);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r0 != 3) goto L13;
     */
    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onControllerTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            float r1 = r5.getX()
            int r1 = (int) r1
            float r2 = r5.getY()
            int r2 = (int) r2
            if (r0 == 0) goto L4f
            r5 = 1
            if (r0 == r5) goto L24
            r3 = 2
            if (r0 == r3) goto L1a
            r3 = 3
            if (r0 == r3) goto L24
            goto L4e
        L1a:
            int r0 = r4.mXDown
            int r1 = r1 - r0
            int r0 = r4.mYDown
            int r2 = r2 - r0
            r4.visualizeResizeForDelta(r1, r2)
            goto L4e
        L24:
            int r0 = r4.mXDown
            int r1 = r1 - r0
            int r0 = r4.mYDown
            int r2 = r2 - r0
            r4.visualizeResizeForDelta(r1, r2)
            com.android.launcher3.CellLayout r0 = r4.mCellLayout
            int r1 = r0.mCellWidth
            int r0 = r0.mCellHeight
            int r2 = r4.mRunningHInc
            int r2 = r2 * r1
            r4.mDeltaXAddOn = r2
            int r1 = r4.mRunningVInc
            int r1 = r1 * r0
            r4.mDeltaYAddOn = r1
            r0 = 0
            r4.mDeltaX = r0
            r4.mDeltaY = r0
            c.a.a.f r1 = new c.a.a.f
            r1.<init>()
            r4.post(r1)
            r4.mYDown = r0
            r4.mXDown = r0
        L4e:
            return r5
        L4f:
            boolean r4 = r4.handleTouchDown(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.AppWidgetResizeFrame.onControllerTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resizeWidgetIfNeeded(true);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        for (int i = 0; i < 4; i++) {
            this.mDragHandles[i] = viewGroup.getChildAt(i);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (!(i == 21 || i == 22 || i == 19 || i == 20 || i == 122 || i == 123 || i == 92 || i == 93)) {
            return false;
        }
        close(false);
        this.mWidgetView.requestFocus();
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Utilities.ATLEAST_Q) {
            for (int i5 = 0; i5 < 4; i5++) {
                View view = this.mDragHandles[i5];
                ((Rect) this.mSystemGestureExclusionRects.get(i5)).set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            setSystemGestureExclusionRects(this.mSystemGestureExclusionRects);
        }
    }

    public final void resizeWidgetIfNeeded(boolean z) {
        CellLayout cellLayout = this.mCellLayout;
        float f = cellLayout.mCellWidth;
        float f2 = cellLayout.mCellHeight;
        float f3 = ((this.mDeltaX + this.mDeltaXAddOn) / f) - this.mRunningHInc;
        int round = Math.abs(f3) > 0.66f ? Math.round(f3) : 0;
        float f4 = ((this.mDeltaY + this.mDeltaYAddOn) / f2) - this.mRunningVInc;
        int round2 = Math.abs(f4) > 0.66f ? Math.round(f4) : 0;
        if (!z && round == 0 && round2 == 0) {
            return;
        }
        int[] iArr = this.mDirectionVector;
        iArr[0] = 0;
        iArr[1] = 0;
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.mWidgetView.getLayoutParams();
        int i = layoutParams.cellHSpan;
        int i2 = layoutParams.cellVSpan;
        int i3 = layoutParams.useTmpCoords ? layoutParams.tmpCellX : layoutParams.cellX;
        int i4 = layoutParams.useTmpCoords ? layoutParams.tmpCellY : layoutParams.cellY;
        IntRange intRange = this.mTempRange1;
        intRange.start = i3;
        intRange.end = i + i3;
        int applyDeltaAndBound = intRange.applyDeltaAndBound(this.mLeftBorderActive, this.mRightBorderActive, round, this.mMinHSpan, this.mCellLayout.mCountX, this.mTempRange2);
        IntRange intRange2 = this.mTempRange2;
        int i5 = intRange2.start;
        int size = intRange2.size();
        if (applyDeltaAndBound != 0) {
            this.mDirectionVector[0] = this.mLeftBorderActive ? -1 : 1;
        }
        IntRange intRange3 = this.mTempRange1;
        intRange3.start = i4;
        intRange3.end = i2 + i4;
        int applyDeltaAndBound2 = intRange3.applyDeltaAndBound(this.mTopBorderActive, this.mBottomBorderActive, round2, this.mMinVSpan, this.mCellLayout.mCountY, this.mTempRange2);
        IntRange intRange4 = this.mTempRange2;
        int i6 = intRange4.start;
        int size2 = intRange4.size();
        if (applyDeltaAndBound2 != 0) {
            this.mDirectionVector[1] = this.mTopBorderActive ? -1 : 1;
        }
        if (!z && applyDeltaAndBound2 == 0 && applyDeltaAndBound == 0) {
            return;
        }
        if (z) {
            int[] iArr2 = this.mDirectionVector;
            int[] iArr3 = this.mLastDirectionVector;
            iArr2[0] = iArr3[0];
            iArr2[1] = iArr3[1];
        } else {
            int[] iArr4 = this.mLastDirectionVector;
            int[] iArr5 = this.mDirectionVector;
            iArr4[0] = iArr5[0];
            iArr4[1] = iArr5[1];
        }
        CellLayout cellLayout2 = this.mCellLayout;
        LauncherAppWidgetHostView launcherAppWidgetHostView = this.mWidgetView;
        int[] iArr6 = this.mDirectionVector;
        int[] iArr7 = new int[2];
        cellLayout2.regionToCenterPoint(i5, i6, size, size2, iArr7);
        CellLayout.ItemConfiguration findReorderSolution = cellLayout2.findReorderSolution(iArr7[0], iArr7[1], size, size2, size, size2, iArr6, launcherAppWidgetHostView, true, new CellLayout.ItemConfiguration(null));
        cellLayout2.setUseTempCoords(true);
        if (findReorderSolution != null && findReorderSolution.isSolution) {
            cellLayout2.copySolutionToTempState(findReorderSolution, launcherAppWidgetHostView);
            cellLayout2.mItemPlacementDirty = true;
            cellLayout2.animateItemsToSolution(findReorderSolution, launcherAppWidgetHostView, z);
            if (z) {
                cellLayout2.commitTempPlacement();
                cellLayout2.completeAndClearReorderPreviewAnimations();
                cellLayout2.mItemPlacementDirty = false;
            } else {
                cellLayout2.beginOrAdjustReorderPreviewAnimations(findReorderSolution, launcherAppWidgetHostView, 1);
            }
            cellLayout2.mShortcutsAndWidgets.requestLayout();
        }
        if (findReorderSolution.isSolution) {
            if (this.mStateAnnouncer != null && (layoutParams.cellHSpan != size || layoutParams.cellVSpan != size2)) {
                this.mStateAnnouncer.announce(this.mLauncher.getString(R.string.widget_resized, new Object[]{Integer.valueOf(size), Integer.valueOf(size2)}));
            }
            layoutParams.tmpCellX = i5;
            layoutParams.tmpCellY = i6;
            layoutParams.cellHSpan = size;
            layoutParams.cellVSpan = size2;
            this.mRunningVInc += applyDeltaAndBound2;
            this.mRunningHInc += applyDeltaAndBound;
            if (!z) {
                updateWidgetSizeRanges(this.mWidgetView, this.mLauncher, size, size2);
            }
        }
        this.mWidgetView.requestLayout();
    }

    public final void snapToWidget(boolean z) {
        getSnappedRectRelativeToDragLayer(sTmpRect);
        int width = sTmpRect.width();
        int height = sTmpRect.height();
        Rect rect = sTmpRect;
        int i = rect.left;
        int i2 = rect.top;
        if (i2 < 0) {
            this.mTopTouchRegionAdjustment = -i2;
        } else {
            this.mTopTouchRegionAdjustment = 0;
        }
        int i3 = i2 + height;
        if (i3 > this.mDragLayer.getHeight()) {
            this.mBottomTouchRegionAdjustment = -(i3 - this.mDragLayer.getHeight());
        } else {
            this.mBottomTouchRegionAdjustment = 0;
        }
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        if (z) {
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(layoutParams, PropertyValuesHolder.ofInt(LauncherAnimUtils.LAYOUT_WIDTH, ((FrameLayout.LayoutParams) layoutParams).width, width), PropertyValuesHolder.ofInt(LauncherAnimUtils.LAYOUT_HEIGHT, ((FrameLayout.LayoutParams) layoutParams).height, height), PropertyValuesHolder.ofInt((Property<?, Integer>) BaseDragLayer.LAYOUT_X, layoutParams.x, i), PropertyValuesHolder.ofInt((Property<?, Integer>) BaseDragLayer.LAYOUT_Y, layoutParams.y, i2));
            FirstFrameAnimatorHelper firstFrameAnimatorHelper = this.mFirstFrameAnimatorHelper;
            Objects.requireNonNull(firstFrameAnimatorHelper);
            ofPropertyValuesHolder.addUpdateListener(firstFrameAnimatorHelper.new MyListener(null));
            ofPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.d
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AppWidgetResizeFrame.this.b(valueAnimator);
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ofPropertyValuesHolder);
            for (int i4 = 0; i4 < 4; i4++) {
                FirstFrameAnimatorHelper firstFrameAnimatorHelper2 = this.mFirstFrameAnimatorHelper;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mDragHandles[i4], (Property<View, Float>) LinearLayout.ALPHA, 1.0f);
                Objects.requireNonNull(firstFrameAnimatorHelper2);
                ofFloat.addUpdateListener(firstFrameAnimatorHelper2.new MyListener(null));
                animatorSet.play(ofFloat);
            }
            animatorSet.setDuration(150L);
            animatorSet.start();
        } else {
            ((FrameLayout.LayoutParams) layoutParams).width = width;
            ((FrameLayout.LayoutParams) layoutParams).height = height;
            layoutParams.x = i;
            layoutParams.y = i2;
            for (int i5 = 0; i5 < 4; i5++) {
                this.mDragHandles[i5].setAlpha(1.0f);
            }
            requestLayout();
        }
        setFocusableInTouchMode(true);
        requestFocus();
    }

    public void visualizeResizeForDelta(int i, int i2) {
        IntRange intRange = this.mDeltaXRange;
        this.mDeltaX = Utilities.boundToRange(i, intRange.start, intRange.end);
        IntRange intRange2 = this.mDeltaYRange;
        this.mDeltaY = Utilities.boundToRange(i2, intRange2.start, intRange2.end);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        IntRange intRange3 = this.mDeltaXRange;
        int boundToRange = Utilities.boundToRange(i, intRange3.start, intRange3.end);
        this.mDeltaX = boundToRange;
        this.mBaselineX.applyDelta(this.mLeftBorderActive, this.mRightBorderActive, boundToRange, this.mTempRange1);
        IntRange intRange4 = this.mTempRange1;
        layoutParams.x = intRange4.start;
        ((FrameLayout.LayoutParams) layoutParams).width = intRange4.size();
        IntRange intRange5 = this.mDeltaYRange;
        int boundToRange2 = Utilities.boundToRange(i2, intRange5.start, intRange5.end);
        this.mDeltaY = boundToRange2;
        this.mBaselineY.applyDelta(this.mTopBorderActive, this.mBottomBorderActive, boundToRange2, this.mTempRange1);
        IntRange intRange6 = this.mTempRange1;
        layoutParams.y = intRange6.start;
        ((FrameLayout.LayoutParams) layoutParams).height = intRange6.size();
        resizeWidgetIfNeeded(false);
        getSnappedRectRelativeToDragLayer(sTmpRect);
        if (this.mLeftBorderActive) {
            ((FrameLayout.LayoutParams) layoutParams).width = (sTmpRect.width() + sTmpRect.left) - layoutParams.x;
        }
        if (this.mTopBorderActive) {
            ((FrameLayout.LayoutParams) layoutParams).height = (sTmpRect.height() + sTmpRect.top) - layoutParams.y;
        }
        if (this.mRightBorderActive) {
            layoutParams.x = sTmpRect.left;
        }
        if (this.mBottomBorderActive) {
            layoutParams.y = sTmpRect.top;
        }
        requestLayout();
    }

    public AppWidgetResizeFrame(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppWidgetResizeFrame(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDragHandles = new View[4];
        this.mSystemGestureExclusionRects = new ArrayList(4);
        this.mDirectionVector = new int[2];
        this.mLastDirectionVector = new int[2];
        this.mTempRange1 = new IntRange(null);
        this.mTempRange2 = new IntRange(null);
        this.mDeltaXRange = new IntRange(null);
        this.mBaselineX = new IntRange(null);
        this.mDeltaYRange = new IntRange(null);
        this.mBaselineY = new IntRange(null);
        this.mTopTouchRegionAdjustment = 0;
        this.mBottomTouchRegionAdjustment = 0;
        this.mLauncher = Launcher.getLauncher(context);
        this.mStateAnnouncer = W.isAccessibilityEnabled(getContext()) ? new DragViewStateAnnouncer(this) : null;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.resize_frame_background_padding);
        this.mBackgroundPadding = dimensionPixelSize;
        this.mTouchTargetWidth = dimensionPixelSize * 2;
        this.mFirstFrameAnimatorHelper = new FirstFrameAnimatorHelper(this);
        for (int i2 = 0; i2 < 4; i2++) {
            this.mSystemGestureExclusionRects.add(new Rect());
        }
    }
}
