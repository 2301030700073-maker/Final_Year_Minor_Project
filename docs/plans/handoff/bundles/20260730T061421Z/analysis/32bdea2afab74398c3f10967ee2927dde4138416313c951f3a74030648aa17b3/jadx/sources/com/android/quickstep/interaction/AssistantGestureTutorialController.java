package com.android.quickstep.interaction;

import android.graphics.PointF;
import android.view.View;
import com.android.quickstep.interaction.AssistantGestureTutorialController;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public final class AssistantGestureTutorialController extends TutorialController {

    /* renamed from: com.android.quickstep.interaction.AssistantGestureTutorialController$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[NavBarGestureHandler.NavBarGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult = iArr;
            try {
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult = NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED;
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult2 = NavBarGestureHandler.NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult3 = NavBarGestureHandler.NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE;
                iArr3[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult4 = NavBarGestureHandler.NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE;
                iArr4[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult5 = NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION;
                iArr5[5] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult6 = NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_CANCELLED;
                iArr6[6] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult7 = NavBarGestureHandler.NavBarGestureResult.ASSISTANT_COMPLETED;
                iArr7[7] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult8 = NavBarGestureHandler.NavBarGestureResult.ASSISTANT_NOT_STARTED_BAD_ANGLE;
                iArr8[8] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult9 = NavBarGestureHandler.NavBarGestureResult.ASSISTANT_NOT_STARTED_SWIPE_TOO_SHORT;
                iArr9[9] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr10 = new int[EdgeBackGestureHandler.BackGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult = iArr10;
            try {
                EdgeBackGestureHandler.BackGestureResult backGestureResult = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT;
                iArr10[1] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult2 = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT;
                iArr11[2] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult3 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_LEFT;
                iArr12[3] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult4 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_RIGHT;
                iArr13[4] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr14 = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr14;
            try {
                TutorialController.TutorialType tutorialType = TutorialController.TutorialType.ASSISTANT;
                iArr14[7] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                int[] iArr15 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType2 = TutorialController.TutorialType.ASSISTANT_COMPLETE;
                iArr15[8] = 2;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public AssistantGestureTutorialController(AssistantGestureTutorialFragment assistantGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(assistantGestureTutorialFragment, tutorialType);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getActionButtonStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.ASSISTANT_COMPLETE) {
            return Integer.valueOf(R.string.gesture_tutorial_action_button_label_done);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getSubtitleStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.ASSISTANT) {
            return Integer.valueOf(R.string.assistant_gesture_tutorial_playground_subtitle);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getTitleStringId() {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal == 7) {
            return Integer.valueOf(R.string.assistant_gesture_tutorial_playground_title);
        }
        if (ordinal != 8) {
            return null;
        }
        return Integer.valueOf(R.string.gesture_tutorial_confirm_title);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public void onActionButtonClicked(View view) {
        this.mTutorialFragment.closeTutorial();
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureAttempted(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal != 7) {
            if (ordinal != 8) {
                return;
            }
            if (backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT || backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT) {
                this.mTutorialFragment.closeTutorial();
                return;
            }
            return;
        }
        int ordinal2 = backGestureResult.ordinal();
        if (ordinal2 == 1 || ordinal2 == 2 || ordinal2 == 3 || ordinal2 == 4) {
            showFeedback(R.string.assistant_gesture_feedback_swipe_too_far_from_corner);
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal != 7) {
            if (ordinal == 8 && navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
                this.mTutorialFragment.closeTutorial();
                return;
            }
            return;
        }
        switch (navBarGestureResult.ordinal()) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                showFeedback(R.string.assistant_gesture_feedback_swipe_too_far_from_corner);
                break;
            case 7:
                hideFeedback();
                hideHandCoachingAnimation();
                showRippleEffect(new Runnable() { // from class: c.a.b.a2.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AssistantGestureTutorialController.this.mTutorialFragment.changeController(TutorialController.TutorialType.ASSISTANT_COMPLETE);
                    }
                });
                break;
            case 8:
                showFeedback(R.string.assistant_gesture_feedback_swipe_not_diagonal);
                break;
            case 9:
                showFeedback(R.string.assistant_gesture_feedback_swipe_not_long_enough);
                break;
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void setAssistantProgress(float f) {
    }
}
