package com.android.launcher3;

import android.animation.AnimatorSet;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.CancellationSignal;
import android.os.Handler;
import c.a.a.C0230a0;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.RemoteAnimationProvider;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.function.BiPredicate;

@TargetApi(28)
/* loaded from: classes.dex */
public class LauncherInitListener extends ActivityInitListener {
    public RemoteAnimationProvider mRemoteAnimationProvider;

    public LauncherInitListener(BiPredicate biPredicate) {
        super(biPredicate, Launcher.ACTIVITY_TRACKER);
    }

    @Override // com.android.quickstep.util.ActivityInitListener
    public boolean handleInit(BaseActivity baseActivity, boolean z) {
        final Launcher launcher = (Launcher) baseActivity;
        if (this.mRemoteAnimationProvider != null) {
            QuickstepAppTransitionManagerImpl quickstepAppTransitionManagerImpl = (QuickstepAppTransitionManagerImpl) launcher.mAppTransitionManager;
            final CancellationSignal cancellationSignal = new CancellationSignal();
            RemoteAnimationProvider remoteAnimationProvider = new RemoteAnimationProvider() { // from class: com.android.launcher3.LauncherInitListener.1
                @Override // com.android.quickstep.util.RemoteAnimationProvider
                public AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
                    cancellationSignal.cancel();
                    LauncherInitListener launcherInitListener = LauncherInitListener.this;
                    RemoteAnimationProvider remoteAnimationProvider2 = launcherInitListener.mRemoteAnimationProvider;
                    launcherInitListener.mRemoteAnimationProvider = null;
                    if (remoteAnimationProvider2 == null || !((LauncherState) launcher.getStateManager().mState).overviewUi) {
                        return null;
                    }
                    return remoteAnimationProvider2.createWindowAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2);
                }
            };
            quickstepAppTransitionManagerImpl.mRemoteAnimationProvider = remoteAnimationProvider;
            cancellationSignal.setOnCancelListener(new C0230a0(quickstepAppTransitionManagerImpl, remoteAnimationProvider));
        }
        launcher.mDeferOverlayCallbacks = true;
        return super.handleInit(launcher, z);
    }

    @Override // com.android.quickstep.util.ActivityInitListener
    public void registerAndStartActivity(Intent intent, RemoteAnimationProvider remoteAnimationProvider, Context context, Handler handler, long j) {
        this.mRemoteAnimationProvider = remoteAnimationProvider;
        super.registerAndStartActivity(intent, remoteAnimationProvider, context, handler, j);
    }

    @Override // com.android.quickstep.util.ActivityInitListener
    public void unregister() {
        this.mRemoteAnimationProvider = null;
        super.unregister();
    }
}
