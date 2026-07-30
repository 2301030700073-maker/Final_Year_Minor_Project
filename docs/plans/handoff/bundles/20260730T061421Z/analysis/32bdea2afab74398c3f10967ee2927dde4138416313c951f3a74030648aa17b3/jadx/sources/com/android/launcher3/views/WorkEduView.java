package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsPagedView;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.views.WorkEduView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WorkEduView extends AbstractSlideInView implements Insettable, StateManager.StateListener {
    public AllAppsPagedView mAllAppsPagedView;
    public TextView mContentText;
    public Rect mInsets;
    public int mNextWorkEduStep;
    public Button mProceedButton;
    public View mViewWrapper;

    public WorkEduView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static StateManager.StateListener showEduFlowIfNeeded(final Launcher launcher, StateManager.StateListener stateListener) {
        if (stateListener != null) {
            launcher.getStateManager().mListeners.remove(stateListener);
        }
        if (launcher.getSharedPrefs().getBoolean("showed_bottom_user_education", false) || launcher.getSharedPrefs().getInt("showed_work_profile_edu", 0) != 0) {
            return null;
        }
        StateManager.StateListener stateListener2 = new StateManager.StateListener() { // from class: com.android.launcher3.views.WorkEduView.2
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(Object obj) {
                if (((LauncherState) obj) != LauncherState.ALL_APPS) {
                    return;
                }
                WorkEduView workEduView = (WorkEduView) LayoutInflater.from(Launcher.this).inflate(R.layout.work_profile_edu, (ViewGroup) Launcher.this.mDragLayer, false);
                workEduView.show();
                AllAppsPagedView allAppsPagedView = workEduView.mAllAppsPagedView;
                if (allAppsPagedView != null) {
                    allAppsPagedView.snapToPageImmediately(0);
                }
                Launcher.this.getStateManager().mListeners.remove(this);
            }
        };
        launcher.getStateManager().mListeners.add(stateListener2);
        return stateListener2;
    }

    public static void showWorkEduIfNeeded(Launcher launcher) {
        if (launcher.getSharedPrefs().getBoolean("showed_bottom_user_education", false) || launcher.getSharedPrefs().getInt("showed_work_profile_edu", 0) != 1) {
            return;
        }
        WorkEduView workEduView = (WorkEduView) LayoutInflater.from(launcher).inflate(R.layout.work_profile_edu, (ViewGroup) launcher.mDragLayer, false);
        workEduView.show();
        workEduView.goToWorkTab(false);
    }

    public /* synthetic */ void a(View view) {
        handleClose(true);
    }

    public /* synthetic */ void b() {
        TextView textView = this.mContentText;
        textView.setMinLines(textView.getLineCount());
    }

    public /* synthetic */ void c(View view) {
        AllAppsPagedView allAppsPagedView = this.mAllAppsPagedView;
        if (allAppsPagedView != null) {
            allAppsPagedView.snapToPage(1);
        }
        goToWorkTab(true);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 14;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public int getScrimColor(Context context) {
        return -2013265920;
    }

    public final void goToWorkTab(boolean z) {
        this.mProceedButton.setText(R.string.work_profile_edu_accept);
        if (z) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mContentText, (Property<TextView, Float>) LinearLayout.ALPHA, RecentsState.NO_OFFSET);
            ofFloat.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.views.WorkEduView.1
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    WorkEduView workEduView = WorkEduView.this;
                    workEduView.mContentText.setText(workEduView.mLauncher.getString(R.string.work_profile_edu_work_apps));
                    ObjectAnimator.ofFloat(WorkEduView.this.mContentText, (Property<TextView, Float>) View.ALPHA, 1.0f).start();
                }
            });
            ofFloat.start();
        } else {
            this.mContentText.setText(this.mLauncher.getString(R.string.work_profile_edu_work_apps));
        }
        this.mNextWorkEduStep = 2;
        this.mProceedButton.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.b1.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkEduView.this.a(view);
            }
        });
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        this.mLauncher.getSharedPrefs().edit().putInt("showed_work_profile_edu", this.mNextWorkEduStep).apply();
        handleClose(true, 200L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 32) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public void onCloseComplete() {
        super.onCloseComplete();
        this.mLauncher.getStateManager().mListeners.remove(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mViewWrapper = findViewById(R.id.view_wrapper);
        this.mProceedButton = (Button) findViewById(R.id.proceed);
        TextView textView = (TextView) findViewById(R.id.content_text);
        this.mContentText = textView;
        textView.post(new Runnable() { // from class: c.a.a.b1.o
            @Override // java.lang.Runnable
            public final void run() {
                WorkEduView.this.b();
            }
        });
        if (this.mLauncher.mAppsView.getContentView() instanceof AllAppsPagedView) {
            this.mAllAppsPagedView = (AllAppsPagedView) this.mLauncher.mAppsView.getContentView();
        }
        this.mProceedButton.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.b1.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WorkEduView.this.c(view);
            }
        });
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public /* bridge */ /* synthetic */ void onStateTransitionComplete(Object obj) {
        onStateTransitionComplete();
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.mInsets;
        int i2 = i - rect2.left;
        int i3 = rect.right - rect2.right;
        int i4 = rect.bottom - rect2.bottom;
        rect2.set(rect);
        setPadding(i2, getPaddingTop(), i3, 0);
        View view = this.mViewWrapper;
        view.setPaddingRelative(view.getPaddingStart(), this.mViewWrapper.getPaddingTop(), this.mViewWrapper.getPaddingEnd(), i4);
    }

    public final void show() {
        attachToContainer();
        if (!this.mIsOpen && !this.mOpenCloseAnimator.isRunning()) {
            this.mIsOpen = true;
            this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) AbstractSlideInView.TRANSLATION_SHIFT, RecentsState.NO_OFFSET));
            this.mOpenCloseAnimator.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
            this.mOpenCloseAnimator.start();
        }
        this.mLauncher.getStateManager().mListeners.add(this);
    }

    public WorkEduView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInsets = new Rect();
        this.mNextWorkEduStep = 1;
        this.mContent = this;
    }

    public void onStateTransitionComplete() {
        close(false);
    }
}
