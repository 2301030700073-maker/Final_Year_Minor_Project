package com.android.quickstep.interaction;

import android.graphics.Rect;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import b.i.b.ActivityC0124t;
import b.i.b.C0096a;
import b.i.b.X;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class GestureSandboxActivity extends ActivityC0124t {
    public static final String LOG_TAG = "GestureSandboxActivity";
    public TutorialFragment mFragment;

    private void disableSystemGestures() {
        Display display = getDisplay();
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            getWindow().setSystemGestureExclusionRects(List.of(new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels)));
        }
    }

    private TutorialController.TutorialType getTutorialType(Bundle bundle) {
        TutorialController.TutorialType tutorialType = TutorialController.TutorialType.RIGHT_EDGE_BACK_NAVIGATION;
        if (bundle == null || !bundle.containsKey(TutorialFragment.KEY_TUTORIAL_TYPE)) {
            return tutorialType;
        }
        try {
            return TutorialController.TutorialType.valueOf(bundle.getString(TutorialFragment.KEY_TUTORIAL_TYPE, ""));
        } catch (IllegalArgumentException unused) {
            return tutorialType;
        }
    }

    private void hideSystemUI() {
        getWindow().getDecorView().setSystemUiVisibility(5892);
        getWindow().setNavigationBarColor(0);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        disableSystemGestures();
        this.mFragment.onAttachedToWindow();
    }

    @Override // b.i.b.ActivityC0124t, b.a.g, b.e.b.f, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.gesture_tutorial_activity);
        this.mFragment = TutorialFragment.newInstance(getTutorialType(getIntent().getExtras()));
        X supportFragmentManager = getSupportFragmentManager();
        Objects.requireNonNull(supportFragmentManager);
        C0096a c0096a = new C0096a(supportFragmentManager);
        c0096a.f(R.id.gesture_tutorial_fragment_container, this.mFragment, null, 1);
        c0096a.d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFragment.onDetachedFromWindow();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            hideSystemUI();
        }
    }
}
