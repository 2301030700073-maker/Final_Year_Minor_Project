package com.android.quickstep.interaction;

import android.content.Context;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class TutorialController implements EdgeBackGestureHandler.BackGestureAttemptCallback, NavBarGestureHandler.NavBarGestureAttemptCallback {
    public static final int FEEDBACK_ANIMATION_MS = 500;
    public static final int FEEDBACK_VISIBLE_MS = 3000;
    public static final int RIPPLE_VISIBLE_MS = 300;
    public final Button mActionButton;
    public final Button mActionTextButton;
    public final ImageButton mCloseButton;
    public final Context mContext;
    public final View mFakeTaskView;
    public final TextView mFeedbackView;
    public final TutorialHandAnimation mHandCoachingAnimation;
    public final ImageView mHandCoachingView;
    public final Runnable mHideFeedbackRunnable;
    public final RippleDrawable mRippleDrawable;
    public final View mRippleView;
    public final TextView mSubtitleTextView;
    public final TextView mTitleTextView;
    public final TutorialFragment mTutorialFragment;
    public TutorialType mTutorialType;

    public enum TutorialType {
        RIGHT_EDGE_BACK_NAVIGATION,
        LEFT_EDGE_BACK_NAVIGATION,
        BACK_NAVIGATION_COMPLETE,
        HOME_NAVIGATION,
        HOME_NAVIGATION_COMPLETE,
        OVERVIEW_NAVIGATION,
        OVERVIEW_NAVIGATION_COMPLETE,
        ASSISTANT,
        ASSISTANT_COMPLETE
    }

    public TutorialController(TutorialFragment tutorialFragment, TutorialType tutorialType) {
        this.mTutorialFragment = tutorialFragment;
        this.mTutorialType = tutorialType;
        this.mContext = tutorialFragment.getContext();
        View rootView = tutorialFragment.getRootView();
        ImageButton imageButton = (ImageButton) rootView.findViewById(R.id.gesture_tutorial_fragment_close_button);
        this.mCloseButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: c.a.b.a2.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TutorialController.this.a(view);
            }
        });
        this.mTitleTextView = (TextView) rootView.findViewById(R.id.gesture_tutorial_fragment_title_view);
        this.mSubtitleTextView = (TextView) rootView.findViewById(R.id.gesture_tutorial_fragment_subtitle_view);
        this.mFeedbackView = (TextView) rootView.findViewById(R.id.gesture_tutorial_fragment_feedback_view);
        this.mFakeTaskView = rootView.findViewById(R.id.gesture_tutorial_fake_task_view);
        View findViewById = rootView.findViewById(R.id.gesture_tutorial_ripple_view);
        this.mRippleView = findViewById;
        this.mRippleDrawable = (RippleDrawable) findViewById.getBackground();
        this.mHandCoachingAnimation = tutorialFragment.getHandAnimation();
        ImageView imageView = (ImageView) rootView.findViewById(R.id.gesture_tutorial_fragment_hand_coaching);
        this.mHandCoachingView = imageView;
        imageView.bringToFront();
        this.mActionTextButton = (Button) rootView.findViewById(R.id.gesture_tutorial_fragment_action_text_button);
        this.mActionButton = (Button) rootView.findViewById(R.id.gesture_tutorial_fragment_action_button);
        this.mHideFeedbackRunnable = new Runnable() { // from class: c.a.b.a2.o
            @Override // java.lang.Runnable
            public final void run() {
                TutorialController.this.b();
            }
        };
    }

    private boolean isComplete() {
        TutorialType tutorialType = this.mTutorialType;
        return tutorialType == TutorialType.BACK_NAVIGATION_COMPLETE || tutorialType == TutorialType.HOME_NAVIGATION_COMPLETE || tutorialType == TutorialType.OVERVIEW_NAVIGATION_COMPLETE || tutorialType == TutorialType.ASSISTANT_COMPLETE;
    }

    private void updateActionButtons() {
        updateButton(this.mActionButton, getActionButtonStringId(), new View.OnClickListener() { // from class: c.a.b.a2.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TutorialController.this.onActionButtonClicked(view);
            }
        });
        updateButton(this.mActionTextButton, getActionTextButtonStringId(), new View.OnClickListener() { // from class: c.a.b.a2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TutorialController.this.onActionTextButtonClicked(view);
            }
        });
    }

    private void updateButton(Button button, Integer num, View.OnClickListener onClickListener) {
        if (num == null) {
            button.setVisibility(4);
            return;
        }
        button.setVisibility(0);
        button.setText(num.intValue());
        button.setOnClickListener(onClickListener);
    }

    private void updateTitleView(TextView textView, Integer num, int i) {
        if (num == null) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setText(num.intValue());
        textView.setTextAppearance(i);
    }

    private void updateTitles() {
        updateTitleView(this.mTitleTextView, getTitleStringId(), R.style.TextAppearance_GestureTutorial_Title);
        updateTitleView(this.mSubtitleTextView, getSubtitleStringId(), R.style.TextAppearance_GestureTutorial_Subtitle);
    }

    public /* synthetic */ void a(View view) {
        this.mTutorialFragment.closeTutorial();
    }

    public /* synthetic */ void b() {
        this.mFeedbackView.animate().alpha(RecentsState.NO_OFFSET).setDuration(500L).withEndAction(new Runnable() { // from class: c.a.b.a2.s
            @Override // java.lang.Runnable
            public final void run() {
                TutorialController.this.showHandCoachingAnimation();
            }
        }).start();
    }

    public /* synthetic */ void c(Runnable runnable) {
        this.mRippleDrawable.setState(new int[0]);
        if (runnable != null) {
            runnable.run();
        }
    }

    public Integer getActionButtonStringId() {
        return null;
    }

    public Integer getActionTextButtonStringId() {
        return null;
    }

    public Integer getSubtitleStringId() {
        return null;
    }

    public Integer getTitleStringId() {
        return null;
    }

    public void hideFeedback() {
        this.mFeedbackView.setText((CharSequence) null);
        this.mFeedbackView.removeCallbacks(this.mHideFeedbackRunnable);
        this.mFeedbackView.clearAnimation();
        this.mFeedbackView.setAlpha(RecentsState.NO_OFFSET);
    }

    public void hideHandCoachingAnimation() {
        this.mHandCoachingAnimation.stop();
        this.mHandCoachingView.setVisibility(4);
    }

    public void onActionButtonClicked(View view) {
    }

    public void onActionTextButtonClicked(View view) {
    }

    public void setRippleHotspot(float f, float f2) {
        this.mRippleDrawable.setHotspot(f, f2);
    }

    public void setTutorialType(TutorialType tutorialType) {
        this.mTutorialType = tutorialType;
    }

    public void showFeedback(int i) {
        hideHandCoachingAnimation();
        this.mFeedbackView.setText(i);
        this.mFeedbackView.animate().alpha(1.0f).setDuration(500L).start();
        this.mFeedbackView.removeCallbacks(this.mHideFeedbackRunnable);
        this.mFeedbackView.postDelayed(this.mHideFeedbackRunnable, 3000L);
    }

    public void showHandCoachingAnimation() {
        if (isComplete()) {
            return;
        }
        this.mHandCoachingAnimation.startLoopedAnimation(this.mTutorialType);
    }

    public void showRippleEffect(final Runnable runnable) {
        this.mRippleDrawable.setState(new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled});
        this.mRippleView.postDelayed(new Runnable() { // from class: c.a.b.a2.p
            @Override // java.lang.Runnable
            public final void run() {
                TutorialController.this.c(runnable);
            }
        }, 300L);
    }

    public void transitToController() {
        hideFeedback();
        updateTitles();
        updateActionButtons();
        if (isComplete()) {
            hideHandCoachingAnimation();
        } else {
            showHandCoachingAnimation();
        }
    }
}
