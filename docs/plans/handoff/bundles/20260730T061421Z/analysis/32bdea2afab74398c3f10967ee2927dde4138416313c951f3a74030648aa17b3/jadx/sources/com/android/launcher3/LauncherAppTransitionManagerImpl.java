package com.android.launcher3;

import android.content.Context;
import android.view.View;
import com.android.quickstep.TaskViewUtils;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

/* loaded from: classes.dex */
public final class LauncherAppTransitionManagerImpl extends QuickstepAppTransitionManagerImpl {
    public LauncherAppTransitionManagerImpl(Context context) {
        super(context);
    }

    @Override // com.android.launcher3.QuickstepAppTransitionManagerImpl
    public boolean isLaunchingFromRecents(View view, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr) {
        return ((LauncherState) this.mLauncher.getStateManager().mState).overviewUi && TaskViewUtils.findTaskViewToLaunch(this.mLauncher, view, remoteAnimationTargetCompatArr) != null;
    }
}
