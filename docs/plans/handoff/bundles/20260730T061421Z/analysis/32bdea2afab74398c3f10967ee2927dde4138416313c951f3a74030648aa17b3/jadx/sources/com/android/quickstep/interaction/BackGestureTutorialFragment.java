package com.android.quickstep.interaction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class BackGestureTutorialFragment extends TutorialFragment {
    @Override // com.android.quickstep.interaction.TutorialFragment
    public TutorialController createController(TutorialController.TutorialType tutorialType) {
        return new BackGestureTutorialController(this, tutorialType);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public Class getControllerClass() {
        return BackGestureTutorialController.class;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment
    public int getHandAnimationResId() {
        return R.drawable.back_gesture;
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ void onDestroy() {
        super.onDestroy();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ void onPause() {
        super.onPause();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ void onResume() {
        super.onResume();
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, b.i.b.r
    public /* bridge */ /* synthetic */ void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.android.quickstep.interaction.TutorialFragment, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        TutorialController tutorialController;
        if (motionEvent.getAction() == 0 && (tutorialController = this.mTutorialController) != null) {
            tutorialController.setRippleHotspot(motionEvent.getX(), motionEvent.getY());
        }
        return super.onTouch(view, motionEvent);
    }
}
