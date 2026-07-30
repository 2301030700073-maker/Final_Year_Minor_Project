package com.android.launcher3.dragndrop;

import android.graphics.Bitmap;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragDriver;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.FlingToDeleteHelper;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class DragController implements DragDriver.EventListener, TouchController {
    public DropTarget.DragObject mDragObject;
    public final FlingToDeleteHelper mFlingToDeleteHelper;
    public boolean mIsInPreDrag;
    public DropTarget mLastDropTarget;
    public int mLastTouchClassification;
    public final Launcher mLauncher;
    public DragOptions mOptions;
    public final Rect mRectTemp = new Rect();
    public final int[] mCoordinatesTemp = new int[2];
    public DragDriver mDragDriver = null;
    public final Point mMotionDown = new Point();
    public final Point mLastTouch = new Point();
    public final Point mTmpPoint = new Point();
    public final ArrayList mDropTargets = new ArrayList();
    public final ArrayList mListeners = new ArrayList();
    public int mDistanceSinceScroll = 0;

    public interface DragListener {
        void onDragEnd();

        void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions);
    }

    public DragController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mFlingToDeleteHelper = new FlingToDeleteHelper(launcher);
    }

    public void animateDragViewToOriginalPosition(final Runnable runnable, final View view, int i) {
        Runnable runnable2 = new Runnable(this) { // from class: com.android.launcher3.dragndrop.DragController.1
            @Override // java.lang.Runnable
            public void run() {
                View view2 = view;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        };
        DragView dragView = this.mDragObject.dragView;
        Point point = this.mMotionDown;
        int i2 = point.x;
        int i3 = point.y;
        int[] iArr = dragView.mTempLoc;
        iArr[0] = i2 - dragView.mRegistrationX;
        iArr[1] = i3 - dragView.mRegistrationY;
        DragLayer dragLayer = dragView.mDragLayer;
        float f = dragView.mScaleOnDrop;
        dragLayer.animateViewIntoPosition(dragView, iArr, 1.0f, f, f, 0, runnable2, i);
    }

    public final void callOnDragEnd() {
        DragOptions.PreDragCondition preDragCondition;
        if (this.mIsInPreDrag && (preDragCondition = this.mOptions.preDragCondition) != null) {
            preDragCondition.onPreDragEnd(this.mDragObject, false);
        }
        this.mIsInPreDrag = false;
        this.mOptions = null;
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragEnd();
        }
    }

    public final void callOnDragStart() {
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        if (preDragCondition != null) {
            preDragCondition.onPreDragEnd(this.mDragObject, true);
        }
        this.mIsInPreDrag = false;
        Iterator it = new ArrayList(this.mListeners).iterator();
        while (it.hasNext()) {
            ((DragListener) it.next()).onDragStart(this.mDragObject, this.mOptions);
        }
    }

    public void cancelDrag() {
        if (isDragging()) {
            DropTarget dropTarget = this.mLastDropTarget;
            if (dropTarget != null) {
                dropTarget.onDragExit(this.mDragObject);
            }
            DropTarget.DragObject dragObject = this.mDragObject;
            dragObject.deferDragViewCleanupPostAnimation = false;
            dragObject.cancelled = true;
            dragObject.dragComplete = true;
            if (!this.mIsInPreDrag) {
                dispatchDropComplete(null, false);
            }
        }
        endDrag();
    }

    public final void checkTouchMove(DropTarget dropTarget) {
        if (dropTarget != null) {
            DropTarget dropTarget2 = this.mLastDropTarget;
            if (dropTarget2 != dropTarget) {
                if (dropTarget2 != null) {
                    dropTarget2.onDragExit(this.mDragObject);
                }
                dropTarget.onDragEnter(this.mDragObject);
            }
            dropTarget.onDragOver(this.mDragObject);
        } else {
            DropTarget dropTarget3 = this.mLastDropTarget;
            if (dropTarget3 != null) {
                dropTarget3.onDragExit(this.mDragObject);
            }
        }
        this.mLastDropTarget = dropTarget;
    }

    public final void dispatchDropComplete(View view, boolean z) {
        if (!z) {
            this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, 500L);
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
        }
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.dragSource.onDropCompleted(view, dragObject, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void drop(DropTarget dropTarget, Runnable runnable) {
        int[] iArr = this.mCoordinatesTemp;
        DropTarget.DragObject dragObject = this.mDragObject;
        boolean z = false;
        dragObject.x = iArr[0];
        dragObject.y = iArr[1];
        DropTarget dropTarget2 = this.mLastDropTarget;
        if (dropTarget != dropTarget2) {
            if (dropTarget2 != null) {
                dropTarget2.onDragExit(dragObject);
            }
            this.mLastDropTarget = dropTarget;
            if (dropTarget != 0) {
                dropTarget.onDragEnter(this.mDragObject);
            }
        }
        DropTarget.DragObject dragObject2 = this.mDragObject;
        dragObject2.dragComplete = true;
        if (this.mIsInPreDrag) {
            if (dropTarget != 0) {
                dropTarget.onDragExit(dragObject2);
                return;
            }
            return;
        }
        if (dropTarget != 0) {
            dropTarget.onDragExit(dragObject2);
            if (dropTarget.acceptDrop(this.mDragObject)) {
                if (runnable != null) {
                    runnable.run();
                } else {
                    dropTarget.onDrop(this.mDragObject, this.mOptions);
                }
                z = true;
            }
        }
        View view = dropTarget instanceof View ? (View) dropTarget : null;
        this.mLauncher.getUserEventDispatcher().logDragNDrop(this.mDragObject, view);
        dispatchDropComplete(view, z);
    }

    public final void endDrag() {
        if (isDragging()) {
            this.mDragDriver = null;
            boolean z = false;
            DropTarget.DragObject dragObject = this.mDragObject;
            DragView dragView = dragObject.dragView;
            if (dragView != null) {
                z = dragObject.deferDragViewCleanupPostAnimation;
                if (z) {
                    if (this.mIsInPreDrag) {
                        animateDragViewToOriginalPosition(null, null, -1);
                    }
                } else if (dragView.getParent() != null) {
                    dragView.mDragLayer.removeView(dragView);
                }
                this.mDragObject.dragView = null;
            }
            if (!z) {
                callOnDragEnd();
            }
        }
        FlingToDeleteHelper flingToDeleteHelper = this.mFlingToDeleteHelper;
        VelocityTracker velocityTracker = flingToDeleteHelper.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            flingToDeleteHelper.mVelocityTracker = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DropTarget findDropTarget(int i, int i2, int[] iArr) {
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.x = i;
        dragObject.y = i2;
        Rect rect = this.mRectTemp;
        ArrayList arrayList = this.mDropTargets;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DropTarget dropTarget = (DropTarget) arrayList.get(size);
            if (dropTarget.isDropEnabled()) {
                dropTarget.getHitRectRelativeToDragLayer(rect);
                if (rect.contains(i, i2)) {
                    iArr[0] = i;
                    iArr[1] = i2;
                    this.mLauncher.mDragLayer.mapCoordInSelfToDescendant((View) dropTarget, iArr);
                    return dropTarget;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
        Launcher launcher = this.mLauncher;
        launcher.mDragLayer.mapCoordInSelfToDescendant((View) launcher.mWorkspace, iArr);
        return this.mLauncher.mWorkspace;
    }

    public void forceTouchMove() {
        int[] iArr = this.mCoordinatesTemp;
        Point point = this.mLastTouch;
        DropTarget findDropTarget = findDropTarget(point.x, point.y, iArr);
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.x = iArr[0];
        dragObject.y = iArr[1];
        checkTouchMove(findDropTarget);
    }

    public final Point getClampedDragLayerPos(float f, float f2) {
        this.mLauncher.mDragLayer.getLocalVisibleRect(this.mRectTemp);
        Point point = this.mTmpPoint;
        Rect rect = this.mRectTemp;
        point.x = (int) Math.max(rect.left, Math.min(f, rect.right - 1));
        Point point2 = this.mTmpPoint;
        Rect rect2 = this.mRectTemp;
        point2.y = (int) Math.max(rect2.top, Math.min(f2, rect2.bottom - 1));
        return this.mTmpPoint;
    }

    public final void handleMoveEvent(int i, int i2) {
        DragOptions.PreDragCondition preDragCondition;
        this.mDragObject.dragView.move(i, i2);
        int[] iArr = this.mCoordinatesTemp;
        DropTarget findDropTarget = findDropTarget(i, i2, iArr);
        DropTarget.DragObject dragObject = this.mDragObject;
        dragObject.x = iArr[0];
        dragObject.y = iArr[1];
        checkTouchMove(findDropTarget);
        double d2 = this.mDistanceSinceScroll;
        Point point = this.mLastTouch;
        this.mDistanceSinceScroll = (int) (Math.hypot(point.x - i, point.y - i2) + d2);
        this.mLastTouch.set(i, i2);
        int i3 = this.mDistanceSinceScroll;
        if (Utilities.ATLEAST_Q && this.mLastTouchClassification == 2) {
            i3 /= 3;
        }
        if (this.mIsInPreDrag && (preDragCondition = this.mOptions.preDragCondition) != null && preDragCondition.shouldStartDrag(i3)) {
            callOnDragStart();
        }
    }

    public boolean isDragging() {
        DragOptions dragOptions;
        return this.mDragDriver != null || ((dragOptions = this.mOptions) != null && dragOptions.isAccessibleDrag);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        DragOptions dragOptions = this.mOptions;
        if (dragOptions != null && dragOptions.isAccessibleDrag) {
            return false;
        }
        Point clampedDragLayerPos = getClampedDragLayerPos(motionEvent.getX(), motionEvent.getY());
        this.mLastTouch.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
        if (motionEvent.getAction() == 0) {
            this.mMotionDown.set(clampedDragLayerPos.x, clampedDragLayerPos.y);
        }
        if (Utilities.ATLEAST_Q) {
            this.mLastTouchClassification = motionEvent.getClassification();
        }
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        DragDriver dragDriver = this.mDragDriver;
        return dragDriver != null && dragDriver.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDriverDragEnd(float r11, float r12) {
        /*
            r10 = this;
            com.android.launcher3.dragndrop.FlingToDeleteHelper r0 = r10.mFlingToDeleteHelper
            com.android.launcher3.DropTarget$DragObject r2 = r10.mDragObject
            com.android.launcher3.dragndrop.DragOptions r6 = r10.mOptions
            android.view.VelocityTracker r1 = r0.mVelocityTracker
            r3 = 0
            if (r1 != 0) goto Ld
            goto L9a
        Ld:
            com.android.launcher3.ButtonDropTarget r1 = r0.mDropTarget
            if (r1 != 0) goto L1e
            com.android.launcher3.Launcher r1 = r0.mLauncher
            r4 = 2131296389(0x7f090085, float:1.8210693E38)
            android.view.View r1 = r1.findViewById(r4)
            com.android.launcher3.ButtonDropTarget r1 = (com.android.launcher3.ButtonDropTarget) r1
            r0.mDropTarget = r1
        L1e:
            com.android.launcher3.ButtonDropTarget r1 = r0.mDropTarget
            if (r1 == 0) goto L9a
            boolean r1 = r1.isDropEnabled()
            if (r1 != 0) goto L29
            goto L9a
        L29:
            com.android.launcher3.Launcher r1 = r0.mLauncher
            android.view.ViewConfiguration r1 = android.view.ViewConfiguration.get(r1)
            android.view.VelocityTracker r4 = r0.mVelocityTracker
            r5 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1.getScaledMaximumFlingVelocity()
            float r1 = (float) r1
            r4.computeCurrentVelocity(r5, r1)
            android.graphics.PointF r1 = new android.graphics.PointF
            android.view.VelocityTracker r4 = r0.mVelocityTracker
            float r4 = r4.getXVelocity()
            android.view.VelocityTracker r5 = r0.mVelocityTracker
            float r5 = r5.getYVelocity()
            r1.<init>(r4, r5)
            r4 = 1108344832(0x42100000, float:36.0)
            android.view.VelocityTracker r5 = r0.mVelocityTracker
            float r5 = r5.getYVelocity()
            int r7 = r0.mFlingToDeleteThresholdVelocity
            float r7 = (float) r7
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            r8 = 0
            if (r5 >= 0) goto L68
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>(r8, r7)
            float r4 = r0.getAngleBetweenVectors(r1, r4)
            goto L8a
        L68:
            com.android.launcher3.Launcher r5 = r0.mLauncher
            com.android.launcher3.DeviceProfile r5 = r5.getDeviceProfile()
            boolean r5 = r5.isVerticalBarLayout()
            if (r5 == 0) goto L8a
            android.view.VelocityTracker r5 = r0.mVelocityTracker
            float r5 = r5.getXVelocity()
            int r9 = r0.mFlingToDeleteThresholdVelocity
            float r9 = (float) r9
            int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r5 >= 0) goto L8a
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>(r7, r8)
            float r4 = r0.getAngleBetweenVectors(r1, r4)
        L8a:
            double r4 = (double) r4
            r7 = 4630122629401935872(0x4041800000000000, double:35.0)
            double r7 = java.lang.Math.toRadians(r7)
            int r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r4 > 0) goto L9a
            r4 = r1
            goto L9b
        L9a:
            r4 = r3
        L9b:
            if (r4 == 0) goto L9f
            r1 = 1
            goto La0
        L9f:
            r1 = 0
        La0:
            r6.isFlingToDelete = r1
            if (r1 != 0) goto La5
            goto Lb3
        La5:
            com.android.launcher3.util.FlingAnimation r7 = new com.android.launcher3.util.FlingAnimation
            com.android.launcher3.ButtonDropTarget r5 = r0.mDropTarget
            com.android.launcher3.Launcher r0 = r0.mLauncher
            r1 = r7
            r3 = r4
            r4 = r5
            r5 = r0
            r1.<init>(r2, r3, r4, r5, r6)
            r3 = r7
        Lb3:
            if (r3 == 0) goto Lba
            com.android.launcher3.dragndrop.FlingToDeleteHelper r11 = r10.mFlingToDeleteHelper
            com.android.launcher3.ButtonDropTarget r11 = r11.mDropTarget
            goto Lc2
        Lba:
            int r11 = (int) r11
            int r12 = (int) r12
            int[] r0 = r10.mCoordinatesTemp
            com.android.launcher3.DropTarget r11 = r10.findDropTarget(r11, r12, r0)
        Lc2:
            r10.drop(r11, r3)
            r10.endDrag()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragController.onDriverDragEnd(float, float):void");
    }

    public void onDriverDragMove(float f, float f2) {
        Point clampedDragLayerPos = getClampedDragLayerPos(f, f2);
        handleMoveEvent(clampedDragLayerPos.x, clampedDragLayerPos.y);
    }

    public DragView startDrag(Bitmap bitmap, DraggableView draggableView, int i, int i2, DragSource dragSource, final ItemInfo itemInfo, Point point, Rect rect, float f, float f2, DragOptions dragOptions) {
        int i3;
        this.mLauncher.hideKeyboard();
        AbstractFloatingView.closeOpenViews(this.mLauncher, false, 64);
        this.mOptions = dragOptions;
        Point point2 = dragOptions.simulatedDndStartPoint;
        if (point2 != null) {
            Point point3 = this.mLastTouch;
            Point point4 = this.mMotionDown;
            int i4 = point2.x;
            point4.x = i4;
            point3.x = i4;
            int i5 = point2.y;
            point4.y = i5;
            point3.y = i5;
        }
        Point point5 = this.mMotionDown;
        int i6 = point5.x - i;
        int i7 = point5.y - i2;
        int i8 = rect == null ? 0 : rect.left;
        int i9 = rect == null ? 0 : rect.top;
        this.mLastDropTarget = null;
        DropTarget.DragObject dragObject = new DropTarget.DragObject(this.mLauncher.getApplicationContext());
        this.mDragObject = dragObject;
        dragObject.originalView = draggableView;
        DragOptions.PreDragCondition preDragCondition = this.mOptions.preDragCondition;
        this.mIsInPreDrag = (preDragCondition == null || preDragCondition.shouldStartDrag(0.0d)) ? false : true;
        float dimensionPixelSize = this.mIsInPreDrag ? this.mLauncher.getResources().getDimensionPixelSize(R.dimen.pre_drag_view_scale) : RecentsState.NO_OFFSET;
        DropTarget.DragObject dragObject2 = this.mDragObject;
        final DragView dragView = new DragView(this.mLauncher, bitmap, i6, i7, f, f2, dimensionPixelSize);
        dragObject2.dragView = dragView;
        if (Utilities.ATLEAST_OREO && ((i3 = itemInfo.itemType) == 0 || i3 == 6 || i3 == 2)) {
            Executors.MODEL_EXECUTOR.mHandler.postAtFrontOfQueue(new Runnable() { // from class: com.android.launcher3.dragndrop.DragView.1
                @Override // java.lang.Runnable
                public void run() {
                    Object[] objArr = new Object[1];
                    int width = DragView.this.mBitmap.getWidth();
                    int height = DragView.this.mBitmap.getHeight();
                    Drawable fullDrawable = Utilities.getFullDrawable(DragView.this.mLauncher, itemInfo, width, height, objArr);
                    if (fullDrawable instanceof AdaptiveIconDrawable) {
                        int dimension = ((int) DragView.this.mLauncher.getResources().getDimension(R.dimen.blur_size_medium_outline)) / 2;
                        Rect rect2 = new Rect(0, 0, width, height);
                        rect2.inset(dimension, dimension);
                        Rect rect3 = new Rect(rect2);
                        DragView dragView2 = DragView.this;
                        dragView2.mBadge = Utilities.getBadge(dragView2.mLauncher, itemInfo, objArr[0]);
                        DragView.this.mBadge.setBounds(rect3);
                        DragView dragView3 = DragView.this;
                        dragView3.mDrawBitmap = true ^ (fullDrawable instanceof FolderAdaptiveIcon);
                        LauncherIcons obtain = LauncherIcons.obtain(dragView3.mLauncher);
                        try {
                            Utilities.scaleRectAboutCenter(rect2, obtain.getNormalizer().getScale(DragView.this.mDrawBitmap ? fullDrawable : new AdaptiveIconDrawable(new ColorDrawable(-16777216), null), null, null, null));
                            obtain.recycle();
                            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) fullDrawable;
                            Rect rect4 = new Rect(rect2);
                            Utilities.scaleRectAboutCenter(rect4, 0.98f);
                            adaptiveIconDrawable.setBounds(rect4);
                            final Path iconMask = adaptiveIconDrawable.getIconMask();
                            DragView.this.mTranslateX = new SpringFloatValue(DragView.this, AdaptiveIconDrawable.getExtraInsetFraction() * width);
                            DragView.this.mTranslateY = new SpringFloatValue(DragView.this, AdaptiveIconDrawable.getExtraInsetFraction() * height);
                            rect2.inset((int) (AdaptiveIconDrawable.getExtraInsetFraction() * (-rect2.width())), (int) (AdaptiveIconDrawable.getExtraInsetFraction() * (-rect2.height())));
                            DragView.this.mBgSpringDrawable = adaptiveIconDrawable.getBackground();
                            DragView dragView4 = DragView.this;
                            if (dragView4.mBgSpringDrawable == null) {
                                dragView4.mBgSpringDrawable = new ColorDrawable(0);
                            }
                            DragView.this.mBgSpringDrawable.setBounds(rect2);
                            DragView.this.mFgSpringDrawable = adaptiveIconDrawable.getForeground();
                            DragView dragView5 = DragView.this;
                            if (dragView5.mFgSpringDrawable == null) {
                                dragView5.mFgSpringDrawable = new ColorDrawable(0);
                            }
                            DragView.this.mFgSpringDrawable.setBounds(rect2);
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.launcher3.dragndrop.DragView.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    DragView.this.mScaledMaskPath = iconMask;
                                    if (itemInfo.isDisabled()) {
                                        FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(null, 0, false);
                                        fastBitmapDrawable.setIsDisabled(true);
                                        DragView.this.mBaseFilter = (ColorMatrixColorFilter) fastBitmapDrawable.getColorFilter();
                                    }
                                    DragView.this.updateColorFilter();
                                }
                            });
                        } catch (Throwable th) {
                            try {
                                obtain.recycle();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                }
            });
        }
        DropTarget.DragObject dragObject3 = this.mDragObject;
        dragObject3.dragComplete = false;
        Point point6 = this.mMotionDown;
        dragObject3.xOffset = point6.x - (i + i8);
        dragObject3.yOffset = point6.y - (i2 + i9);
        DragOptions dragOptions2 = this.mOptions;
        final FlingToDeleteHelper flingToDeleteHelper = this.mFlingToDeleteHelper;
        Objects.requireNonNull(flingToDeleteHelper);
        Consumer consumer = new Consumer() { // from class: c.a.a.H0.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FlingToDeleteHelper flingToDeleteHelper2 = FlingToDeleteHelper.this;
                MotionEvent motionEvent = (MotionEvent) obj;
                if (flingToDeleteHelper2.mVelocityTracker == null) {
                    flingToDeleteHelper2.mVelocityTracker = VelocityTracker.obtain();
                }
                flingToDeleteHelper2.mVelocityTracker.addMovement(motionEvent);
            }
        };
        this.mDragDriver = dragOptions2.simulatedDndStartPoint != null ? dragOptions2.isAccessibleDrag ? null : new DragDriver.SystemDragDriver(this, consumer) : new DragDriver.InternalDragDriver(this, consumer);
        if (!this.mOptions.isAccessibleDrag) {
            this.mDragObject.stateAnnouncer = W.isAccessibilityEnabled(dragView.getContext()) ? new DragViewStateAnnouncer(dragView) : null;
        }
        DropTarget.DragObject dragObject4 = this.mDragObject;
        dragObject4.dragSource = dragSource;
        dragObject4.dragInfo = itemInfo;
        dragObject4.originalDragInfo = itemInfo.makeShallowCopy();
        if (point != null) {
            new Point(point);
        }
        if (rect != null) {
            dragView.mDragRegion = new Rect(rect);
        }
        this.mLauncher.mDragLayer.performHapticFeedback(0);
        Point point7 = this.mLastTouch;
        int i10 = point7.x;
        int i11 = point7.y;
        dragView.mDragLayer.addView(dragView);
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(0, 0);
        ((FrameLayout.LayoutParams) layoutParams).width = dragView.mBitmap.getWidth();
        ((FrameLayout.LayoutParams) layoutParams).height = dragView.mBitmap.getHeight();
        layoutParams.customPosition = true;
        dragView.setLayoutParams(layoutParams);
        dragView.move(i10, i11);
        dragView.post(new Runnable() { // from class: com.android.launcher3.dragndrop.DragView.3
            @Override // java.lang.Runnable
            public void run() {
                DragView.this.mAnim.start();
            }
        });
        this.mDistanceSinceScroll = 0;
        if (this.mIsInPreDrag) {
            DragOptions.PreDragCondition preDragCondition2 = this.mOptions.preDragCondition;
            if (preDragCondition2 != null) {
                preDragCondition2.onPreDragStart(this.mDragObject);
            }
        } else {
            callOnDragStart();
        }
        Point point8 = this.mLastTouch;
        handleMoveEvent(point8.x, point8.y);
        this.mLauncher.getUserEventDispatcher().resetActionDurationMillis();
        if (!this.mLauncher.mTouchInProgress && dragOptions.simulatedDndStartPoint == null) {
            Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: c.a.a.H0.k
                @Override // java.lang.Runnable
                public final void run() {
                    DragController.this.cancelDrag();
                }
            });
        }
        return dragView;
    }
}
