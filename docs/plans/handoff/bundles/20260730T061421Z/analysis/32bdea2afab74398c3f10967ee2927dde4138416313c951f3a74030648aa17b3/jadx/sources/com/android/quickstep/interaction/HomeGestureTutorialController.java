package com.android.quickstep.interaction;

import android.annotation.TargetApi;
import android.graphics.PointF;
import android.view.View;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.HomeGestureTutorialController;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;

@TargetApi(30)
/* loaded from: classes.dex */
public final class HomeGestureTutorialController extends SwipeUpGestureTutorialController {

    /* renamed from: com.android.quickstep.interaction.HomeGestureTutorialController$1, reason: invalid class name */
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
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult2 = NavBarGestureHandler.NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE;
                iArr2[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult3 = NavBarGestureHandler.NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE;
                iArr3[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
                NavBarGestureHandler.NavBarGestureResult navBarGestureResult4 = NavBarGestureHandler.NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED;
                iArr4[2] = 4;
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
            int[] iArr7 = new int[EdgeBackGestureHandler.BackGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult = iArr7;
            try {
                EdgeBackGestureHandler.BackGestureResult backGestureResult = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT;
                iArr7[1] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult2 = EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT;
                iArr8[2] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult3 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_LEFT;
                iArr9[3] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
                EdgeBackGestureHandler.BackGestureResult backGestureResult4 = EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_RIGHT;
                iArr10[4] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr11 = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr11;
            try {
                TutorialController.TutorialType tutorialType = TutorialController.TutorialType.HOME_NAVIGATION;
                iArr11[3] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType2 = TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE;
                iArr12[4] = 2;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public HomeGestureTutorialController(HomeGestureTutorialFragment homeGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(homeGestureTutorialFragment, tutorialType);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getActionButtonStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE) {
            return Integer.valueOf(R.string.gesture_tutorial_action_button_label_done);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getSubtitleStringId() {
        if (this.mTutorialType == TutorialController.TutorialType.HOME_NAVIGATION) {
            return Integer.valueOf(R.string.home_gesture_tutorial_playground_subtitle);
        }
        return null;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public Integer getTitleStringId() {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal == 3) {
            return Integer.valueOf(R.string.home_gesture_tutorial_playground_title);
        }
        if (ordinal != 4) {
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
        if (ordinal != 3) {
            if (ordinal != 4) {
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
            showFeedback(R.string.home_gesture_feedback_swipe_too_far_from_edge);
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        int ordinal = this.mTutorialType.ordinal();
        if (ordinal != 3) {
            if (ordinal == 4 && navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
                this.mTutorialFragment.closeTutorial();
                return;
            }
            return;
        }
        switch (navBarGestureResult.ordinal()) {
            case 1:
                animateFakeTaskViewHome(pointF, new Runnable() { // from class: c.a.b.a2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        HomeGestureTutorialController.this.mTutorialFragment.changeController(TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE);
                    }
                });
                break;
            case 2:
                fadeOutFakeTaskView(true, new Runnable() { // from class: c.a.b.a2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        HomeGestureTutorialController.this.showFeedback(R.string.home_gesture_feedback_overview_detected);
                    }
                });
                break;
            case 3:
            case 4:
                showFeedback(R.string.home_gesture_feedback_swipe_too_far_from_edge);
                break;
            case 5:
            case 6:
                fadeOutFakeTaskView(false, null);
                showFeedback(R.string.home_gesture_feedback_wrong_swipe_direction);
                break;
        }
    }
}
