package com.android.quickstep.util;

import android.animation.AnimatorSet;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.WrappedLauncherAnimationRunner;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.RemoteAnimationAdapterCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

/* loaded from: classes.dex */
public abstract class RemoteAnimationProvider {
    public LauncherAnimationRunner mAnimationRunner;

    public static RemoteAnimationTargetCompat findLowestOpaqueLayerTarget(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, int i) {
        int i2;
        int i3 = Integer.MAX_VALUE;
        int i4 = -1;
        for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = remoteAnimationTargetCompatArr[length];
            if (remoteAnimationTargetCompat.mode == i && !remoteAnimationTargetCompat.isTranslucent && (i2 = remoteAnimationTargetCompat.prefixOrderIndex) < i3) {
                i4 = length;
                i3 = i2;
            }
        }
        if (i4 != -1) {
            return remoteAnimationTargetCompatArr[i4];
        }
        return null;
    }

    public abstract AnimatorSet createWindowAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2);

    public ActivityOptions toActivityOptions(Handler handler, long j, final Context context) {
        LauncherAnimationRunner launcherAnimationRunner = new LauncherAnimationRunner(handler, false) { // from class: com.android.quickstep.util.RemoteAnimationProvider.1
            @Override // com.android.launcher3.LauncherAnimationRunner, com.android.launcher3.WrappedAnimationRunnerImpl
            public void onCreateAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, LauncherAnimationRunner.AnimationResult animationResult) {
                animationResult.setAnimation(RemoteAnimationProvider.this.createWindowAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2), context);
            }
        };
        this.mAnimationRunner = launcherAnimationRunner;
        return ActivityOptionsCompat.makeRemoteAnimation(new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(launcherAnimationRunner, false), j, 0L));
    }
}
