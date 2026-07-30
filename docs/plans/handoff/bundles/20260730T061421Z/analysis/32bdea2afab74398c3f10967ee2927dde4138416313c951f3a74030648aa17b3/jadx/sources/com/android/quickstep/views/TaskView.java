package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import b.l.W;
import c.a.a.E0.k;
import c.a.c.a.a;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ViewPool;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.TaskIconCache;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.TaskCornerRadius;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class TaskView extends FrameLayout implements RecentsView.PageCallbacks, ViewPool.Reusable {
    public static final long DIM_ANIM_DURATION = 700;
    public static final float EDGE_SCALE_DOWN_FACTOR = 0.03f;
    public static final int INDEX_DIGITAL_WELLBEING_TOAST = 0;
    public static final float MAX_PAGE_SCRIM_ALPHA = 0.4f;
    public static final long SCALE_ICON_DURATION = 120;
    public final BaseDraggingActivity mActivity;
    public View mContextualChip;
    public View mContextualChipWrapper;
    public final FullscreenDrawParams mCurrentFullscreenParams;
    public float mCurveScale;
    public final DigitalWellBeingToast mDigitalWellBeingToast;
    public float mFocusTransitionProgress;
    public float mFooterAlpha;
    public float mFooterVerticalOffset;
    public final FooterWrapper[] mFooters;
    public float mFullscreenProgress;
    public ObjectAnimator mIconAndDimAnimator;
    public TaskIconCache.IconLoadRequest mIconLoadRequest;
    public float mIconScaleAnimStartProgress;
    public IconView mIconView;
    public TaskMenuView mMenuView;
    public float mModalness;
    public final TaskOutlineProvider mOutlineProvider;
    public boolean mShowScreenshot;
    public TaskThumbnailView mSnapshotView;
    public float mStableAlpha;
    public int mStackHeight;
    public Task mTask;
    public final View.OnAttachStateChangeListener mTaskMenuStateListener;
    public TaskThumbnailCache.ThumbnailLoadRequest mThumbnailLoadRequest;
    public static final String TAG = TaskView.class.getSimpleName();
    public static final TimeInterpolator CURVE_INTERPOLATOR = new TimeInterpolator() { // from class: c.a.b.d2.J
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return TaskView.p(f);
        }
    };
    public static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());
    public static final FloatProperty FOCUS_TRANSITION = new FloatProperty("focusTransition") { // from class: com.android.quickstep.views.TaskView.1
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mFocusTransitionProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f) {
            taskView.setIconAndDimTransitionProgress(f, false);
        }
    };

    public class FooterWrapper extends ViewOutlineProvider {
        public final ViewOutlineProvider mDelegate;
        public final int mExpectedHeight;
        public final ViewOutlineProvider mOldOutlineProvider;
        public final int mOldPaddingBottom;
        public final View mView;
        public int mAnimationOffset = 0;
        public int mEntryAnimationOffset = 0;

        public FooterWrapper(View view) {
            this.mView = view;
            ViewOutlineProvider outlineProvider = view.getOutlineProvider();
            this.mOldOutlineProvider = outlineProvider;
            this.mDelegate = outlineProvider == null ? ViewOutlineProvider.BACKGROUND : outlineProvider;
            this.mExpectedHeight = TaskView.this.getExpectedViewHeight(view);
            this.mOldPaddingBottom = view.getPaddingBottom();
            if (this.mOldOutlineProvider != null) {
                view.setOutlineProvider(this);
                view.setClipToOutline(true);
            }
        }

        public /* synthetic */ void a(ValueAnimator valueAnimator) {
            this.mEntryAnimationOffset = Math.round((1.0f - valueAnimator.getAnimatedFraction()) * ((this.mView.getPaddingBottom() + this.mExpectedHeight) - this.mOldPaddingBottom));
            updateFooterOffset();
        }

        public void animateEntry() {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.b.d2.M
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TaskView.FooterWrapper.this.a(valueAnimator);
                }
            });
            ofFloat.setDuration(100L);
            ofFloat.start();
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            this.mDelegate.getOutline(view, outline);
            outline.offset(0, (-this.mAnimationOffset) - this.mEntryAnimationOffset);
        }

        public void release() {
            this.mView.setOutlineProvider(this.mOldOutlineProvider);
            setVerticalShift(0);
        }

        public void setVerticalShift(int i) {
            View view = this.mView;
            view.setPadding(view.getPaddingLeft(), this.mView.getPaddingTop(), this.mView.getPaddingRight(), this.mOldPaddingBottom + i);
        }

        public void updateFooterOffset() {
            float f = TaskView.this.mFooterVerticalOffset;
            float f2 = TaskView.this.mModalness;
            float boundToRange = Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f);
            float boundToRange2 = Utilities.boundToRange(f2, RecentsState.NO_OFFSET, 1.0f);
            this.mAnimationOffset = Math.round(TaskView.this.mStackHeight * ((boundToRange + boundToRange2) - (boundToRange * boundToRange2)));
            this.mView.setTranslationY(r0 + this.mEntryAnimationOffset + TaskView.this.mCurrentFullscreenParams.mCurrentDrawnInsets.bottom + TaskView.this.mCurrentFullscreenParams.mCurrentDrawnInsets.top);
            this.mView.invalidateOutline();
        }
    }

    public class FullscreenDrawParams {
        public final float mCornerRadius;
        public float mCurrentDrawnCornerRadius;
        public RectF mCurrentDrawnInsets = new RectF();
        public float mScale = 1.0f;
        public final float mWindowCornerRadius;

        public FullscreenDrawParams(Context context) {
            this.mCornerRadius = TaskCornerRadius.get(context);
            this.mWindowCornerRadius = QuickStepContract.getWindowCornerRadius(context.getResources());
            this.mCurrentDrawnCornerRadius = this.mCornerRadius;
        }

        public void setProgress(float f, float f2, int i, DeviceProfile deviceProfile, TaskThumbnailView.PreviewPositionHelper previewPositionHelper) {
            RectF insetsToDrawInFullscreen = previewPositionHelper.getInsetsToDrawInFullscreen();
            float f3 = insetsToDrawInFullscreen.left * f;
            float f4 = insetsToDrawInFullscreen.right * f;
            this.mCurrentDrawnInsets.set(f3, insetsToDrawInFullscreen.top * f, f4, insetsToDrawInFullscreen.bottom * f);
            this.mCurrentDrawnCornerRadius = Utilities.mapRange(f, this.mCornerRadius, deviceProfile.isMultiWindowMode ? RecentsState.NO_OFFSET : this.mWindowCornerRadius) / f2;
            if (i > 0) {
                float f5 = i;
                this.mScale = f5 / ((f3 + f5) + f4);
            }
        }
    }

    public final class TaskOutlineProvider extends ViewOutlineProvider {
        public FullscreenDrawParams mFullscreenParams;
        public final int mMarginTop;

        public TaskOutlineProvider(Context context, FullscreenDrawParams fullscreenDrawParams) {
            this.mMarginTop = context.getResources().getDimensionPixelSize(R.dimen.task_thumbnail_top_margin);
            this.mFullscreenParams = fullscreenDrawParams;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            FullscreenDrawParams fullscreenDrawParams = this.mFullscreenParams;
            RectF rectF = fullscreenDrawParams.mCurrentDrawnInsets;
            float f = fullscreenDrawParams.mScale;
            outline.setRoundRect(0, (int) (this.mMarginTop * f), (int) ((rectF.left + view.getWidth() + rectF.right) * f), (int) ((rectF.top + view.getHeight() + rectF.bottom) * f), this.mFullscreenParams.mCurrentDrawnCornerRadius);
        }

        public void setFullscreenParams(FullscreenDrawParams fullscreenDrawParams) {
            this.mFullscreenParams = fullscreenDrawParams;
        }
    }

    public TaskView(Context context) {
        this(context, null);
    }

    private void cancelPendingLoadTasks() {
        TaskThumbnailCache.ThumbnailLoadRequest thumbnailLoadRequest = this.mThumbnailLoadRequest;
        if (thumbnailLoadRequest != null) {
            thumbnailLoadRequest.cancel();
            this.mThumbnailLoadRequest = null;
        }
        TaskIconCache.IconLoadRequest iconLoadRequest = this.mIconLoadRequest;
        if (iconLoadRequest != null) {
            iconLoadRequest.cancel();
            this.mIconLoadRequest = null;
        }
    }

    public static float getCurveScaleForCurveInterpolation(float f) {
        return 1.0f - (f * 0.03f);
    }

    public static float getCurveScaleForInterpolation(float f) {
        return getCurveScaleForCurveInterpolation(CURVE_INTERPOLATOR.getInterpolation(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getExpectedViewHeight(View view) {
        int i = view.getLayoutParams().height;
        if (i > 0) {
            return i;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(1073741823, RecyclerView.UNDEFINED_DURATION);
        view.measure(makeMeasureSpec, makeMeasureSpec);
        return view.getMeasuredHeight();
    }

    public static /* synthetic */ void h(final Consumer consumer, Handler handler, Boolean bool) {
        if (consumer == null || bool.booleanValue()) {
            return;
        }
        handler.post(new Runnable() { // from class: c.a.b.d2.O
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(Boolean.FALSE);
            }
        });
    }

    public static /* synthetic */ void j(final Consumer consumer, Handler handler) {
        if (consumer != null) {
            handler.post(new Runnable() { // from class: c.a.b.d2.G
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(Boolean.TRUE);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: launchTaskInternal, reason: merged with bridge method [inline-methods] */
    public void e(boolean z, boolean z2, final Consumer consumer, final Handler handler) {
        Task task = this.mTask;
        if (task != null) {
            W.recordEvent("Main", "startActivityFromRecentsAsync", task);
            if (z) {
                ActivityOptions activityLaunchOptions = this.mActivity.getActivityLaunchOptions(this);
                if (z2) {
                    ActivityOptionsCompat.setFreezeRecentTasksList(activityLaunchOptions);
                }
                ActivityManagerWrapper.getInstance().startActivityFromRecentsAsync(this.mTask.key, activityLaunchOptions, consumer, handler);
            } else {
                ActivityOptions makeCustomAnimation = ActivityOptionsCompat.makeCustomAnimation(getContext(), 0, 0, new Runnable() { // from class: c.a.b.d2.I
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskView.j(consumer, handler);
                    }
                }, handler);
                if (z2) {
                    ActivityOptionsCompat.setFreezeRecentTasksList(makeCustomAnimation);
                }
                ActivityManagerWrapper.getInstance().startActivityFromRecentsAsync(this.mTask.key, makeCustomAnimation, new Consumer() { // from class: c.a.b.d2.U
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TaskView.h(consumer, handler, (Boolean) obj);
                    }
                }, handler);
            }
            getRecentsView().onTaskLaunched(this.mTask);
        }
    }

    public static /* synthetic */ float p(float f) {
        return (((float) (-Math.cos(f * 3.141592653589793d))) / 2.0f) + 0.5f;
    }

    private void setCurveScale(float f) {
        this.mCurveScale = f;
        setScaleX(f);
        setScaleY(this.mCurveScale);
    }

    private void setIcon(Drawable drawable) {
        if (drawable != null) {
            this.mIconView.setDrawable(drawable);
            this.mIconView.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.Q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TaskView.this.n(view);
                }
            });
            this.mIconView.setOnLongClickListener(new View.OnLongClickListener() { // from class: c.a.b.d2.X
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return TaskView.this.o(view);
                }
            });
        } else {
            this.mIconView.setDrawable(null);
            this.mIconView.setOnClickListener(null);
            this.mIconView.setOnLongClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconAndDimTransitionProgress(float f, boolean z) {
        if (z) {
            f = 1.0f - f;
        }
        this.mFocusTransitionProgress = f;
        this.mSnapshotView.setDimAlphaMultipler(f);
        float interpolation = ((k) Interpolators.clampToProgress(Interpolators.FAST_OUT_SLOW_IN, z ? 0.82857144f : RecentsState.NO_OFFSET, z ? 1.0f : 0.17142858f)).getInterpolation(f);
        this.mIconView.setScaleX(interpolation);
        this.mIconView.setScaleY(interpolation);
        updateFooterVerticalOffset(1.0f - interpolation);
    }

    private boolean showTaskMenu(int i) {
        if (getRecentsView().isClearAllHidden()) {
            this.mMenuView = TaskMenuView.showForTask(this);
            this.mActivity.getStatsLogManager().logger().withItemInfo(getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS);
            UserEventDispatcher.newInstance(getContext()).logActionOnItem(i, 0, 11);
            TaskMenuView taskMenuView = this.mMenuView;
            if (taskMenuView != null) {
                taskMenuView.addOnAttachStateChangeListener(this.mTaskMenuStateListener);
            }
        } else {
            getRecentsView().snapToPage(getRecentsView().indexOfChild(this));
        }
        return this.mMenuView != null;
    }

    private void updateFooterVerticalOffset(float f) {
        this.mFooterVerticalOffset = f;
        for (FooterWrapper footerWrapper : this.mFooters) {
            if (footerWrapper != null) {
                footerWrapper.updateFooterOffset();
            }
        }
    }

    public /* synthetic */ void a(PendingAnimation pendingAnimation) {
        pendingAnimation.finish(true, 3);
        launchTask(false);
    }

    public void animateIconScaleAndDimIntoView() {
        ObjectAnimator objectAnimator = this.mIconAndDimAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, FOCUS_TRANSITION, 1.0f);
        this.mIconAndDimAnimator = ofFloat;
        ofFloat.setCurrentFraction(this.mIconScaleAnimStartProgress);
        this.mIconAndDimAnimator.setDuration(700L).setInterpolator(Interpolators.LINEAR);
        this.mIconAndDimAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.TaskView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TaskView.this.mIconAndDimAnimator = null;
            }
        });
        this.mIconAndDimAnimator.start();
    }

    public /* synthetic */ void b(Boolean bool) {
        if (bool.booleanValue()) {
            return;
        }
        notifyTaskLaunchFailed(TAG);
    }

    public void bind(Task task, RecentsOrientedState recentsOrientedState) {
        cancelPendingLoadTasks();
        this.mTask = task;
        this.mSnapshotView.bind(task);
        setOrientationState(recentsOrientedState);
    }

    public View clearContextualChip() {
        View view = this.mContextualChipWrapper;
        if (view != null) {
            removeView(view);
        }
        View view2 = this.mContextualChipWrapper;
        this.mContextualChipWrapper = null;
        this.mContextualChip = null;
        return view2;
    }

    public AnimatorPlaybackController createLaunchAnimationForRunningTask() {
        final PendingAnimation createTaskLaunchAnimation = getRecentsView().createTaskLaunchAnimation(this, 336L, Interpolators.TOUCH_RESPONSE_INTERPOLATOR);
        AnimatorPlaybackController createPlaybackController = createTaskLaunchAnimation.createPlaybackController();
        createPlaybackController.mEndAction = new Runnable() { // from class: c.a.b.d2.S
            @Override // java.lang.Runnable
            public final void run() {
                TaskView.this.a(createTaskLaunchAnimation);
            }
        };
        return createPlaybackController;
    }

    public /* synthetic */ void f(RecentsView recentsView, final boolean z, final boolean z2, final Consumer consumer, final Handler handler) {
        recentsView.finishRecentsAnimation(true, new Runnable() { // from class: c.a.b.d2.N
            @Override // java.lang.Runnable
            public final void run() {
                TaskView.this.e(z, z2, consumer, handler);
            }
        });
    }

    public float getCurveScale() {
        return this.mCurveScale;
    }

    public DigitalWellBeingToast getDigitalWellBeingToast() {
        return this.mDigitalWellBeingToast;
    }

    public IconView getIconView() {
        return this.mIconView;
    }

    public WorkspaceItemInfo getItemInfo() {
        ComponentKey launchComponentKeyForTask = TaskUtils.getLaunchComponentKeyForTask(getTask().key);
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.itemType = 7;
        workspaceItemInfo.container = -109;
        workspaceItemInfo.user = launchComponentKeyForTask.user;
        workspaceItemInfo.intent = new Intent().setComponent(launchComponentKeyForTask.componentName);
        workspaceItemInfo.title = TaskUtils.getTitle(getContext(), getTask());
        workspaceItemInfo.screenId = getRecentsView().indexOfChild(this);
        return workspaceItemInfo;
    }

    public TaskMenuView getMenuView() {
        return this.mMenuView;
    }

    public PagedOrientationHandler getPagedOrientationHandler() {
        return getRecentsView().mOrientationState.getOrientationHandler();
    }

    public RecentsView getRecentsView() {
        return (RecentsView) getParent();
    }

    public Task getTask() {
        return this.mTask;
    }

    public float getTaskCornerRadius() {
        return TaskCornerRadius.get(this.mActivity);
    }

    public TaskThumbnailView getThumbnail() {
        return this.mSnapshotView;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isRunningTask() {
        return getRecentsView() != null && this == getRecentsView().getRunningTaskView();
    }

    public /* synthetic */ void k(View view) {
        if (getTask() == null) {
            return;
        }
        if (!FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            launchTask(true);
        } else if (isRunningTask()) {
            createLaunchAnimationForRunningTask().start();
        } else {
            launchTask(true);
        }
        this.mActivity.getUserEventDispatcher().logTaskLaunchOrDismiss(0, 0, getRecentsView().indexOfChild(this), TaskUtils.getLaunchComponentKeyForTask(getTask().key));
        this.mActivity.getStatsLogManager().logger().withItemInfo(getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_TAP);
    }

    public /* synthetic */ void l(ThumbnailData thumbnailData) {
        this.mSnapshotView.setThumbnail(this.mTask, thumbnailData);
    }

    public void launchTask(boolean z) {
        launchTask(z, false);
    }

    public /* synthetic */ void m(Task task) {
        setIcon(task.icon);
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && isRunningTask()) {
            getRecentsView().updateLiveTileIcon(task.icon);
        }
        this.mDigitalWellBeingToast.initialize(this.mTask);
    }

    public /* synthetic */ void n(View view) {
        showTaskMenu(0);
    }

    public void notifyTaskLaunchFailed(String str) {
        String str2 = "Failed to launch task";
        if (this.mTask != null) {
            StringBuilder g = a.g("Failed to launch task", " (task=");
            g.append(this.mTask.key.baseIntent);
            g.append(" userId=");
            g.append(this.mTask.key.userId);
            g.append(")");
            str2 = g.toString();
        }
        Log.w(str, str2);
        Toast.makeText(getContext(), R.string.activity_not_available, 0).show();
    }

    public /* synthetic */ boolean o(View view) {
        requestDisallowInterceptTouchEvent(true);
        return showTaskMenu(1);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSnapshotView = (TaskThumbnailView) findViewById(R.id.snapshot);
        this.mIconView = (IconView) findViewById(R.id.icon);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.accessibility_close, getContext().getText(R.string.accessibility_close)));
        Context context = getContext();
        Iterator it = TaskOverlayFactory.getEnabledShortcuts(this).iterator();
        while (it.hasNext()) {
            accessibilityNodeInfo.addAction(((SystemShortcut) it.next()).createAccessibilityAction(context));
        }
        if (this.mDigitalWellBeingToast.hasLimit()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.accessibility_app_usage_settings, getContext().getText(R.string.accessibility_app_usage_settings)));
        }
        RecentsView recentsView = getRecentsView();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(0, 1, (recentsView.getTaskViewCount() - recentsView.indexOfChild(this)) - 1, 1, false));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setPivotX((i3 - i) * 0.5f);
        setPivotY((this.mSnapshotView.getHeight() * 0.5f) + this.mSnapshotView.getTop());
        if (Utilities.ATLEAST_Q) {
            ((Rect) SYSTEM_GESTURE_EXCLUSION_RECT.get(0)).set(0, 0, getWidth(), getHeight());
            setSystemGestureExclusionRects(SYSTEM_GESTURE_EXCLUSION_RECT);
        }
        this.mStackHeight = 0;
        for (FooterWrapper footerWrapper : this.mFooters) {
            if (footerWrapper != null) {
                this.mStackHeight = footerWrapper.mView.getHeight() + this.mStackHeight;
            }
        }
        updateFooterVerticalOffset(RecentsState.NO_OFFSET);
    }

    @Override // com.android.quickstep.views.RecentsView.PageCallbacks
    public void onPageScroll(RecentsView.ScrollState scrollState) {
        if (this.mModalness > RecentsState.NO_OFFSET) {
            return;
        }
        float interpolation = CURVE_INTERPOLATOR.getInterpolation(scrollState.linearInterpolation);
        float curveScaleForCurveInterpolation = getCurveScaleForCurveInterpolation(interpolation);
        this.mSnapshotView.setDimAlpha(interpolation * 0.4f);
        setCurveScale(curveScaleForCurveInterpolation);
        this.mFooterAlpha = Utilities.boundToRange(1.0f - (scrollState.linearInterpolation * 2.0f), RecentsState.NO_OFFSET, 1.0f);
        for (FooterWrapper footerWrapper : this.mFooters) {
            if (footerWrapper != null) {
                footerWrapper.mView.setAlpha(this.mFooterAlpha);
            }
        }
        if (this.mMenuView != null) {
            PagedOrientationHandler pagedOrientationHandler = getPagedOrientationHandler();
            RecentsView recentsView = getRecentsView();
            this.mMenuView.setPosition(getX() - recentsView.getScrollX(), getY() - recentsView.getScrollY(), pagedOrientationHandler);
            this.mMenuView.setScaleX(getScaleX());
            this.mMenuView.setScaleY(getScaleY());
        }
    }

    @Override // com.android.launcher3.util.ViewPool.Reusable
    public void onRecycle() {
        resetViewTransforms();
        this.mSnapshotView.setThumbnail(this.mTask, null);
        setOverlayEnabled(false);
        onTaskListVisibilityChanged(false);
    }

    public void onTaskListVisibilityChanged(boolean z) {
        if (this.mTask == null) {
            return;
        }
        cancelPendingLoadTasks();
        if (!z) {
            this.mSnapshotView.setThumbnail(null, null);
            setIcon(null);
            this.mTask.thumbnail = null;
        } else {
            RecentsModel recentsModel = (RecentsModel) RecentsModel.INSTANCE.b(getContext());
            TaskThumbnailCache thumbnailCache = recentsModel.getThumbnailCache();
            TaskIconCache iconCache = recentsModel.getIconCache();
            this.mThumbnailLoadRequest = thumbnailCache.updateThumbnailInBackground(this.mTask, new Consumer() { // from class: c.a.b.d2.T
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskView.this.l((ThumbnailData) obj);
                }
            });
            this.mIconLoadRequest = iconCache.updateIconInBackground(this.mTask, new Consumer() { // from class: c.a.b.d2.H
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskView.this.m((Task) obj);
                }
            });
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i == R.string.accessibility_close) {
            getRecentsView().dismissTask(this, true, true);
            return true;
        }
        if (i == R.string.accessibility_app_usage_settings) {
            this.mDigitalWellBeingToast.openAppUsageSettings(this);
            return true;
        }
        for (SystemShortcut systemShortcut : TaskOverlayFactory.getEnabledShortcuts(this)) {
            if (systemShortcut.hasHandlerForAction(i)) {
                systemShortcut.onClick(this);
                return true;
            }
        }
        return super.performAccessibilityAction(i, bundle);
    }

    public void resetViewTransforms() {
        setCurveScale(1.0f);
        setTranslationX(RecentsState.NO_OFFSET);
        setTranslationY(RecentsState.NO_OFFSET);
        setTranslationZ(RecentsState.NO_OFFSET);
        setAlpha(this.mStableAlpha);
        setIconScaleAndDim(1.0f);
    }

    public void setContextualChip(View view) {
        View view2 = this.mContextualChipWrapper;
        if (view2 != null) {
            removeView(view2);
        }
        if (view != null) {
            this.mContextualChipWrapper = view;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 81;
            int expectedViewHeight = getExpectedViewHeight(view);
            float dimension = getResources().getDimension(R.dimen.chip_hint_vertical_offset);
            layoutParams.bottomMargin = (int) ((((ViewGroup.MarginLayoutParams) this.mSnapshotView.getLayoutParams()).bottomMargin - expectedViewHeight) + dimension);
            View childAt = ((FrameLayout) this.mContextualChipWrapper).getChildAt(0);
            this.mContextualChip = childAt;
            childAt.setScaleX(RecentsState.NO_OFFSET);
            this.mContextualChip.setScaleY(RecentsState.NO_OFFSET);
            GradientDrawable gradientDrawable = (GradientDrawable) getResources().getDrawable(R.drawable.chip_scrim_gradient, this.mActivity.getTheme());
            float taskCornerRadius = getTaskCornerRadius();
            gradientDrawable.setCornerRadii(new float[]{RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, taskCornerRadius, taskCornerRadius, taskCornerRadius, taskCornerRadius});
            this.mContextualChipWrapper.setBackground(new InsetDrawable((Drawable) gradientDrawable, 0, 0, 0, (int) (expectedViewHeight - dimension)));
            this.mContextualChipWrapper.setPadding(0, 0, 0, 0);
            this.mContextualChipWrapper.setAlpha(RecentsState.NO_OFFSET);
            addView(view, getChildCount(), layoutParams);
            View view3 = this.mContextualChip;
            if (view3 != null) {
                view3.animate().scaleX(1.0f).scaleY(1.0f).setDuration(50L);
            }
            View view4 = this.mContextualChipWrapper;
            if (view4 != null) {
                view4.animate().alpha(1.0f).setDuration(50L);
            }
        }
    }

    public View setFooter(int i, View view) {
        View view2;
        boolean z = this.mFooterVerticalOffset <= RecentsState.NO_OFFSET;
        FooterWrapper[] footerWrapperArr = this.mFooters;
        if (footerWrapperArr[i] != null) {
            View view3 = footerWrapperArr[i].mView;
            footerWrapperArr[i].release();
            removeView(view3);
            view2 = view3;
            z = false;
        } else {
            view2 = null;
        }
        if (view != null) {
            int childCount = getChildCount();
            int i2 = i - 1;
            while (true) {
                if (i2 < 0) {
                    break;
                }
                FooterWrapper[] footerWrapperArr2 = this.mFooters;
                if (footerWrapperArr2[i2] != null) {
                    childCount = indexOfChild(footerWrapperArr2[i2].mView);
                    break;
                }
                i2--;
            }
            addView(view, childCount);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = ((ViewGroup.MarginLayoutParams) this.mSnapshotView.getLayoutParams()).bottomMargin;
            view.setAlpha(this.mFooterAlpha);
            this.mFooters[i] = new FooterWrapper(view);
            if (z) {
                this.mFooters[i].animateEntry();
            }
        } else {
            this.mFooters[i] = null;
        }
        this.mStackHeight = 0;
        for (FooterWrapper footerWrapper : this.mFooters) {
            if (footerWrapper != null) {
                footerWrapper.setVerticalShift(this.mStackHeight);
                this.mStackHeight += footerWrapper.mExpectedHeight;
            }
        }
        return view2;
    }

    public void setFullscreenProgress(float f) {
        float boundToRange = Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f);
        this.mFullscreenProgress = boundToRange;
        boolean z = boundToRange > RecentsState.NO_OFFSET;
        this.mIconView.setVisibility(boundToRange >= 1.0f ? 4 : 0);
        setClipChildren(!z);
        setClipToPadding(!z);
        TaskThumbnailView thumbnail = getThumbnail();
        updateCurrentFullscreenParams(thumbnail.getPreviewPositionHelper());
        if (!getRecentsView().isTaskIconScaledDown(this)) {
            setIconScaleAndDim(boundToRange, true);
        }
        thumbnail.setFullscreenParams(this.mCurrentFullscreenParams);
        this.mOutlineProvider.setFullscreenParams(this.mCurrentFullscreenParams);
        invalidateOutline();
    }

    public void setIconScaleAndDim(float f) {
        setIconScaleAndDim(f, false);
    }

    public void setIconScaleAnimStartProgress(float f) {
        this.mIconScaleAnimStartProgress = f;
    }

    public void setModalness(float f) {
        this.mModalness = f;
        this.mIconView.setAlpha(Utilities.comp(f));
        View view = this.mContextualChip;
        if (view != null) {
            float f2 = 1.0f - f;
            view.setScaleX(f2);
            this.mContextualChip.setScaleY(f2);
        }
        View view2 = this.mContextualChipWrapper;
        if (view2 != null) {
            view2.setAlpha(1.0f - f);
        }
        updateFooterVerticalOffset(this.mFooterVerticalOffset);
    }

    public void setOrientationState(RecentsOrientedState recentsOrientedState) {
        PagedOrientationHandler orientationHandler = recentsOrientedState.getOrientationHandler();
        boolean z = getLayoutDirection() == 1;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mSnapshotView.getLayoutParams();
        int dimension = (int) getResources().getDimension(R.dimen.task_thumbnail_top_margin);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
        int rotation = orientationHandler.getRotation();
        if (rotation == 1) {
            layoutParams2.gravity = (z ? 8388611 : 8388613) | 16;
            layoutParams2.rightMargin = -dimension;
            layoutParams2.leftMargin = 0;
            layoutParams2.topMargin = layoutParams.topMargin / 2;
        } else if (rotation == 2) {
            layoutParams2.gravity = 81;
            layoutParams2.bottomMargin = -dimension;
            layoutParams2.rightMargin = 0;
            layoutParams2.topMargin = 0;
            layoutParams2.leftMargin = 0;
        } else if (rotation != 3) {
            layoutParams2.gravity = 49;
            layoutParams2.rightMargin = 0;
            layoutParams2.topMargin = 0;
            layoutParams2.leftMargin = 0;
        } else {
            layoutParams2.gravity = (z ? 8388613 : 8388611) | 16;
            layoutParams2.leftMargin = -dimension;
            layoutParams2.rightMargin = 0;
            layoutParams2.topMargin = layoutParams.topMargin / 2;
        }
        this.mIconView.setLayoutParams(layoutParams2);
        this.mIconView.setRotation(orientationHandler.getDegreesRotated());
        TaskMenuView taskMenuView = this.mMenuView;
        if (taskMenuView != null) {
            taskMenuView.onRotationChanged();
        }
    }

    public void setOverlayEnabled(boolean z) {
        this.mSnapshotView.setOverlayEnabled(z);
    }

    public void setShowScreenshot(boolean z) {
        this.mShowScreenshot = z;
    }

    public void setStableAlpha(float f) {
        this.mStableAlpha = f;
        setAlpha(f);
    }

    public boolean showScreenshot() {
        if (isRunningTask()) {
            return this.mShowScreenshot;
        }
        return true;
    }

    public void updateCurrentFullscreenParams(TaskThumbnailView.PreviewPositionHelper previewPositionHelper) {
        if (getRecentsView() == null) {
            return;
        }
        this.mCurrentFullscreenParams.setProgress(this.mFullscreenProgress, getRecentsView().getScaleX(), getWidth(), this.mActivity.getDeviceProfile(), previewPositionHelper);
    }

    public TaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setIconScaleAndDim(float f, boolean z) {
        ObjectAnimator objectAnimator = this.mIconAndDimAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setIconAndDimTransitionProgress(f, z);
    }

    public void launchTask(boolean z, boolean z2) {
        launchTask(z, z2, new Consumer() { // from class: c.a.b.d2.W
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskView.this.b((Boolean) obj);
            }
        }, getHandler());
    }

    public TaskView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTaskMenuStateListener = new View.OnAttachStateChangeListener() { // from class: com.android.quickstep.views.TaskView.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (TaskView.this.mMenuView != null) {
                    TaskView.this.mMenuView.removeOnAttachStateChangeListener(this);
                    TaskView.this.mMenuView = null;
                }
            }
        };
        this.mIconScaleAnimStartProgress = RecentsState.NO_OFFSET;
        this.mFocusTransitionProgress = 1.0f;
        this.mModalness = RecentsState.NO_OFFSET;
        this.mStableAlpha = 1.0f;
        this.mFooters = new FooterWrapper[2];
        this.mFooterVerticalOffset = RecentsState.NO_OFFSET;
        this.mFooterAlpha = 1.0f;
        this.mActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.K
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskView.this.k(view);
            }
        });
        this.mCurrentFullscreenParams = new FullscreenDrawParams(context);
        this.mDigitalWellBeingToast = new DigitalWellBeingToast(this.mActivity, this);
        TaskOutlineProvider taskOutlineProvider = new TaskOutlineProvider(getContext(), this.mCurrentFullscreenParams);
        this.mOutlineProvider = taskOutlineProvider;
        setOutlineProvider(taskOutlineProvider);
    }

    public void launchTask(boolean z, Consumer consumer, Handler handler) {
        launchTask(z, false, consumer, handler);
    }

    public void launchTask(final boolean z, final boolean z2, final Consumer consumer, final Handler handler) {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            final RecentsView recentsView = getRecentsView();
            if (isRunningTask()) {
                recentsView.finishRecentsAnimation(false, new Runnable() { // from class: c.a.b.d2.V
                    @Override // java.lang.Runnable
                    public final void run() {
                        handler.post(new Runnable() { // from class: c.a.b.d2.L
                            @Override // java.lang.Runnable
                            public final void run() {
                                r1.accept(Boolean.TRUE);
                            }
                        });
                    }
                });
                return;
            } else {
                recentsView.switchToScreenshot(null, new Runnable() { // from class: c.a.b.d2.P
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskView.this.f(recentsView, z, z2, consumer, handler);
                    }
                });
                return;
            }
        }
        e(z, z2, consumer, handler);
    }
}
