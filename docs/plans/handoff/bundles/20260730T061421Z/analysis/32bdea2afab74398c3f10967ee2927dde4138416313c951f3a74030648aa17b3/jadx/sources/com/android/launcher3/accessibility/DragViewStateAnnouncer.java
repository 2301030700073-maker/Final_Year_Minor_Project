package com.android.launcher3.accessibility;

import android.view.View;
import com.android.launcher3.Launcher;

/* loaded from: classes.dex */
public class DragViewStateAnnouncer implements Runnable {
    public final View mTargetView;

    public DragViewStateAnnouncer(View view) {
        this.mTargetView = view;
    }

    public void announce(CharSequence charSequence) {
        this.mTargetView.setContentDescription(charSequence);
        this.mTargetView.removeCallbacks(this);
        this.mTargetView.postDelayed(this, 200L);
    }

    public void completeAction(int i) {
        this.mTargetView.removeCallbacks(this);
        Launcher launcher = Launcher.getLauncher(this.mTargetView.getContext());
        launcher.mDragLayer.announceForAccessibility(launcher.getText(i));
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mTargetView.sendAccessibilityEvent(4);
    }
}
