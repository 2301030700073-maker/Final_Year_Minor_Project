package c.b.a.b.b.l;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class K implements StateManager.StateListener {

    /* renamed from: a, reason: collision with root package name */
    public final Launcher f2629a;

    /* renamed from: b, reason: collision with root package name */
    public AnimatorSet f2630b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2631c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2632d;

    public K(Launcher launcher) {
        this.f2629a = launcher;
        launcher.getStateManager().mListeners.add(this);
        this.f2629a.getRootView().setWindowStateListener(this);
    }

    public void a(boolean z) {
        this.f2632d = false;
        if (this.f2631c) {
            this.f2631c = false;
            c(false, z);
        }
    }

    public void b() {
        if (this.f2629a.hasWindowFocus()) {
            this.f2632d = true;
            return;
        }
        this.f2632d = false;
        this.f2631c = true;
        c(true, true);
    }

    public final void c(boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f2630b;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f2630b = null;
        }
        Launcher launcher = this.f2629a;
        DragLayer dragLayer = launcher.mDragLayer;
        if (launcher.isInState(LauncherState.ALL_APPS)) {
            dragLayer.setAlpha(1.0f);
            dragLayer.setTranslationY(RecentsState.NO_OFFSET);
            return;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f2630b = animatorSet2;
        animatorSet2.addListener(new J(this));
        if (z) {
            this.f2630b.play(ObjectAnimator.ofFloat(dragLayer, (Property<DragLayer, Float>) View.ALPHA, RecentsState.NO_OFFSET));
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(dragLayer, (Property<DragLayer, Float>) View.TRANSLATION_Y, (-this.f2629a.mHotseat.getHeight()) / 2);
            ofFloat.setInterpolator(Interpolators.ACCEL);
            this.f2630b.play(ofFloat);
            this.f2630b.setDuration(200L);
        } else {
            this.f2630b.play(ObjectAnimator.ofFloat(dragLayer, (Property<DragLayer, Float>) View.ALPHA, 1.0f));
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(dragLayer, (Property<DragLayer, Float>) View.TRANSLATION_Y, RecentsState.NO_OFFSET);
            ofFloat2.setInterpolator(Interpolators.DEACCEL);
            this.f2630b.play(ofFloat2);
            this.f2630b.setDuration(200L);
        }
        this.f2630b.start();
        if (z2) {
            return;
        }
        this.f2630b.end();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (!this.f2631c || launcherState == LauncherState.ALL_APPS || this.f2629a.hasWindowFocus()) {
            return;
        }
        c(true, false);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(Object obj) {
    }
}
