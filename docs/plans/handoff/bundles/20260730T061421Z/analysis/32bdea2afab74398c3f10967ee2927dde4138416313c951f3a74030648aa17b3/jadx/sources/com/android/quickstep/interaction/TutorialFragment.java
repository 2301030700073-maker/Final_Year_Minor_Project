package com.android.quickstep.interaction;

import android.content.Intent;
import android.graphics.Insets;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import b.i.b.ActivityC0124t;
import b.i.b.r;
import c.a.c.a.a;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.interaction.TutorialFragment;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class TutorialFragment extends r implements View.OnTouchListener {
    public static final String KEY_TUTORIAL_TYPE = "tutorial_type";
    public static final String LOG_TAG = "TutorialFragment";
    public EdgeBackGestureHandler mEdgeBackGestureHandler;
    public TutorialHandAnimation mHandCoachingAnimation;
    public NavBarGestureHandler mNavBarGestureHandler;
    public View mRootView;
    public TutorialController mTutorialController = null;
    public TutorialController.TutorialType mTutorialType;

    /* renamed from: com.android.quickstep.interaction.TutorialFragment$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr;
            try {
                TutorialController.TutorialType tutorialType = TutorialController.TutorialType.RIGHT_EDGE_BACK_NAVIGATION;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType2 = TutorialController.TutorialType.LEFT_EDGE_BACK_NAVIGATION;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType3 = TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType4 = TutorialController.TutorialType.HOME_NAVIGATION;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType5 = TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType6 = TutorialController.TutorialType.OVERVIEW_NAVIGATION;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType7 = TutorialController.TutorialType.OVERVIEW_NAVIGATION_COMPLETE;
                iArr7[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType8 = TutorialController.TutorialType.ASSISTANT;
                iArr8[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;
                TutorialController.TutorialType tutorialType9 = TutorialController.TutorialType.ASSISTANT_COMPLETE;
                iArr9[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static TutorialFragment getFragmentForTutorialType(TutorialController.TutorialType tutorialType) {
        switch (tutorialType.ordinal()) {
            case 0:
            case 1:
            case 2:
                return new BackGestureTutorialFragment();
            case 3:
            case 4:
                return new HomeGestureTutorialFragment();
            case 5:
            case 6:
                return new OverviewGestureTutorialFragment();
            case 7:
            case 8:
                return new AssistantGestureTutorialFragment();
            default:
                StringBuilder f = a.f("Failed to find an appropriate fragment for ");
                f.append(tutorialType.name());
                Log.e(LOG_TAG, f.toString());
                return null;
        }
    }

    public static TutorialFragment newInstance(TutorialController.TutorialType tutorialType) {
        TutorialFragment fragmentForTutorialType = getFragmentForTutorialType(tutorialType);
        if (fragmentForTutorialType == null) {
            fragmentForTutorialType = new BackGestureTutorialFragment();
            tutorialType = TutorialController.TutorialType.RIGHT_EDGE_BACK_NAVIGATION;
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable(KEY_TUTORIAL_TYPE, tutorialType);
        fragmentForTutorialType.setArguments(bundle);
        return fragmentForTutorialType;
    }

    public /* synthetic */ WindowInsets a(View view, WindowInsets windowInsets) {
        Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars());
        this.mEdgeBackGestureHandler.setInsets(insets.left, insets.right);
        return windowInsets;
    }

    public void changeController(TutorialController.TutorialType tutorialType) {
        if (getControllerClass().isInstance(this.mTutorialController)) {
            this.mTutorialController.setTutorialType(tutorialType);
        } else {
            this.mTutorialController = createController(tutorialType);
        }
        this.mTutorialController.transitToController();
        this.mEdgeBackGestureHandler.registerBackGestureAttemptCallback(this.mTutorialController);
        this.mNavBarGestureHandler.registerNavBarGestureAttemptCallback(this.mTutorialController);
        this.mTutorialType = tutorialType;
    }

    public void closeTutorial() {
        ActivityC0124t activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public abstract TutorialController createController(TutorialController.TutorialType tutorialType);

    public abstract Class getControllerClass();

    public TutorialHandAnimation getHandAnimation() {
        return this.mHandCoachingAnimation;
    }

    public abstract int getHandAnimationResId();

    public View getRootView() {
        return this.mRootView;
    }

    public void onAttachedToWindow() {
        this.mEdgeBackGestureHandler.setViewGroupParent((ViewGroup) getRootView());
    }

    @Override // b.i.b.r
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.mTutorialType = (TutorialController.TutorialType) bundle.getSerializable(KEY_TUTORIAL_TYPE);
        this.mEdgeBackGestureHandler = new EdgeBackGestureHandler(getContext());
        this.mNavBarGestureHandler = new NavBarGestureHandler(getContext());
    }

    @Override // b.i.b.r
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View inflate = layoutInflater.inflate(R.layout.gesture_tutorial_fragment, viewGroup, false);
        this.mRootView = inflate;
        inflate.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: c.a.b.a2.r
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return TutorialFragment.this.a(view, windowInsets);
            }
        });
        this.mRootView.setOnTouchListener(this);
        this.mHandCoachingAnimation = new TutorialHandAnimation(getContext(), this.mRootView, getHandAnimationResId());
        return this.mRootView;
    }

    @Override // b.i.b.r
    public void onDestroy() {
        super.onDestroy();
        this.mEdgeBackGestureHandler.unregisterBackGestureAttemptCallback();
        this.mNavBarGestureHandler.unregisterNavBarGestureAttemptCallback();
    }

    public void onDetachedFromWindow() {
        this.mEdgeBackGestureHandler.setViewGroupParent(null);
    }

    @Override // b.i.b.r
    public void onPause() {
        super.onPause();
        this.mHandCoachingAnimation.stop();
    }

    @Override // b.i.b.r
    public void onResume() {
        super.onResume();
        changeController(this.mTutorialType);
    }

    @Override // b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable(KEY_TUTORIAL_TYPE, this.mTutorialType);
        super.onSaveInstanceState(bundle);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.mNavBarGestureHandler.onTouch(view, motionEvent) | this.mEdgeBackGestureHandler.onTouch(view, motionEvent);
    }

    public void startSystemNavigationSetting() {
        startActivity(new Intent("com.android.settings.GESTURE_NAVIGATION_SETTINGS"));
    }
}
