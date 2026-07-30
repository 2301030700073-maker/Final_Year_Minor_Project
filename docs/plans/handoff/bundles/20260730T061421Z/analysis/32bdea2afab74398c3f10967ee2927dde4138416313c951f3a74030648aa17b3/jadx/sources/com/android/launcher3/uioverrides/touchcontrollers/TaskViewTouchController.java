package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController;
import com.android.launcher3.util.FlingBlockCheck;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class TaskViewTouchController extends AnimatorListenerAdapter implements TouchController, SingleAxisSwipeDetector.Listener {
    public static final float SUCCESS_TRANSITION_PROGRESS = 0.5f;
    public final BaseDraggingActivity mActivity;
    public AnimatorPlaybackController mCurrentAnimation;
    public boolean mCurrentAnimationIsGoingUp;
    public final SingleAxisSwipeDetector mDetector;
    public float mDisplacementShift;
    public float mEndDisplacement;
    public final boolean mIsRtl;
    public boolean mNoIntercept;
    public PendingAnimation mPendingAnimation;
    public float mProgressMultiplier;
    public final RecentsView mRecentsView;
    public TaskView mTaskBeingDragged;
    public final int[] mTempCords = new int[2];
    public FlingBlockCheck mFlingBlockCheck = new FlingBlockCheck();

    public TaskViewTouchController(BaseDraggingActivity baseDraggingActivity) {
        this.mActivity = baseDraggingActivity;
        this.mRecentsView = (RecentsView) baseDraggingActivity.getOverviewPanel();
        this.mIsRtl = Utilities.isRtl(baseDraggingActivity.getResources());
        this.mDetector = new SingleAxisSwipeDetector(baseDraggingActivity, this, this.mRecentsView.getPagedOrientationHandler().getOppositeSwipeDirection());
    }

    private boolean canInterceptTouch() {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController != null && animatorPlaybackController.mAnimationPlayer.isRunning() && animatorPlaybackController.mAnimationPlayer.getAnimatedFraction() > 0.95f) {
            animatorPlaybackController.mAnimationPlayer.end();
        }
        if (this.mCurrentAnimation != null) {
            return true;
        }
        if (AbstractFloatingView.getTopOpenViewWithType(this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE) != null) {
            return false;
        }
        return isRecentsInteractive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearState() {
        this.mDetector.a(BaseSwipeDetector.ScrollState.IDLE);
        SingleAxisSwipeDetector singleAxisSwipeDetector = this.mDetector;
        singleAxisSwipeDetector.mScrollDirections = 0;
        singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
        this.mTaskBeingDragged = null;
        this.mCurrentAnimation = null;
        PendingAnimation pendingAnimation = this.mPendingAnimation;
        if (pendingAnimation != null) {
            pendingAnimation.finish(false, 3);
            this.mPendingAnimation = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCurrentAnimationEnd, reason: merged with bridge method [inline-methods] */
    public void b(boolean z, int i) {
        PendingAnimation pendingAnimation = this.mPendingAnimation;
        if (pendingAnimation != null) {
            pendingAnimation.finish(z, i);
            this.mPendingAnimation = null;
        }
        clearState();
    }

    private void reInitAnimationController(boolean z) {
        if (this.mCurrentAnimation == null || this.mCurrentAnimationIsGoingUp != z) {
            int i = this.mDetector.mScrollDirections;
            if (z && (i & 1) == 0) {
                return;
            }
            if (z || (i & 2) != 0) {
                AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
                if (animatorPlaybackController != null) {
                    animatorPlaybackController.setPlayFraction(RecentsState.NO_OFFSET);
                }
                PendingAnimation pendingAnimation = this.mPendingAnimation;
                if (pendingAnimation != null) {
                    pendingAnimation.finish(false, 3);
                    this.mPendingAnimation = null;
                }
                PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
                this.mCurrentAnimationIsGoingUp = z;
                BaseDragLayer dragLayer = this.mActivity.getDragLayer();
                long secondaryDimension = pagedOrientationHandler.getSecondaryDimension(dragLayer) * 2;
                int taskDragDisplacementFactor = pagedOrientationHandler.getTaskDragDisplacementFactor(this.mIsRtl);
                int secondaryDimension2 = pagedOrientationHandler.getSecondaryDimension(this.mTaskBeingDragged);
                if (z) {
                    this.mPendingAnimation = this.mRecentsView.createTaskDismissAnimation(this.mTaskBeingDragged, true, true, secondaryDimension);
                    this.mEndDisplacement = -secondaryDimension2;
                } else {
                    this.mPendingAnimation = this.mRecentsView.createTaskLaunchAnimation(this.mTaskBeingDragged, secondaryDimension, Interpolators.ZOOM_IN);
                    TaskThumbnailView thumbnail = this.mTaskBeingDragged.getThumbnail();
                    this.mTempCords[1] = pagedOrientationHandler.getSecondaryDimension(thumbnail);
                    dragLayer.getDescendantCoordRelativeToSelf((View) thumbnail, this.mTempCords);
                    this.mEndDisplacement = r3 - this.mTempCords[1];
                }
                this.mEndDisplacement *= taskDragDisplacementFactor;
                AnimatorPlaybackController animatorPlaybackController2 = this.mCurrentAnimation;
                if (animatorPlaybackController2 != null) {
                    animatorPlaybackController2.mOnCancelRunnable = null;
                }
                AnimatorPlaybackController createPlaybackController = this.mPendingAnimation.createPlaybackController();
                createPlaybackController.mOnCancelRunnable = new Runnable() { // from class: c.a.a.Z0.m.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskViewTouchController.this.clearState();
                    }
                };
                this.mCurrentAnimation = createPlaybackController;
                onUserControlledAnimationCreated(createPlaybackController);
                this.mCurrentAnimation.mAnim.addListener(this);
                this.mCurrentAnimation.dispatchOnStart();
                this.mProgressMultiplier = 1.0f / this.mEndDisplacement;
            }
        }
    }

    public /* synthetic */ void c(ValueAnimator valueAnimator) {
        if (this.mRecentsView.getCurrentPage() != 0 || this.mCurrentAnimationIsGoingUp) {
            this.mRecentsView.redrawLiveTile(true);
        }
    }

    public abstract boolean isRecentsInteractive();

    public abstract boolean isRecentsModal();

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null || animator != animatorPlaybackController.mAnim) {
            return;
        }
        clearState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
    
        r1 = 0;
     */
    @Override // com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onControllerInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            int r0 = r8.getAction()
            r1 = 3
            r2 = 1
            if (r0 == r2) goto Le
            int r0 = r8.getAction()
            if (r0 != r1) goto L15
        Le:
            com.android.launcher3.anim.AnimatorPlaybackController r0 = r7.mCurrentAnimation
            if (r0 != 0) goto L15
            r7.clearState()
        L15:
            int r0 = r8.getAction()
            r3 = 0
            if (r0 != 0) goto L83
            boolean r0 = r7.canInterceptTouch()
            r0 = r0 ^ r2
            r7.mNoIntercept = r0
            if (r0 == 0) goto L26
            return r3
        L26:
            com.android.launcher3.anim.AnimatorPlaybackController r0 = r7.mCurrentAnimation
            if (r0 == 0) goto L2b
            goto L7d
        L2b:
            r0 = 0
            r7.mTaskBeingDragged = r0
            r4 = r3
        L2f:
            com.android.quickstep.views.RecentsView r5 = r7.mRecentsView
            int r5 = r5.getTaskViewCount()
            if (r4 >= r5) goto L74
            com.android.quickstep.views.RecentsView r5 = r7.mRecentsView
            com.android.quickstep.views.TaskView r5 = r5.getTaskViewAt(r4)
            com.android.quickstep.views.RecentsView r6 = r7.mRecentsView
            boolean r6 = r6.isTaskViewVisible(r5)
            if (r6 == 0) goto L71
            com.android.launcher3.BaseDraggingActivity r6 = r7.mActivity
            com.android.launcher3.views.BaseDragLayer r6 = r6.getDragLayer()
            boolean r6 = r6.isEventOverView(r5, r8)
            if (r6 == 0) goto L71
            boolean r6 = r7.isRecentsModal()
            if (r6 == 0) goto L5a
            r7.mTaskBeingDragged = r0
            goto L74
        L5a:
            r7.mTaskBeingDragged = r5
            com.android.launcher3.BaseDraggingActivity r0 = r7.mActivity
            com.android.quickstep.SysUINavigationMode$Mode r0 = com.android.quickstep.SysUINavigationMode.getMode(r0)
            boolean r0 = r0.hasGestures
            if (r0 != 0) goto L68
        L66:
            r1 = r2
            goto L75
        L68:
            com.android.quickstep.views.RecentsView r0 = r7.mRecentsView
            int r0 = r0.getCurrentPage()
            if (r4 != r0) goto L66
            goto L75
        L71:
            int r4 = r4 + 1
            goto L2f
        L74:
            r1 = r3
        L75:
            com.android.quickstep.views.TaskView r0 = r7.mTaskBeingDragged
            if (r0 != 0) goto L7c
            r7.mNoIntercept = r2
            return r3
        L7c:
            r2 = r3
        L7d:
            com.android.launcher3.touch.SingleAxisSwipeDetector r0 = r7.mDetector
            r0.mScrollDirections = r1
            r0.mIgnoreSlopWhenSettling = r2
        L83:
            boolean r0 = r7.mNoIntercept
            if (r0 == 0) goto L88
            return r3
        L88:
            r7.onControllerTouchEvent(r8)
            com.android.launcher3.touch.SingleAxisSwipeDetector r7 = r7.mDetector
            boolean r7 = r7.isDraggingOrSettling()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController.onControllerInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f) {
        PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
        float f2 = f + this.mDisplacementShift;
        boolean isGoingUp = f2 == RecentsState.NO_OFFSET ? this.mCurrentAnimationIsGoingUp : pagedOrientationHandler.isGoingUp(f2, this.mIsRtl);
        if (isGoingUp != this.mCurrentAnimationIsGoingUp) {
            reInitAnimationController(isGoingUp);
            this.mFlingBlockCheck.blockFling();
        } else {
            FlingBlockCheck flingBlockCheck = this.mFlingBlockCheck;
            Objects.requireNonNull(flingBlockCheck);
            if (SystemClock.uptimeMillis() - flingBlockCheck.mBlockFlingTime >= 200) {
                flingBlockCheck.mBlockFling = false;
            }
        }
        this.mCurrentAnimation.setPlayFraction(Utilities.boundToRange(f2 * this.mProgressMultiplier, RecentsState.NO_OFFSET, 1.0f));
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && (this.mRecentsView.getCurrentPage() != 0 || isGoingUp)) {
            this.mRecentsView.redrawLiveTile(true);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        if (r6.isGoingUp(r22, r21.mIsRtl) == r21.mCurrentAnimationIsGoingUp) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x003b, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0039, code lost:
    
        if (r7 > 0.5f) goto L17;
     */
    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDragEnd(float r22) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController.onDragEnd(float):void");
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        PagedOrientationHandler pagedOrientationHandler = this.mRecentsView.getPagedOrientationHandler();
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            reInitAnimationController(pagedOrientationHandler.isGoingUp(f, this.mIsRtl));
            this.mDisplacementShift = RecentsState.NO_OFFSET;
        } else {
            this.mDisplacementShift = animatorPlaybackController.mCurrentFraction / this.mProgressMultiplier;
            animatorPlaybackController.pause();
        }
        FlingBlockCheck flingBlockCheck = this.mFlingBlockCheck;
        flingBlockCheck.mBlockFling = false;
        flingBlockCheck.mBlockFlingTime = 0L;
    }

    public void onUserControlledAnimationCreated(AnimatorPlaybackController animatorPlaybackController) {
    }
}
