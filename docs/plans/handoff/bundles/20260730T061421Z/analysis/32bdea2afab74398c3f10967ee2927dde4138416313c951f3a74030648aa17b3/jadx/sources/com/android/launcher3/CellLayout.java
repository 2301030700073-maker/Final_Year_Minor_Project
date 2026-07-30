package com.android.launcher3;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import b.l.W;
import c.a.a.N0.L;
import c.a.c.a.a;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.ModelWriter.UpdateItemRunnable;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.CellAndSpan;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.ParcelableSparseArray;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.TaskMenuView;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import java.util.Stack;

/* loaded from: classes.dex */
public class CellLayout extends ViewGroup {
    public final ActivityContext mActivity;
    public final Drawable mBackground;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mCellHeight;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mCellWidth;
    public final int mContainerType;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mCountX;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mCountY;
    public final ArrayList mDelegatedCellDrawings;
    public final int[] mDirectionVector;
    public final int[] mDragCell;
    public final float[] mDragOutlineAlphas;
    public final InterruptibleInOutAnimator[] mDragOutlineAnims;
    public int mDragOutlineCurrent;
    public final Paint mDragOutlinePaint;
    public final Rect[] mDragOutlines;
    public boolean mDragging;
    public boolean mDropPending;
    public final TimeInterpolator mEaseOutInterpolator;
    public int mFixedCellHeight;
    public int mFixedCellWidth;
    public int mFixedHeight;
    public int mFixedWidth;
    public final PreviewBackground mFolderLeaveBehind;
    public View.OnTouchListener mInterceptTouchListener;
    public final ArrayList mIntersectingViews;
    public boolean mIsDragOverlapping;
    public boolean mItemPlacementDirty;
    public GridOccupancy mOccupied;
    public final Rect mOccupiedRect;
    public final int[] mPreviousReorderDirection;
    public final ArrayMap mReorderAnimators;
    public final float mReorderPreviewAnimationMagnitude;
    public final ArrayMap mShakeAnimators;
    public final ShortcutAndWidgetContainer mShortcutsAndWidgets;
    public final int[] mTempLocation;
    public final Rect mTempRect;
    public final Stack mTempRectStack;
    public GridOccupancy mTmpOccupied;
    public final int[] mTmpPoint;
    public final PointF mTmpPointF;
    public DragAndDropAccessibilityDelegate mTouchHelper;
    public static final int[] BACKGROUND_STATE_ACTIVE = {R.attr.state_active};
    public static final int[] BACKGROUND_STATE_DEFAULT = ViewGroup.EMPTY_STATE_SET;
    public static final Paint sPaint = new Paint();
    public static final Property ANIMATION_PROGRESS = new Property(Float.TYPE, "animationProgress") { // from class: com.android.launcher3.CellLayout.5
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((ReorderPreviewAnimation) obj).animationProgress);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ReorderPreviewAnimation reorderPreviewAnimation = (ReorderPreviewAnimation) obj;
            reorderPreviewAnimation.animationProgress = ((Float) obj2).floatValue();
            float f = (reorderPreviewAnimation.mode == 0 && reorderPreviewAnimation.repeating) ? 1.0f : reorderPreviewAnimation.animationProgress;
            float f2 = 1.0f - f;
            reorderPreviewAnimation.child.setReorderBounceOffset((reorderPreviewAnimation.initDeltaX * f2) + (reorderPreviewAnimation.finalDeltaX * f), (f2 * reorderPreviewAnimation.initDeltaY) + (f * reorderPreviewAnimation.finalDeltaY));
            float f3 = reorderPreviewAnimation.animationProgress;
            reorderPreviewAnimation.child.setReorderBounceScale(((1.0f - f3) * reorderPreviewAnimation.initScale) + (reorderPreviewAnimation.finalScale * f3));
        }
    };

    public final class CellInfo extends CellAndSpan {
        public final View cell;
        public final int container;
        public final int screenId;

        public CellInfo(View view, ItemInfo itemInfo) {
            this.cellX = itemInfo.cellX;
            this.cellY = itemInfo.cellY;
            this.spanX = itemInfo.spanX;
            this.spanY = itemInfo.spanY;
            this.cell = view;
            this.screenId = itemInfo.screenId;
            this.container = itemInfo.container;
        }

        @Override // com.android.launcher3.util.CellAndSpan
        public String toString() {
            StringBuilder f = a.f("Cell[view=");
            View view = this.cell;
            f.append(view == null ? "null" : view.getClass());
            f.append(", x=");
            f.append(this.cellX);
            f.append(", y=");
            f.append(this.cellY);
            f.append("]");
            return f.toString();
        }
    }

    public abstract class DelegatedCellDrawing {
        public int mDelegateCellX;
        public int mDelegateCellY;

        public abstract void drawOverItem(Canvas canvas);

        public abstract void drawUnderItem(Canvas canvas);
    }

    public class ItemConfiguration extends CellAndSpan {
        public ArrayList intersectingViews;
        public final ArrayMap map = new ArrayMap();
        public final ArrayMap savedMap = new ArrayMap();
        public final ArrayList sortedViews = new ArrayList();
        public boolean isSolution = false;

        public ItemConfiguration(AnonymousClass1 anonymousClass1) {
        }

        public void getBoundingRectForViews(ArrayList arrayList, Rect rect) {
            Iterator it = arrayList.iterator();
            boolean z = true;
            while (it.hasNext()) {
                CellAndSpan cellAndSpan = (CellAndSpan) this.map.get((View) it.next());
                if (z) {
                    int i = cellAndSpan.cellX;
                    int i2 = cellAndSpan.cellY;
                    rect.set(i, i2, cellAndSpan.spanX + i, cellAndSpan.spanY + i2);
                    z = false;
                } else {
                    int i3 = cellAndSpan.cellX;
                    int i4 = cellAndSpan.cellY;
                    rect.union(i3, i4, cellAndSpan.spanX + i3, cellAndSpan.spanY + i4);
                }
            }
        }
    }

    public class ReorderPreviewAnimation {

        /* renamed from: a, reason: collision with root package name */
        public ValueAnimator f3233a;
        public final Reorderable child;
        public float finalDeltaX;
        public float finalDeltaY;
        public final float finalScale;
        public float initDeltaX;
        public float initDeltaY;
        public float initScale;
        public final int mode;
        public boolean repeating = false;
        public float animationProgress = RecentsState.NO_OFFSET;

        public ReorderPreviewAnimation(Reorderable reorderable, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            CellLayout.this.regionToCenterPoint(i2, i3, i6, i7, CellLayout.this.mTmpPoint);
            int[] iArr = CellLayout.this.mTmpPoint;
            int i8 = iArr[0];
            int i9 = iArr[1];
            CellLayout.this.regionToCenterPoint(i4, i5, i6, i7, iArr);
            int[] iArr2 = CellLayout.this.mTmpPoint;
            int i10 = iArr2[0] - i8;
            int i11 = iArr2[1] - i9;
            this.child = reorderable;
            this.mode = i;
            this.finalDeltaX = RecentsState.NO_OFFSET;
            this.finalDeltaY = RecentsState.NO_OFFSET;
            reorderable.getReorderBounceOffset(CellLayout.this.mTmpPointF);
            PointF pointF = CellLayout.this.mTmpPointF;
            this.initDeltaX = pointF.x;
            this.initDeltaY = pointF.y;
            this.initScale = reorderable.getReorderBounceScale();
            this.finalScale = 1.0f - ((4.0f / reorderable.getView().getWidth()) * this.initScale);
            int i12 = i == 0 ? -1 : 1;
            if (i10 == i11 && i10 == 0) {
                return;
            }
            if (i11 == 0) {
                this.finalDeltaX = Math.signum(i10) * (-i12) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                return;
            }
            if (i10 == 0) {
                this.finalDeltaY = Math.signum(i11) * (-i12) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                return;
            }
            float f = i11;
            float f2 = i10;
            double atan = Math.atan(f / f2);
            float f3 = -i12;
            this.finalDeltaX = (int) (Math.abs(Math.cos(atan) * CellLayout.this.mReorderPreviewAnimationMagnitude) * Math.signum(f2) * f3);
            this.finalDeltaY = (int) (Math.abs(Math.sin(atan) * CellLayout.this.mReorderPreviewAnimationMagnitude) * Math.signum(f) * f3);
        }

        public void finishAnimation() {
            ValueAnimator valueAnimator = this.f3233a;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.initScale = 1.0f;
            this.initDeltaX = RecentsState.NO_OFFSET;
            this.initDeltaY = RecentsState.NO_OFFSET;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<ReorderPreviewAnimation, Float>) CellLayout.ANIMATION_PROGRESS, this.animationProgress, RecentsState.NO_OFFSET);
            this.f3233a = ofFloat;
            ofFloat.setInterpolator(Interpolators.DEACCEL_1_5);
            this.f3233a.setDuration(150L);
            this.f3233a.start();
        }
    }

    public class ViewCluster {
        public final int[] bottomEdge;
        public final Rect boundingRect = new Rect();
        public boolean boundingRectDirty;
        public final PositionComparator comparator;
        public final ItemConfiguration config;
        public int dirtyEdges;
        public final int[] leftEdge;
        public final int[] rightEdge;
        public final int[] topEdge;
        public final ArrayList views;

        public class PositionComparator implements Comparator {
            public int whichEdge = 0;

            public PositionComparator() {
            }

            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                CellAndSpan cellAndSpan = (CellAndSpan) ViewCluster.this.config.map.get((View) obj);
                CellAndSpan cellAndSpan2 = (CellAndSpan) ViewCluster.this.config.map.get((View) obj2);
                int i6 = this.whichEdge;
                if (i6 == 1) {
                    i = cellAndSpan2.cellX + cellAndSpan2.spanX;
                    i2 = cellAndSpan.cellX;
                    i3 = cellAndSpan.spanX;
                } else {
                    if (i6 != 2) {
                        if (i6 != 4) {
                            i4 = cellAndSpan.cellY;
                            i5 = cellAndSpan2.cellY;
                        } else {
                            i4 = cellAndSpan.cellX;
                            i5 = cellAndSpan2.cellX;
                        }
                        return i4 - i5;
                    }
                    i = cellAndSpan2.cellY + cellAndSpan2.spanY;
                    i2 = cellAndSpan.cellY;
                    i3 = cellAndSpan.spanY;
                }
                return i - (i2 + i3);
            }
        }

        public ViewCluster(ArrayList arrayList, ItemConfiguration itemConfiguration) {
            CellLayout cellLayout = CellLayout.this;
            int i = cellLayout.mCountY;
            this.leftEdge = new int[i];
            this.rightEdge = new int[i];
            int i2 = cellLayout.mCountX;
            this.topEdge = new int[i2];
            this.bottomEdge = new int[i2];
            this.comparator = new PositionComparator();
            this.views = (ArrayList) arrayList.clone();
            this.config = itemConfiguration;
            resetEdges();
        }

        public void resetEdges() {
            for (int i = 0; i < CellLayout.this.mCountX; i++) {
                this.topEdge[i] = -1;
                this.bottomEdge[i] = -1;
            }
            for (int i2 = 0; i2 < CellLayout.this.mCountY; i2++) {
                this.leftEdge[i2] = -1;
                this.rightEdge[i2] = -1;
            }
            this.dirtyEdges = 15;
            this.boundingRectDirty = true;
        }
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    public boolean addViewToCellLayout(View view, int i, int i2, LayoutParams layoutParams, boolean z) {
        int i3;
        if (view instanceof BubbleTextView) {
            ((BubbleTextView) view).setTextVisibility(this.mContainerType != 1);
        }
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        int i4 = layoutParams.cellX;
        if (i4 >= 0) {
            int i5 = this.mCountX;
            if (i4 <= i5 - 1 && (i3 = layoutParams.cellY) >= 0 && i3 <= this.mCountY - 1) {
                if (layoutParams.cellHSpan < 0) {
                    layoutParams.cellHSpan = i5;
                }
                if (layoutParams.cellVSpan < 0) {
                    layoutParams.cellVSpan = this.mCountY;
                }
                view.setId(i2);
                this.mShortcutsAndWidgets.addView(view, i, layoutParams);
                if (z) {
                    markCellsAsOccupiedForView(view);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean addViewsToTempLocation(ArrayList arrayList, Rect rect, int[] iArr, ItemConfiguration itemConfiguration) {
        boolean z;
        if (arrayList.size() == 0) {
            return true;
        }
        Rect rect2 = new Rect();
        itemConfiguration.getBoundingRectForViews(arrayList, rect2);
        Iterator it = arrayList.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration.map.get((View) it.next()), false);
        }
        GridOccupancy gridOccupancy = new GridOccupancy(rect2.width(), rect2.height());
        int i = rect2.top;
        int i2 = rect2.left;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.map.get((View) it2.next());
            gridOccupancy.markCells(cellAndSpan.cellX - i2, cellAndSpan.cellY - i, cellAndSpan.spanX, cellAndSpan.spanY, true);
        }
        GridOccupancy gridOccupancy2 = this.mTmpOccupied;
        Objects.requireNonNull(gridOccupancy2);
        gridOccupancy2.markCells(rect.left, rect.top, rect.width(), rect.height(), true);
        findNearestArea(rect2.left, rect2.top, rect2.width(), rect2.height(), iArr, this.mTmpOccupied.cells, gridOccupancy.cells, this.mTempLocation);
        int[] iArr2 = this.mTempLocation;
        if (iArr2[0] >= 0 && iArr2[1] >= 0) {
            int i3 = iArr2[0] - rect2.left;
            int i4 = iArr2[1] - rect2.top;
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                CellAndSpan cellAndSpan2 = (CellAndSpan) itemConfiguration.map.get((View) it3.next());
                cellAndSpan2.cellX += i3;
                cellAndSpan2.cellY += i4;
            }
            z = true;
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration.map.get((View) it4.next()), true);
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean animateChildToPosition(final View view, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mShortcutsAndWidgets;
        if (shortcutAndWidgetContainer.indexOfChild(view) == -1 || !(view instanceof Reorderable)) {
            return false;
        }
        final LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        final Reorderable reorderable = (Reorderable) view;
        if (this.mReorderAnimators.containsKey(layoutParams)) {
            ((Animator) this.mReorderAnimators.get(layoutParams)).cancel();
            this.mReorderAnimators.remove(layoutParams);
        }
        if (z2) {
            GridOccupancy gridOccupancy = z ? this.mOccupied : this.mTmpOccupied;
            gridOccupancy.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, false);
            gridOccupancy.markCells(i, i2, layoutParams.cellHSpan, layoutParams.cellVSpan, true);
        }
        int i5 = layoutParams.x;
        int i6 = layoutParams.y;
        layoutParams.isLockedToGrid = true;
        if (z) {
            itemInfo.cellX = i;
            layoutParams.cellX = i;
            itemInfo.cellY = i2;
            layoutParams.cellY = i2;
        } else {
            layoutParams.tmpCellX = i;
            layoutParams.tmpCellY = i2;
        }
        shortcutAndWidgetContainer.setupLp(view);
        int i7 = layoutParams.x;
        int i8 = layoutParams.y;
        layoutParams.x = i5;
        layoutParams.y = i6;
        layoutParams.isLockedToGrid = false;
        reorderable.getReorderPreviewOffset(this.mTmpPointF);
        PointF pointF = this.mTmpPointF;
        final float f = pointF.x;
        final float f2 = pointF.y;
        final float f3 = i7 - i5;
        final float f4 = i8 - i6;
        if (f3 == RecentsState.NO_OFFSET && f4 == RecentsState.NO_OFFSET && f == RecentsState.NO_OFFSET && f2 == RecentsState.NO_OFFSET) {
            layoutParams.isLockedToGrid = true;
            return true;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setDuration(i3);
        this.mReorderAnimators.put(layoutParams, ofFloat);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.launcher3.CellLayout.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f5 = 1.0f - floatValue;
                reorderable.setReorderPreviewOffset((f3 * floatValue) + (f * f5), (floatValue * f4) + (f5 * f2));
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.4
            public boolean cancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.cancelled) {
                    layoutParams.isLockedToGrid = true;
                    reorderable.setReorderPreviewOffset(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
                    view.requestLayout();
                }
                if (CellLayout.this.mReorderAnimators.containsKey(layoutParams)) {
                    CellLayout.this.mReorderAnimators.remove(layoutParams);
                }
            }
        });
        ofFloat.setStartDelay(i4);
        ofFloat.start();
        return true;
    }

    public final void animateItemsToSolution(ItemConfiguration itemConfiguration, View view, boolean z) {
        CellAndSpan cellAndSpan;
        GridOccupancy gridOccupancy = this.mTmpOccupied;
        gridOccupancy.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != view && (cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt)) != null) {
                animateChildToPosition(childAt, cellAndSpan.cellX, cellAndSpan.cellY, TaskMenuView.REVEAL_OPEN_DURATION, 0, false, false);
                gridOccupancy.markCells(cellAndSpan, true);
            }
        }
        if (z) {
            gridOccupancy.markCells((CellAndSpan) itemConfiguration, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void beginOrAdjustReorderPreviewAnimations(ItemConfiguration itemConfiguration, View view, int i) {
        ArrayList arrayList;
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i2);
            if (childAt != view) {
                CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt);
                boolean z = (i != 0 || (arrayList = itemConfiguration.intersectingViews) == null || arrayList.contains(childAt)) ? false : true;
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (cellAndSpan != null && !z && (childAt instanceof Reorderable)) {
                    final ReorderPreviewAnimation reorderPreviewAnimation = new ReorderPreviewAnimation((Reorderable) childAt, i, layoutParams.cellX, layoutParams.cellY, cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY);
                    boolean z2 = reorderPreviewAnimation.finalDeltaX == RecentsState.NO_OFFSET && reorderPreviewAnimation.finalDeltaY == RecentsState.NO_OFFSET;
                    if (CellLayout.this.mShakeAnimators.containsKey(reorderPreviewAnimation.child)) {
                        ReorderPreviewAnimation reorderPreviewAnimation2 = (ReorderPreviewAnimation) CellLayout.this.mShakeAnimators.get(reorderPreviewAnimation.child);
                        CellLayout.this.mShakeAnimators.remove(reorderPreviewAnimation.child);
                        if (z2) {
                            reorderPreviewAnimation2.finishAnimation();
                        } else {
                            ValueAnimator valueAnimator = reorderPreviewAnimation2.f3233a;
                            if (valueAnimator != null) {
                                valueAnimator.cancel();
                            }
                        }
                    }
                    if (!z2) {
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(reorderPreviewAnimation, (Property<ReorderPreviewAnimation, Float>) ANIMATION_PROGRESS, RecentsState.NO_OFFSET, 1.0f);
                        reorderPreviewAnimation.f3233a = ofFloat;
                        if (Utilities.areAnimationsEnabled(CellLayout.this.getContext())) {
                            ofFloat.setRepeatMode(2);
                            ofFloat.setRepeatCount(-1);
                        }
                        ofFloat.setDuration(reorderPreviewAnimation.mode == 0 ? 650L : 300L);
                        ofFloat.setStartDelay((int) (Math.random() * 60.0d));
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.ReorderPreviewAnimation.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                                ReorderPreviewAnimation reorderPreviewAnimation3 = ReorderPreviewAnimation.this;
                                reorderPreviewAnimation3.initScale = 1.0f;
                                reorderPreviewAnimation3.initDeltaX = RecentsState.NO_OFFSET;
                                reorderPreviewAnimation3.initDeltaY = RecentsState.NO_OFFSET;
                                reorderPreviewAnimation3.repeating = true;
                            }
                        });
                        CellLayout.this.mShakeAnimators.put(reorderPreviewAnimation.child, reorderPreviewAnimation);
                        ofFloat.start();
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public void cellToPoint(int i, int i2, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        iArr[0] = (i * this.mCellWidth) + paddingLeft;
        iArr[1] = (i2 * this.mCellHeight) + paddingTop;
    }

    public void cellToRect(int i, int i2, int i3, int i4, Rect rect) {
        int i5 = this.mCellWidth;
        int i6 = this.mCellHeight;
        int paddingLeft = (i * i5) + getPaddingLeft();
        int paddingTop = (i2 * i6) + getPaddingTop();
        rect.set(paddingLeft, paddingTop, (i3 * i5) + paddingLeft, (i4 * i6) + paddingTop);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearDragOutlines() {
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animate(2);
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
    }

    public final void commitTempPlacement() {
        int i;
        this.mTmpOccupied.copyTo(this.mOccupied);
        int idForScreen = Launcher.cast(this.mActivity).mWorkspace.getIdForScreen(this);
        boolean z = true;
        if (this.mContainerType == 1) {
            idForScreen = -1;
            i = -101;
        } else {
            i = -100;
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ItemInfo itemInfo = (ItemInfo) childAt.getTag();
            if (itemInfo != null) {
                boolean z2 = (itemInfo.cellX == layoutParams.tmpCellX && itemInfo.cellY == layoutParams.tmpCellY && itemInfo.spanX == layoutParams.cellHSpan && itemInfo.spanY == layoutParams.cellVSpan) ? false : z;
                int i3 = layoutParams.tmpCellX;
                layoutParams.cellX = i3;
                itemInfo.cellX = i3;
                int i4 = layoutParams.tmpCellY;
                layoutParams.cellY = i4;
                itemInfo.cellY = i4;
                int i5 = layoutParams.cellHSpan;
                itemInfo.spanX = i5;
                int i6 = layoutParams.cellVSpan;
                itemInfo.spanY = i6;
                if (z2) {
                    ModelWriter modelWriter = ((Launcher) this.mActivity).mModelWriter;
                    modelWriter.updateItemInfoProps(itemInfo, i, idForScreen, i3, i4);
                    itemInfo.spanX = i5;
                    itemInfo.spanY = i6;
                    Executors.MODEL_EXECUTOR.execute(modelWriter.new UpdateItemRunnable(itemInfo, new L(modelWriter, itemInfo)));
                }
            }
            i2++;
            z = true;
        }
    }

    public final void completeAndClearReorderPreviewAnimations() {
        Iterator it = this.mShakeAnimators.values().iterator();
        while (it.hasNext()) {
            ((ReorderPreviewAnimation) it.next()).finishAnimation();
        }
        this.mShakeAnimators.clear();
    }

    public final void computeDirectionVector(float f, float f2, int[] iArr) {
        double atan = Math.atan(f2 / f);
        iArr[0] = 0;
        iArr[1] = 0;
        if (Math.abs(Math.cos(atan)) > 0.5d) {
            iArr[0] = (int) Math.signum(f);
        }
        if (Math.abs(Math.sin(atan)) > 0.5d) {
            iArr[1] = (int) Math.signum(f2);
        }
    }

    public final void copyCurrentStateToSolution(ItemConfiguration itemConfiguration, boolean z) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            itemConfiguration.map.put(childAt, z ? new CellAndSpan(layoutParams.tmpCellX, layoutParams.tmpCellY, layoutParams.cellHSpan, layoutParams.cellVSpan) : new CellAndSpan(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan));
            itemConfiguration.savedMap.put(childAt, new CellAndSpan());
            itemConfiguration.sortedViews.add(childAt);
        }
    }

    public final void copySolutionToTempState(ItemConfiguration itemConfiguration, View view) {
        this.mTmpOccupied.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt);
                if (cellAndSpan != null) {
                    layoutParams.tmpCellX = cellAndSpan.cellX;
                    layoutParams.tmpCellY = cellAndSpan.cellY;
                    layoutParams.cellHSpan = cellAndSpan.spanX;
                    layoutParams.cellVSpan = cellAndSpan.spanY;
                    this.mTmpOccupied.markCells(cellAndSpan, true);
                }
            }
        }
        this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        for (int i = 0; i < this.mDelegatedCellDrawings.size(); i++) {
            DelegatedCellDrawing delegatedCellDrawing = (DelegatedCellDrawing) this.mDelegatedCellDrawings.get(i);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawOverItem(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate = this.mTouchHelper;
        if (dragAndDropAccessibilityDelegate == null || !dragAndDropAccessibilityDelegate.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray sparseArray) {
        super.dispatchRestoreInstanceState(getJailedArray(sparseArray));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray sparseArray) {
        ParcelableSparseArray jailedArray = getJailedArray(sparseArray);
        super.dispatchSaveInstanceState(jailedArray);
        sparseArray.put(com.android.systemui.shared.R.id.cell_layout_jail_id, jailedArray);
    }

    public void enableHardwareLayer(boolean z) {
        this.mShortcutsAndWidgets.setLayerType(z ? 2 : 0, sPaint);
    }

    public boolean findCellForSpan(int[] iArr, int i, int i2) {
        if (iArr == null) {
            iArr = new int[2];
        }
        return this.mOccupied.findVacantCell(iArr, i, i2);
    }

    public final ItemConfiguration findConfigurationNoShuffle(int i, int i2, int i3, int i4, int i5, int i6, ItemConfiguration itemConfiguration) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        findNearestArea(i, i2, i3, i4, i5, i6, true, iArr, iArr2);
        if (iArr[0] < 0 || iArr[1] < 0) {
            itemConfiguration.isSolution = false;
        } else {
            copyCurrentStateToSolution(itemConfiguration, false);
            itemConfiguration.cellX = iArr[0];
            itemConfiguration.cellY = iArr[1];
            itemConfiguration.spanX = iArr2[0];
            itemConfiguration.spanY = iArr2[1];
            itemConfiguration.isSolution = true;
        }
        return itemConfiguration;
    }

    public final int[] findNearestArea(int i, int i2, int i3, int i4, int i5, int i6, boolean z, int[] iArr, int[] iArr2) {
        Stack stack;
        int[] iArr3;
        Rect rect;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        char c2;
        Stack stack2;
        boolean z2;
        Rect rect2;
        int[] iArr4;
        Rect rect3;
        int i12 = i3;
        int i13 = i4;
        int i14 = i5;
        if (this.mTempRectStack.isEmpty()) {
            for (int i15 = 0; i15 < this.mCountX * this.mCountY; i15++) {
                this.mTempRectStack.push(new Rect());
            }
        }
        int i16 = (int) (i - (((i14 - 1) * this.mCellWidth) / 2.0f));
        int i17 = (int) (i2 - (((i6 - 1) * this.mCellHeight) / 2.0f));
        int[] iArr5 = iArr != null ? iArr : new int[2];
        int i18 = -1;
        Rect rect4 = new Rect(-1, -1, -1, -1);
        Stack stack3 = new Stack();
        int i19 = this.mCountX;
        int i20 = this.mCountY;
        if (i12 <= 0 || i13 <= 0 || i14 <= 0 || i6 <= 0 || i14 < i12 || i6 < i13) {
            return iArr5;
        }
        double d2 = Double.MAX_VALUE;
        int i21 = 0;
        while (i21 < i20 - (i13 - 1)) {
            int i22 = 0;
            while (i22 < i19 - (i12 - 1)) {
                if (z) {
                    for (int i23 = 0; i23 < i12; i23++) {
                        int i24 = 0;
                        while (i24 < i13) {
                            Stack stack4 = stack3;
                            if (this.mOccupied.cells[i22 + i23][i21 + i24]) {
                                i10 = i20;
                                i11 = i19;
                                iArr3 = iArr5;
                                c2 = 65535;
                                stack2 = stack4;
                                i8 = i22;
                                Rect rect5 = rect4;
                                i9 = i21;
                                rect2 = rect5;
                                break;
                            }
                            i24++;
                            stack3 = stack4;
                        }
                    }
                    stack = stack3;
                    boolean z3 = i12 >= i14;
                    boolean z4 = i13 >= i6;
                    i7 = i13;
                    boolean z5 = true;
                    while (true) {
                        if (z3 && z4) {
                            break;
                        }
                        if (!z5 || z3) {
                            iArr4 = iArr5;
                            rect3 = rect4;
                            if (!z4) {
                                for (int i25 = 0; i25 < i12; i25++) {
                                    int i26 = i21 + i7;
                                    if (i26 > i20 - 1 || this.mOccupied.cells[i22 + i25][i26]) {
                                        z4 = true;
                                    }
                                }
                                if (!z4) {
                                    i7++;
                                }
                            }
                        } else {
                            int i27 = 0;
                            while (i27 < i7) {
                                int[] iArr6 = iArr5;
                                int i28 = i22 + i12;
                                Rect rect6 = rect4;
                                if (i28 > i19 - 1 || this.mOccupied.cells[i28][i21 + i27]) {
                                    z3 = true;
                                }
                                i27++;
                                iArr5 = iArr6;
                                rect4 = rect6;
                            }
                            iArr4 = iArr5;
                            rect3 = rect4;
                            if (!z3) {
                                i12++;
                            }
                        }
                        z3 |= i12 >= i14;
                        z4 |= i7 >= i6;
                        z5 = !z5;
                        iArr5 = iArr4;
                        rect4 = rect3;
                    }
                    iArr3 = iArr5;
                    rect = rect4;
                } else {
                    stack = stack3;
                    iArr3 = iArr5;
                    rect = rect4;
                    i12 = -1;
                    i7 = -1;
                }
                i8 = i22;
                i9 = i21;
                i10 = i20;
                i11 = i19;
                Stack stack5 = stack;
                c2 = 65535;
                regionToCenterPoint(i8, i9, 1, 1, this.mTmpPoint);
                Rect rect7 = (Rect) this.mTempRectStack.pop();
                rect7.set(i8, i9, i8 + i12, i9 + i7);
                Iterator it = stack5.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        stack2 = stack5;
                        z2 = false;
                        break;
                    }
                    if (((Rect) it.next()).contains(rect7)) {
                        z2 = true;
                        stack2 = stack5;
                        break;
                    }
                }
                stack2.push(rect7);
                double hypot = Math.hypot(r8[0] - i16, r8[1] - i17);
                if (hypot > d2 || z2) {
                    rect2 = rect;
                    if (!rect7.contains(rect2)) {
                        i22 = i8 + 1;
                        i12 = i3;
                        i13 = i4;
                        i14 = i5;
                        iArr5 = iArr3;
                        stack3 = stack2;
                        i20 = i10;
                        i19 = i11;
                        int i29 = i9;
                        rect4 = rect2;
                        i21 = i29;
                    }
                } else {
                    rect2 = rect;
                }
                iArr3[0] = i8;
                iArr3[1] = i9;
                if (iArr2 != null) {
                    iArr2[0] = i12;
                    iArr2[1] = i7;
                }
                rect2.set(rect7);
                d2 = hypot;
                i22 = i8 + 1;
                i12 = i3;
                i13 = i4;
                i14 = i5;
                iArr5 = iArr3;
                stack3 = stack2;
                i20 = i10;
                i19 = i11;
                int i292 = i9;
                rect4 = rect2;
                i21 = i292;
            }
            i12 = i3;
            i13 = i4;
            i14 = i5;
            rect4 = rect4;
            i20 = i20;
            i18 = -1;
            i21++;
        }
        Stack stack6 = stack3;
        int i30 = i18;
        int[] iArr7 = iArr5;
        if (d2 == Double.MAX_VALUE) {
            iArr7[0] = i30;
            iArr7[1] = i30;
        }
        while (!stack6.isEmpty()) {
            this.mTempRectStack.push((Rect) stack6.pop());
        }
        return iArr7;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0271 A[LOOP:1: B:59:0x01ea->B:68:0x0271, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.launcher3.CellLayout.ItemConfiguration findReorderSolution(int r26, int r27, int r28, int r29, int r30, int r31, int[] r32, android.view.View r33, boolean r34, com.android.launcher3.CellLayout.ItemConfiguration r35) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.CellLayout.findReorderSolution(int, int, int, int, int, int, int[], android.view.View, boolean, com.android.launcher3.CellLayout$ItemConfiguration):com.android.launcher3.CellLayout$ItemConfiguration");
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public View getChildAt(int i, int i2) {
        return this.mShortcutsAndWidgets.getChildAt(i, i2);
    }

    public float getDistanceFromCell(float f, float f2, int[] iArr) {
        regionToCenterPoint(iArr[0], iArr[1], 1, 1, this.mTmpPoint);
        int[] iArr2 = this.mTmpPoint;
        return (float) Math.hypot(f - iArr2[0], f2 - iArr2[1]);
    }

    @SuppressLint({"StringFormatMatches"})
    public String getItemMoveDescription(int i, int i2) {
        return this.mContainerType == 1 ? getContext().getString(com.android.systemui.shared.R.string.move_to_hotseat_position, Integer.valueOf(Math.max(i, i2) + 1)) : getContext().getString(com.android.systemui.shared.R.string.move_to_empty_cell, Integer.valueOf(i2 + 1), Integer.valueOf(i + 1));
    }

    public final ParcelableSparseArray getJailedArray(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(com.android.systemui.shared.R.id.cell_layout_jail_id);
        return parcelable instanceof ParcelableSparseArray ? (ParcelableSparseArray) parcelable : new ParcelableSparseArray();
    }

    public int getUnusedHorizontalSpace() {
        return ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - (this.mCountX * this.mCellWidth);
    }

    public final void getViewsIntersectingRegion(int i, int i2, int i3, int i4, View view, Rect rect, ArrayList arrayList) {
        if (rect != null) {
            rect.set(i, i2, i + i3, i2 + i4);
        }
        arrayList.clear();
        Rect rect2 = new Rect(i, i2, i3 + i, i4 + i2);
        Rect rect3 = new Rect();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i5);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i6 = layoutParams.cellX;
                int i7 = layoutParams.cellY;
                rect3.set(i6, i7, layoutParams.cellHSpan + i6, layoutParams.cellVSpan + i7);
                if (Rect.intersects(rect2, rect3)) {
                    this.mIntersectingViews.add(childAt);
                    if (rect != null) {
                        rect.union(rect3);
                    }
                }
            }
        }
    }

    public boolean isOccupied(int i, int i2) {
        if (i >= this.mCountX || i2 >= this.mCountY) {
            throw new RuntimeException("Position exceeds the bound of this CellLayout");
        }
        return this.mOccupied.cells[i][i2];
    }

    public boolean isRegionVacant(int i, int i2, int i3, int i4) {
        return this.mOccupied.isRegionVacant(i, i2, i3, i4);
    }

    public boolean makeSpaceForHotseatMigration(boolean z) {
        int[] iArr = new int[2];
        cellToPoint(0, this.mCountY, iArr);
        ItemConfiguration itemConfiguration = new ItemConfiguration(null);
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = this.mCountX;
        if (!findReorderSolution(i, i2, i3, 1, i3, 1, new int[]{0, -1}, null, false, itemConfiguration).isSolution) {
            return false;
        }
        if (z) {
            copySolutionToTempState(itemConfiguration, null);
            commitTempPlacement();
            this.mOccupied.markCells(0, this.mCountY - 1, this.mCountX, 1, false);
        }
        return true;
    }

    public void markCellsAsOccupiedForView(View view) {
        if (view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        this.mOccupied.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, true);
    }

    public void markCellsAsUnoccupiedForView(View view) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        this.mOccupied.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        if (this.mBackground.getAlpha() > 0) {
            this.mBackground.draw(canvas);
        }
        Paint paint = this.mDragOutlinePaint;
        for (int i2 = 0; i2 < this.mDragOutlines.length; i2++) {
            float f = this.mDragOutlineAlphas[i2];
            if (f > RecentsState.NO_OFFSET) {
                Bitmap bitmap = (Bitmap) this.mDragOutlineAnims[i2].mTag;
                paint.setAlpha((int) (f + 0.5f));
                canvas.drawBitmap(bitmap, (Rect) null, this.mDragOutlines[i2], paint);
            }
        }
        for (int i3 = 0; i3 < this.mDelegatedCellDrawings.size(); i3++) {
            DelegatedCellDrawing delegatedCellDrawing = (DelegatedCellDrawing) this.mDelegatedCellDrawings.get(i3);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawUnderItem(canvas);
            canvas.restore();
        }
        PreviewBackground previewBackground = this.mFolderLeaveBehind;
        int i4 = previewBackground.mDelegateCellX;
        if (i4 < 0 || (i = previewBackground.mDelegateCellY) < 0) {
            return;
        }
        cellToPoint(i4, i, this.mTempLocation);
        canvas.save();
        int[] iArr2 = this.mTempLocation;
        canvas.translate(iArr2[0], iArr2[1]);
        PreviewBackground previewBackground2 = this.mFolderLeaveBehind;
        float f2 = previewBackground2.mScale;
        previewBackground2.mScale = 0.5f;
        previewBackground2.mPaint.setStyle(Paint.Style.FILL);
        previewBackground2.mPaint.setColor(Color.argb(160, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED));
        IconShape.sInstance.drawShape(canvas, previewBackground2.getOffsetX(), previewBackground2.getOffsetY(), previewBackground2.getScaledRadius(), previewBackground2.mPaint);
        previewBackground2.mScale = f2;
        canvas.restore();
    }

    public void onDropChild(View view) {
        if (view != null) {
            ((LayoutParams) view.getLayoutParams()).dropped = true;
            view.requestLayout();
            markCellsAsOccupiedForView(view);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mTouchHelper != null) {
            return true;
        }
        View.OnTouchListener onTouchListener = this.mInterceptTouchListener;
        return onTouchListener != null && onTouchListener.onTouch(this, motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft() + ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingRight = ((i3 - i) - getPaddingRight()) - ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        this.mBackground.getPadding(this.mTempRect);
        this.mBackground.setBounds((paddingLeft - this.mTempRect.left) - getPaddingLeft(), (paddingTop - this.mTempRect.top) - getPaddingTop(), getPaddingRight() + this.mTempRect.right + paddingRight, getPaddingBottom() + this.mTempRect.bottom + paddingBottom);
        this.mShortcutsAndWidgets.layout(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingRight = size - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = size2 - (getPaddingBottom() + getPaddingTop());
        if (this.mFixedCellWidth < 0 || this.mFixedCellHeight < 0) {
            int i4 = paddingRight / this.mCountX;
            int i5 = paddingBottom / this.mCountY;
            if (i4 != this.mCellWidth || i5 != this.mCellHeight) {
                this.mCellWidth = i4;
                this.mCellHeight = i5;
                this.mShortcutsAndWidgets.setCellDimensions(i4, i5, this.mCountX);
            }
        }
        int i6 = this.mFixedWidth;
        if (i6 > 0 && (i3 = this.mFixedHeight) > 0) {
            paddingRight = i6;
            paddingBottom = i3;
        } else if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        this.mShortcutsAndWidgets.measure(View.MeasureSpec.makeMeasureSpec(paddingRight, 1073741824), View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824));
        int measuredWidth = this.mShortcutsAndWidgets.getMeasuredWidth();
        int measuredHeight = this.mShortcutsAndWidgets.getMeasuredHeight();
        if (this.mFixedWidth <= 0 || this.mFixedHeight <= 0) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(measuredWidth, measuredHeight);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013c  */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[] performReorder(int r22, int r23, int r24, int r25, int r26, int r27, android.view.View r28, int[] r29, int[] r30, int r31) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.CellLayout.performReorder(int, int, int, int, int, int, android.view.View, int[], int[], int):int[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final boolean pushViewsToTempLocation(ArrayList arrayList, Rect rect, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        int i;
        int i2;
        boolean z;
        ?? r9;
        ?? r92;
        Iterator it;
        int i3;
        boolean z2;
        Iterator it2;
        ViewCluster viewCluster = new ViewCluster(arrayList, itemConfiguration);
        if (viewCluster.boundingRectDirty) {
            viewCluster.config.getBoundingRectForViews(viewCluster.views, viewCluster.boundingRect);
        }
        Rect rect2 = viewCluster.boundingRect;
        int i4 = 0;
        int i5 = 2;
        int i6 = 1;
        if (iArr[0] < 0) {
            i = rect2.right - rect.left;
            i2 = 1;
        } else if (iArr[0] > 0) {
            i = rect.right - rect2.left;
            i2 = 4;
        } else if (iArr[1] < 0) {
            i = rect2.bottom - rect.top;
            i2 = 2;
        } else {
            i = rect.bottom - rect2.top;
            i2 = 8;
        }
        if (i <= 0) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration.map.get((View) it3.next()), false);
        }
        for (View view2 : itemConfiguration.map.keySet()) {
            CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.savedMap.get(view2);
            CellAndSpan cellAndSpan2 = (CellAndSpan) itemConfiguration.map.get(view2);
            Objects.requireNonNull(cellAndSpan);
            cellAndSpan.cellX = cellAndSpan2.cellX;
            cellAndSpan.cellY = cellAndSpan2.cellY;
            cellAndSpan.spanX = cellAndSpan2.spanX;
            cellAndSpan.spanY = cellAndSpan2.spanY;
        }
        ViewCluster.PositionComparator positionComparator = viewCluster.comparator;
        positionComparator.whichEdge = i2;
        Collections.sort(viewCluster.config.sortedViews, positionComparator);
        boolean z3 = false;
        while (i > 0 && !z3) {
            Iterator it4 = itemConfiguration.sortedViews.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    r9 = i4;
                    break;
                }
                View view3 = (View) it4.next();
                if (!viewCluster.views.contains(view3) && view3 != view) {
                    CellAndSpan cellAndSpan3 = (CellAndSpan) viewCluster.config.map.get(view3);
                    if ((viewCluster.dirtyEdges & i2) == i2) {
                        int size = viewCluster.views.size();
                        while (i4 < size) {
                            CellAndSpan cellAndSpan4 = (CellAndSpan) viewCluster.config.map.get(viewCluster.views.get(i4));
                            if (i2 == i6) {
                                it2 = it4;
                                int i7 = cellAndSpan4.cellX;
                                for (int i8 = cellAndSpan4.cellY; i8 < cellAndSpan4.cellY + cellAndSpan4.spanY; i8++) {
                                    int[] iArr2 = viewCluster.leftEdge;
                                    if (i7 < iArr2[i8] || iArr2[i8] < 0) {
                                        viewCluster.leftEdge[i8] = i7;
                                    }
                                }
                            } else if (i2 == i5) {
                                it2 = it4;
                                int i9 = cellAndSpan4.cellY;
                                for (int i10 = cellAndSpan4.cellX; i10 < cellAndSpan4.cellX + cellAndSpan4.spanX; i10++) {
                                    int[] iArr3 = viewCluster.topEdge;
                                    if (i9 < iArr3[i10] || iArr3[i10] < 0) {
                                        viewCluster.topEdge[i10] = i9;
                                    }
                                }
                            } else if (i2 == 4) {
                                it2 = it4;
                                int i11 = cellAndSpan4.cellX + cellAndSpan4.spanX;
                                for (int i12 = cellAndSpan4.cellY; i12 < cellAndSpan4.cellY + cellAndSpan4.spanY; i12++) {
                                    int[] iArr4 = viewCluster.rightEdge;
                                    if (i11 > iArr4[i12]) {
                                        iArr4[i12] = i11;
                                    }
                                }
                            } else if (i2 != 8) {
                                it2 = it4;
                            } else {
                                int i13 = cellAndSpan4.cellY + cellAndSpan4.spanY;
                                int i14 = cellAndSpan4.cellX;
                                while (true) {
                                    it2 = it4;
                                    if (i14 < cellAndSpan4.cellX + cellAndSpan4.spanX) {
                                        int[] iArr5 = viewCluster.bottomEdge;
                                        if (i13 > iArr5[i14]) {
                                            iArr5[i14] = i13;
                                        }
                                        i14++;
                                        it4 = it2;
                                    }
                                }
                            }
                            i4++;
                            it4 = it2;
                            i5 = 2;
                            i6 = 1;
                        }
                        it = it4;
                        viewCluster.dirtyEdges &= ~i2;
                        i3 = 1;
                    } else {
                        it = it4;
                        i3 = i6;
                    }
                    if (i2 == i3) {
                        for (int i15 = cellAndSpan3.cellY; i15 < cellAndSpan3.cellY + cellAndSpan3.spanY; i15++) {
                            if (viewCluster.leftEdge[i15] == cellAndSpan3.cellX + cellAndSpan3.spanX) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                    } else if (i2 == 2) {
                        for (int i16 = cellAndSpan3.cellX; i16 < cellAndSpan3.cellX + cellAndSpan3.spanX; i16++) {
                            if (viewCluster.topEdge[i16] == cellAndSpan3.cellY + cellAndSpan3.spanY) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                    } else if (i2 != 4) {
                        if (i2 == 8) {
                            for (int i17 = cellAndSpan3.cellX; i17 < cellAndSpan3.cellX + cellAndSpan3.spanX; i17++) {
                                if (viewCluster.bottomEdge[i17] == cellAndSpan3.cellY) {
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        z2 = false;
                    } else {
                        for (int i18 = cellAndSpan3.cellY; i18 < cellAndSpan3.cellY + cellAndSpan3.spanY; i18++) {
                            if (viewCluster.rightEdge[i18] == cellAndSpan3.cellX) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                    }
                    if (!z2) {
                        r92 = false;
                    } else {
                        if (!((LayoutParams) view3.getLayoutParams()).canReorder) {
                            z3 = true;
                            r9 = false;
                            break;
                        }
                        viewCluster.views.add(view3);
                        viewCluster.resetEdges();
                        r92 = false;
                        this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration.map.get(view3), false);
                    }
                    it4 = it;
                    i4 = r92;
                    i5 = 2;
                    i6 = 1;
                }
                r92 = i4;
                it = it4;
                it4 = it;
                i4 = r92;
                i5 = 2;
                i6 = 1;
            }
            i--;
            Iterator it5 = viewCluster.views.iterator();
            while (it5.hasNext()) {
                CellAndSpan cellAndSpan5 = (CellAndSpan) viewCluster.config.map.get((View) it5.next());
                if (i2 == 1) {
                    cellAndSpan5.cellX--;
                } else if (i2 == 2) {
                    cellAndSpan5.cellY--;
                } else if (i2 != 4) {
                    cellAndSpan5.cellY++;
                } else {
                    cellAndSpan5.cellX++;
                }
            }
            viewCluster.resetEdges();
            i4 = r9;
            i5 = 2;
            i6 = 1;
        }
        boolean z4 = i4 == true ? 1 : 0;
        if (viewCluster.boundingRectDirty) {
            viewCluster.config.getBoundingRectForViews(viewCluster.views, viewCluster.boundingRect);
        }
        Rect rect3 = viewCluster.boundingRect;
        if (z3 || rect3.left < 0 || rect3.right > this.mCountX || rect3.top < 0 || rect3.bottom > this.mCountY) {
            for (View view4 : itemConfiguration.savedMap.keySet()) {
                CellAndSpan cellAndSpan6 = (CellAndSpan) itemConfiguration.map.get(view4);
                CellAndSpan cellAndSpan7 = (CellAndSpan) itemConfiguration.savedMap.get(view4);
                Objects.requireNonNull(cellAndSpan6);
                cellAndSpan6.cellX = cellAndSpan7.cellX;
                cellAndSpan6.cellY = cellAndSpan7.cellY;
                cellAndSpan6.spanX = cellAndSpan7.spanX;
                cellAndSpan6.spanY = cellAndSpan7.spanY;
            }
            z = z4;
        } else {
            z = true;
        }
        Iterator it6 = viewCluster.views.iterator();
        while (it6.hasNext()) {
            this.mTmpOccupied.markCells((CellAndSpan) itemConfiguration.map.get((View) it6.next()), true);
        }
        return z;
    }

    public void regionToCenterPoint(int i, int i2, int i3, int i4, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = this.mCellWidth;
        iArr[0] = ((i3 * i5) / 2) + (i * i5) + paddingLeft;
        int i6 = this.mCellHeight;
        iArr[1] = ((i4 * i6) / 2) + (i2 * i6) + paddingTop;
    }

    public void regionToRect(int i, int i2, int i3, int i4, Rect rect) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = this.mCellWidth;
        int i6 = (i * i5) + paddingLeft;
        int i7 = this.mCellHeight;
        int i8 = (i2 * i7) + paddingTop;
        rect.set(i6, i8, (i3 * i5) + i6, (i4 * i7) + i8);
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        this.mOccupied.clear();
        this.mShortcutsAndWidgets.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            this.mOccupied.clear();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        this.mShortcutsAndWidgets.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i3));
        }
        this.mShortcutsAndWidgets.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i3));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(i, i2);
    }

    public void revertTempState() {
        completeAndClearReorderPreviewAnimations();
        if (this.mItemPlacementDirty) {
            int childCount = this.mShortcutsAndWidgets.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.mShortcutsAndWidgets.getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY) {
                    int i2 = layoutParams.cellX;
                    layoutParams.tmpCellX = i2;
                    int i3 = layoutParams.cellY;
                    layoutParams.tmpCellY = i3;
                    animateChildToPosition(childAt, i2, i3, TaskMenuView.REVEAL_OPEN_DURATION, 0, false, false);
                }
            }
            this.mItemPlacementDirty = false;
        }
    }

    public void setGridSize(int i, int i2) {
        this.mCountX = i;
        this.mCountY = i2;
        this.mOccupied = new GridOccupancy(i, i2);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mTempRectStack.clear();
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX);
        requestLayout();
    }

    public void setIsDragOverlapping(boolean z) {
        if (this.mIsDragOverlapping != z) {
            this.mIsDragOverlapping = z;
            this.mBackground.setState(z ? BACKGROUND_STATE_ACTIVE : View.EMPTY_STATE_SET);
            invalidate();
        }
    }

    public final void setUseTempCoords(boolean z) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) this.mShortcutsAndWidgets.getChildAt(i).getLayoutParams()).useTmpCoords = z;
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mBackground;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visualizeDropLocation(com.android.launcher3.dragndrop.DraggableView r14, com.android.launcher3.graphics.DragPreviewProvider r15, int r16, int r17, int r18, int r19, boolean r20, com.android.launcher3.DropTarget.DragObject r21) {
        /*
            r13 = this;
            r6 = r13
            r0 = r15
            r7 = r16
            r8 = r17
            int[] r1 = r6.mDragCell
            r2 = 0
            r3 = r1[r2]
            r9 = 1
            r1 = r1[r9]
            if (r0 == 0) goto Lb5
            android.graphics.Bitmap r10 = r0.generatedDragOutline
            if (r10 != 0) goto L16
            goto Lb5
        L16:
            if (r7 != r3) goto L1a
            if (r8 == r1) goto Lb5
        L1a:
            int[] r0 = r6.mDragCell
            r0[r2] = r7
            r0[r9] = r8
            int r0 = r6.mDragOutlineCurrent
            com.android.launcher3.InterruptibleInOutAnimator[] r1 = r6.mDragOutlineAnims
            r1 = r1[r0]
            r11 = 2
            r1.animate(r11)
            int r0 = r0 + r9
            android.graphics.Rect[] r1 = r6.mDragOutlines
            int r2 = r1.length
            int r0 = r0 % r2
            r6.mDragOutlineCurrent = r0
            r12 = r1[r0]
            r0 = r13
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r12
            r0.cellToRect(r1, r2, r3, r4, r5)
            int r0 = r12.left
            int r1 = r12.top
            int r2 = r10.getWidth()
            int r3 = r10.getHeight()
            if (r20 == 0) goto L56
            int r2 = r12.width()
            int r3 = r12.height()
        L56:
            int r4 = r6.mCellWidth
            int r4 = r4 * r18
            int r5 = r10.getWidth()
            int r4 = r4 - r5
            int r4 = r4 / r11
            int r4 = r4 + r0
            if (r14 == 0) goto L75
            int r0 = r14.getViewType()
            if (r0 != r9) goto L75
            int r0 = r6.mCellHeight
            int r0 = r0 * r19
            int r5 = r10.getHeight()
            int r0 = r0 - r5
            int r0 = r0 / r11
        L73:
            int r1 = r1 + r0
            goto L91
        L75:
            if (r14 == 0) goto L91
            int r0 = r14.getViewType()
            if (r0 != 0) goto L91
            com.android.launcher3.ShortcutAndWidgetContainer r0 = r6.mShortcutsAndWidgets
            int r0 = r0.getCellContentHeight()
            r5 = 0
            int r11 = r6.mCellHeight
            int r11 = r11 - r0
            float r0 = (float) r11
            r11 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 / r11
            float r0 = java.lang.Math.max(r5, r0)
            int r0 = (int) r0
            goto L73
        L91:
            int r2 = r2 + r4
            int r3 = r3 + r1
            r12.set(r4, r1, r2, r3)
            r0 = 1065353216(0x3f800000, float:1.0)
            com.android.launcher3.Utilities.scaleRectAboutCenter(r12, r0)
            com.android.launcher3.InterruptibleInOutAnimator[] r0 = r6.mDragOutlineAnims
            int r1 = r6.mDragOutlineCurrent
            r2 = r0[r1]
            r2.mTag = r10
            r0 = r0[r1]
            r0.animate(r9)
            r0 = r21
            com.android.launcher3.accessibility.DragViewStateAnnouncer r0 = r0.stateAnnouncer
            if (r0 == 0) goto Lb5
            java.lang.String r1 = r13.getItemMoveDescription(r7, r8)
            r0.announce(r1)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.CellLayout.visualizeDropLocation(com.android.launcher3.dragndrop.DraggableView, com.android.launcher3.graphics.DragPreviewProvider, int, int, int, int, boolean, com.android.launcher3.DropTarget$DragObject):void");
    }

    public CellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public CellLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDropPending = false;
        this.mTmpPoint = new int[2];
        this.mTempLocation = new int[2];
        this.mTmpPointF = new PointF();
        new Rect();
        new Paint();
        this.mDelegatedCellDrawings = new ArrayList();
        this.mFolderLeaveBehind = new PreviewBackground();
        this.mFixedWidth = -1;
        this.mFixedHeight = -1;
        this.mIsDragOverlapping = false;
        Rect[] rectArr = new Rect[4];
        this.mDragOutlines = rectArr;
        this.mDragOutlineAlphas = new float[rectArr.length];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[rectArr.length];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new ArrayMap();
        this.mShakeAnimators = new ArrayMap();
        this.mItemPlacementDirty = false;
        this.mDragCell = new int[2];
        this.mDragging = false;
        this.mIntersectingViews = new ArrayList();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[2];
        this.mPreviousReorderDirection = new int[2];
        this.mTempRect = new Rect();
        this.mTempRectStack = new Stack();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CellLayout, i, 0);
        this.mContainerType = obtainStyledAttributes.getInteger(0, 0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        setClipToPadding(false);
        ActivityContext lookupContext = ActivityContext.lookupContext(context);
        this.mActivity = lookupContext;
        DeviceProfile deviceProfile = lookupContext.getDeviceProfile();
        this.mCellHeight = -1;
        this.mCellWidth = -1;
        this.mFixedCellHeight = -1;
        this.mFixedCellWidth = -1;
        InvariantDeviceProfile invariantDeviceProfile = deviceProfile.inv;
        int i2 = invariantDeviceProfile.numColumns;
        this.mCountX = i2;
        int i3 = invariantDeviceProfile.numRows;
        this.mCountY = i3;
        this.mOccupied = new GridOccupancy(i2, i3);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        int[] iArr = this.mPreviousReorderDirection;
        iArr[0] = -100;
        iArr[1] = -100;
        PreviewBackground previewBackground = this.mFolderLeaveBehind;
        previewBackground.mDelegateCellX = -1;
        previewBackground.mDelegateCellY = -1;
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = getResources();
        Drawable drawable = resources.getDrawable(com.android.systemui.shared.R.drawable.bg_celllayout);
        this.mBackground = drawable;
        drawable.setCallback(this);
        this.mBackground.setAlpha(0);
        this.mReorderPreviewAnimationMagnitude = deviceProfile.iconSizePx * 0.12f;
        this.mEaseOutInterpolator = Interpolators.DEACCEL_2_5;
        int[] iArr2 = this.mDragCell;
        iArr2[1] = -1;
        iArr2[0] = -1;
        int i4 = 0;
        while (true) {
            Rect[] rectArr2 = this.mDragOutlines;
            if (i4 >= rectArr2.length) {
                break;
            }
            rectArr2[i4] = new Rect(-1, -1, -1, -1);
            i4++;
        }
        this.mDragOutlinePaint.setColor(W.getAttrColor(context, com.android.systemui.shared.R.attr.workspaceTextColor));
        int integer = resources.getInteger(com.android.systemui.shared.R.integer.config_dragOutlineFadeTime);
        float integer2 = resources.getInteger(com.android.systemui.shared.R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.mDragOutlineAlphas, RecentsState.NO_OFFSET);
        for (final int i5 = 0; i5 < this.mDragOutlineAnims.length; i5++) {
            final InterruptibleInOutAnimator interruptibleInOutAnimator = new InterruptibleInOutAnimator(integer, RecentsState.NO_OFFSET, integer2);
            interruptibleInOutAnimator.mAnimator.setInterpolator(this.mEaseOutInterpolator);
            interruptibleInOutAnimator.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.CellLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (((Bitmap) interruptibleInOutAnimator.mTag) == null) {
                        valueAnimator.cancel();
                        return;
                    }
                    CellLayout.this.mDragOutlineAlphas[i5] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CellLayout cellLayout = CellLayout.this;
                    cellLayout.invalidate(cellLayout.mDragOutlines[i5]);
                }
            });
            interruptibleInOutAnimator.mAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.CellLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue() == RecentsState.NO_OFFSET) {
                        interruptibleInOutAnimator.mTag = null;
                    }
                }
            });
            this.mDragOutlineAnims[i5] = interruptibleInOutAnimator;
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = new ShortcutAndWidgetContainer(context, this.mContainerType);
        this.mShortcutsAndWidgets = shortcutAndWidgetContainer;
        shortcutAndWidgetContainer.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX);
        addView(this.mShortcutsAndWidgets);
    }

    public class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean canReorder;

        @ViewDebug.ExportedProperty
        public int cellHSpan;

        @ViewDebug.ExportedProperty
        public int cellVSpan;

        @ViewDebug.ExportedProperty
        public int cellX;

        @ViewDebug.ExportedProperty
        public int cellY;
        public boolean dropped;
        public boolean isLockedToGrid;
        public int tmpCellX;
        public int tmpCellY;
        public boolean useTmpCoords;

        @ViewDebug.ExportedProperty
        public int x;

        @ViewDebug.ExportedProperty
        public int y;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public void setup(int i, int i2, boolean z, int i3, float f, float f2) {
            if (this.isLockedToGrid) {
                int i4 = this.cellHSpan;
                int i5 = this.cellVSpan;
                int i6 = this.useTmpCoords ? this.tmpCellX : this.cellX;
                int i7 = this.useTmpCoords ? this.tmpCellY : this.cellY;
                if (z) {
                    i6 = (i3 - i6) - this.cellHSpan;
                }
                int i8 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
                ((ViewGroup.MarginLayoutParams) this).width = (int) ((((i4 * i) / f) - i8) - ((ViewGroup.MarginLayoutParams) this).rightMargin);
                int i9 = ((ViewGroup.MarginLayoutParams) this).topMargin;
                ((ViewGroup.MarginLayoutParams) this).height = (int) ((((i5 * i2) / f2) - i9) - ((ViewGroup.MarginLayoutParams) this).bottomMargin);
                this.x = (i6 * i) + i8;
                this.y = (i7 * i2) + i9;
            }
        }

        public String toString() {
            StringBuilder f = a.f("(");
            f.append(this.cellX);
            f.append(", ");
            f.append(this.cellY);
            f.append(")");
            return f.toString();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(-1, -1);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellX = i;
            this.cellY = i2;
            this.cellHSpan = i3;
            this.cellVSpan = i4;
        }
    }

    public final int[] findNearestArea(int i, int i2, int i3, int i4, int[] iArr, boolean[][] zArr, boolean[][] zArr2, int[] iArr2) {
        int i5;
        int[] iArr3 = iArr2 != null ? iArr2 : new int[2];
        int i6 = RecyclerView.UNDEFINED_DURATION;
        int i7 = this.mCountX;
        int i8 = this.mCountY;
        int i9 = 0;
        float f = Float.MAX_VALUE;
        while (i9 < i8 - (i4 - 1)) {
            int i10 = 0;
            while (i10 < i7 - (i3 - 1)) {
                for (int i11 = 0; i11 < i3; i11++) {
                    for (int i12 = 0; i12 < i4; i12++) {
                        if (zArr[i10 + i11][i9 + i12] && (zArr2 == null || zArr2[i11][i12])) {
                            i5 = i9;
                            break;
                        }
                    }
                }
                int i13 = i10 - i;
                int i14 = i9 - i2;
                i5 = i9;
                float hypot = (float) Math.hypot(i13, i14);
                int[] iArr4 = this.mTmpPoint;
                computeDirectionVector(i13, i14, iArr4);
                int i15 = (iArr[1] * iArr4[1]) + (iArr[0] * iArr4[0]);
                if (Float.compare(hypot, f) < 0 || (Float.compare(hypot, f) == 0 && i15 > i6)) {
                    iArr3[0] = i10;
                    iArr3[1] = i5;
                    i6 = i15;
                    f = hypot;
                }
                i10++;
                i9 = i5;
            }
            i9++;
        }
        if (f == Float.MAX_VALUE) {
            iArr3[0] = -1;
            iArr3[1] = -1;
        }
        return iArr3;
    }

    public int[] findNearestArea(int i, int i2, int i3, int i4, int[] iArr) {
        return findNearestArea(i, i2, i3, i4, i3, i4, false, iArr, null);
    }
}
