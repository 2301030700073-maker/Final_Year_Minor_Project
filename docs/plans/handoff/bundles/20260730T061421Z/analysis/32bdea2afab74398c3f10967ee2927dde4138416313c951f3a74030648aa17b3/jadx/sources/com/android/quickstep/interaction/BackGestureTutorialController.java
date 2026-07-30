package com.android.quickstep.interaction;

import android.graphics.PointF;
import android.view.View;
import com.android.quickstep.interaction.BackGestureTutorialController;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public final class BackGestureTutorialController extends TutorialController {

    /* renamed from: com.android.quickstep.interaction.BackGestureTutorialController$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[EdgeBackGestureHandler.BackGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult = iArr;
            try {
                EdgeBackGestureHandler.BackGestureResult backGestureResult = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult2 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_RIGHT;
                iArr2[4] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult3 = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult4 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_LEFT;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult5 = EdgeBackGestureHandler.BackGestureResult.BACK_NOT_STARTED_TOO_FAR_FROM_EDGE;
                iArr5[5] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult6 = EdgeBackGestureHandler.BackGestureResult.BACK_NOT_STARTED_IN_NAV_BAR_REGION;
                iArr6[6] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr7 = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr7;
            try {
                TutorialController.TutorialType tutorialType = TutorialController.TutorialType.RIGHT_EDGE_BACK_NAVIGATION;
                iArr7[0] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType2 = TutorialController.TutorialType.LEFT_EDGE_BACK_NAVIGATION;
                iArr8[1] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType3 = TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE;
                iArr9[2] = 3;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public BackGestureTutorialController(BackGestureTutorialFragment backGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(backGestureTutorialFragment, tutorialType);
    }

    private void handleAttemptFromLeft(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        switch (backGestureResult.ordinal()) {
            case 1:
                hideFeedback();
                hideHandCoachingAnimation();
                showRippleEffect(new Runnable() { // from class: c.a.b.a2.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackGestureTutorialController.this.mTutorialFragment.changeController(TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE);
                    }
                });
                break;
            case 2:
            case 4:
            case 5:
                showFeedback(R.string.back_gesture_feedback_swipe_too_far_from_left_edge);
                break;
            case 3:
                showFeedback(R.string.back_gesture_feedback_cancelled_left_edge);
                break;
            case 6:
                showFeedback(R.string.back_gesture_feedback_swipe_in_nav_bar);
                break;
        }
    }

    private void handleAttemptFromRight(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        switch (backGestureResult.ordinal()) {
            case 1:
            case 3:
            case 5:
                showFeedback(R.string.back_gesture_feedback_swipe_too_far_from_right_edge);
                break;
            case 2:
                hideFeedback();
                hideHandCoachingAnimation();
                showRippleEffect(new Runnable() { // from class: c.a.b.a2.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackGestureTutorialController.this.mTutorialFragment.changeController(TutorialController.TutorialType.LEFT_EDGE_BACK_NAVIGATION);
                    }
                });
                break;
            case 4:
                showFeedback(R.string.back_gesture_feedback_cancelled_right_edge);
                break;
            case 6:
                showFeedback(R.string.back_gesture_feedback_swipe_in_nav_bar);
                break;
        }
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getActionButtonStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE) {
            return Integer.valueOf(R.string.gesture_tutorial_action_button_label_done);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getActionTextButtonStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE) {
            return Integer.valueOf(R.string.gesture_tutorial_action_button_label_settings);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getSubtitleStringId() {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal == 0) {
            return Integer.valueOf(R.string.back_gesture_tutorial_engaged_subtitle_swipe_inward_right_edge);
        }
        if (ordinal == 1) {
            return Integer.valueOf(R.string.back_gesture_tutorial_engaged_subtitle_swipe_inward_left_edge);
        }
        if (ordinal != 2) {
            return null;
        }
        return Integer.valueOf(R.string.back_gesture_tutorial_confirm_subtitle);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getTitleStringId() {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal == 0) {
            return Integer.valueOf(R.string.back_gesture_tutorial_playground_title_swipe_inward_right_edge);
        }
        if (ordinal == 1) {
            return Integer.valueOf(R.string.back_gesture_tutorial_playground_title_swipe_inward_left_edge);
        }
        if (ordinal != 2) {
            return null;
        }
        return Integer.valueOf(R.string.gesture_tutorial_confirm_title);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public void onActionButtonClicked(View view) {
        this.mTutorialFragment.closeTutorial();
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public void onActionTextButtonClicked(View view) {
        this.mTutorialFragment.startSystemNavigationSetting();
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureAttempted(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal == 0) {
            handleAttemptFromRight(backGestureResult);
            return;
        }
        if (ordinal == 1) {
            handleAttemptFromLeft(backGestureResult);
        } else {
            if (ordinal != 2) {
                return;
            }
            if (backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT || backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT) {
                this.mTutorialFragment.closeTutorial();
            }
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        if (this.mTutorialType == TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE && navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
            this.mTutorialFragment.closeTutorial();
        }
    }
}
