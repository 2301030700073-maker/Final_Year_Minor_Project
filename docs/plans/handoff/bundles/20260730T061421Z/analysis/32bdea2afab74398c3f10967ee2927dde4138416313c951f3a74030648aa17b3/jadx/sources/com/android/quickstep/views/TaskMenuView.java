package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.TaskMenuView;
import com.android.systemui.shared.R;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class TaskMenuView extends AbstractFloatingView {
    public static final int REVEAL_CLOSE_DURATION = 100;
    public static final int REVEAL_OPEN_DURATION = 150;
    public static final Rect sTempRect = new Rect();
    public BaseDraggingActivity mActivity;
    public FastBitmapDrawable mMenuIconDrawable;
    public final IconView.OnScaleUpdateListener mMenuIconScaleListener;
    public AnimatorSet mOpenCloseAnimator;
    public LinearLayout mOptionLayout;
    public IconView mTaskIcon;
    public TextView mTaskName;
    public TaskView mTaskView;
    public final IconView.OnScaleUpdateListener mTaskViewIconScaleListener;
    public final float mThumbnailTopMargin;

    public TaskMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMenuOption(SystemShortcut systemShortcut) {
        ViewGroup viewGroup = (ViewGroup) this.mActivity.getLayoutInflater().inflate(R.layout.task_view_menu_option, (ViewGroup) this, false);
        systemShortcut.setIconAndLabelFor(viewGroup.findViewById(R.id.icon), (TextView) viewGroup.findViewById(R.id.text));
        this.mTaskView.getPagedOrientationHandler().setLayoutParamsForTaskMenuOptionItem((LinearLayout.LayoutParams) viewGroup.getLayoutParams());
        viewGroup.setOnClickListener(systemShortcut);
        this.mOptionLayout.addView(viewGroup);
    }

    private void addMenuOptions(TaskView taskView) {
        Drawable newDrawable = taskView.getTask().icon.getConstantState().newDrawable();
        this.mTaskIcon.setDrawable(newDrawable);
        this.mTaskIcon.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.D
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskMenuView.this.b(view);
            }
        });
        this.mTaskName.setText(TaskUtils.getTitle(getContext(), taskView.getTask()));
        this.mTaskName.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.d2.C
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskMenuView.this.c(view);
            }
        });
        this.mMenuIconDrawable = newDrawable instanceof FastBitmapDrawable ? (FastBitmapDrawable) newDrawable : null;
        taskView.getIconView().addUpdateScaleListener(this.mTaskViewIconScaleListener);
        this.mTaskIcon.addUpdateScaleListener(this.mMenuIconScaleListener);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTaskIcon.getLayoutParams();
        layoutParams.topMargin = (int) (-this.mThumbnailTopMargin);
        this.mTaskIcon.setLayoutParams(layoutParams);
        TaskOverlayFactory.getEnabledShortcuts(taskView).forEach(new Consumer() { // from class: c.a.b.d2.B
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskMenuView.this.addMenuOption((SystemShortcut) obj);
            }
        });
    }

    private void animateClose() {
        animateOpenOrClosed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateOpen() {
        animateOpenOrClosed(false);
        this.mIsOpen = true;
    }

    private void animateOpenOrClosed(final boolean z) {
        AnimatorSet animatorSet = this.mOpenCloseAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mOpenCloseAnimator.end();
        }
        this.mOpenCloseAnimator = new AnimatorSet();
        ValueAnimator createRevealAnimator = createOpenCloseOutlineProvider().createRevealAnimator(this, z);
        createRevealAnimator.setInterpolator(Interpolators.DEACCEL);
        this.mOpenCloseAnimator.play(createRevealAnimator);
        AnimatorSet animatorSet2 = this.mOpenCloseAnimator;
        TaskThumbnailView thumbnail = this.mTaskView.getThumbnail();
        Property property = TaskThumbnailView.DIM_ALPHA;
        float[] fArr = new float[1];
        float f = RecentsState.NO_OFFSET;
        fArr[0] = z ? 0.0f : 0.4f;
        animatorSet2.play(ObjectAnimator.ofFloat(thumbnail, (Property<TaskThumbnailView, Float>) property, fArr));
        this.mOpenCloseAnimator.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.views.TaskMenuView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                TaskMenuView.this.setVisibility(0);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                if (z) {
                    TaskMenuView.this.closeComplete();
                }
            }
        });
        AnimatorSet animatorSet3 = this.mOpenCloseAnimator;
        Property property2 = LinearLayout.ALPHA;
        float[] fArr2 = new float[1];
        if (!z) {
            f = 1.0f;
        }
        fArr2[0] = f;
        animatorSet3.play(ObjectAnimator.ofFloat(this, (Property<TaskMenuView, Float>) property2, fArr2));
        this.mOpenCloseAnimator.setDuration(z ? 100L : 150L);
        this.mOpenCloseAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeComplete() {
        this.mIsOpen = false;
        this.mActivity.getDragLayer().removeView(this);
    }

    private RoundedRectRevealOutlineProvider createOpenCloseOutlineProvider() {
        float dialogCornerRadius = W.getDialogCornerRadius(getContext());
        return new RoundedRectRevealOutlineProvider(dialogCornerRadius, dialogCornerRadius, new Rect(0, 0, getWidth(), 0), new Rect(0, 0, getWidth(), getHeight()));
    }

    private void orientAroundTaskView(TaskView taskView) {
        PagedOrientationHandler pagedOrientationHandler = taskView.getPagedOrientationHandler();
        measure(0, 0);
        this.mActivity.getDragLayer().getDescendantRectRelativeToSelf(taskView, sTempRect);
        Rect insets = this.mActivity.getDragLayer().getInsets();
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).width = pagedOrientationHandler.getTaskMenuWidth(taskView.getThumbnail());
        ((FrameLayout.LayoutParams) layoutParams).gravity = 3;
        setLayoutParams(layoutParams);
        setScaleX(taskView.getScaleX());
        setScaleY(taskView.getScaleY());
        LinearLayout linearLayout = this.mOptionLayout;
        linearLayout.setOrientation(pagedOrientationHandler.getTaskMenuLayoutOrientation(linearLayout));
        Rect rect = sTempRect;
        setPosition(rect.left - insets.left, rect.top - insets.top, taskView.getPagedOrientationHandler());
    }

    private void populateAndLayoutMenu() {
        addMenuOptions(this.mTaskView);
        orientAroundTaskView(this.mTaskView);
    }

    private boolean populateAndShowForTask(TaskView taskView) {
        if (isAttachedToWindow()) {
            return false;
        }
        this.mActivity.getDragLayer().addView(this);
        this.mTaskView = taskView;
        populateAndLayoutMenu();
        post(new Runnable() { // from class: c.a.b.d2.E
            @Override // java.lang.Runnable
            public final void run() {
                TaskMenuView.this.animateOpen();
            }
        });
        return true;
    }

    public static TaskMenuView showForTask(TaskView taskView) {
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(taskView.getContext());
        TaskMenuView taskMenuView = (TaskMenuView) baseDraggingActivity.getLayoutInflater().inflate(R.layout.task_menu, (ViewGroup) baseDraggingActivity.getDragLayer(), false);
        if (taskMenuView.populateAndShowForTask(taskView)) {
            return taskMenuView;
        }
        return null;
    }

    public /* synthetic */ void b(View view) {
        close(true);
    }

    public /* synthetic */ void c(View view) {
        close(true);
    }

    public View findMenuItemByText(String str) {
        for (int childCount = this.mOptionLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = (ViewGroup) this.mOptionLayout.getChildAt(childCount);
            if (str.equals(((TextView) viewGroup.findViewById(R.id.text)).getText())) {
                return viewGroup;
            }
        }
        return null;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (z) {
            animateClose();
        } else {
            closeComplete();
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 1024) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || this.mActivity.getDragLayer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mTaskView.getIconView().removeUpdateScaleListener(this.mTaskViewIconScaleListener);
        this.mTaskIcon.removeUpdateScaleListener(this.mMenuIconScaleListener);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mTaskName = (TextView) findViewById(R.id.task_name);
        this.mTaskIcon = (IconView) findViewById(R.id.task_icon);
        this.mOptionLayout = (LinearLayout) findViewById(R.id.menu_option_layout);
    }

    public void onRotationChanged() {
        AnimatorSet animatorSet = this.mOpenCloseAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mOpenCloseAnimator.end();
        }
        if (this.mIsOpen) {
            this.mOptionLayout.removeAllViews();
            populateAndLayoutMenu();
        }
    }

    public void setPosition(float f, float f2, PagedOrientationHandler pagedOrientationHandler) {
        float f3 = f2 + this.mThumbnailTopMargin;
        setPivotX(RecentsState.NO_OFFSET);
        setPivotY(RecentsState.NO_OFFSET);
        setRotation(pagedOrientationHandler.getDegreesRotated());
        setX(pagedOrientationHandler.getTaskMenuX(f, this.mTaskView.getThumbnail()));
        setY(pagedOrientationHandler.getTaskMenuY(f3, this.mTaskView.getThumbnail()));
    }

    public TaskMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTaskViewIconScaleListener = new IconView.OnScaleUpdateListener() { // from class: com.android.quickstep.views.TaskMenuView.1
            @Override // com.android.quickstep.views.IconView.OnScaleUpdateListener
            public void onScaleUpdate(float f) {
                Drawable drawable = TaskMenuView.this.mTaskIcon.getDrawable();
                if (!(drawable instanceof FastBitmapDrawable) || f == ((FastBitmapDrawable) drawable).mScale) {
                    return;
                }
                TaskMenuView.this.mMenuIconDrawable.setScale(f);
            }
        };
        this.mMenuIconScaleListener = new IconView.OnScaleUpdateListener() { // from class: com.android.quickstep.views.TaskMenuView.2
            @Override // com.android.quickstep.views.IconView.OnScaleUpdateListener
            public void onScaleUpdate(float f) {
                Drawable drawable = TaskMenuView.this.mTaskView.getIconView().getDrawable();
                if (drawable instanceof FastBitmapDrawable) {
                    FastBitmapDrawable fastBitmapDrawable = (FastBitmapDrawable) drawable;
                    if (fastBitmapDrawable.mScale != f) {
                        fastBitmapDrawable.setScale(f);
                    }
                }
            }
        };
        this.mActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.mThumbnailTopMargin = getResources().getDimension(R.dimen.task_thumbnail_top_margin);
    }
}
