package com.android.launcher3;

import com.android.launcher3.LauncherAnimationRunner;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class WrappedLauncherAnimationRunner extends LauncherAnimationRunner {
    public WeakReference mImpl;

    public WrappedLauncherAnimationRunner(WrappedAnimationRunnerImpl wrappedAnimationRunnerImpl, boolean z) {
        super(wrappedAnimationRunnerImpl.getHandler(), z);
        this.mImpl = new WeakReference(wrappedAnimationRunnerImpl);
    }

    @Override // com.android.launcher3.LauncherAnimationRunner, com.android.launcher3.WrappedAnimationRunnerImpl
    public void onCreateAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, LauncherAnimationRunner.AnimationResult animationResult) {
        WrappedAnimationRunnerImpl wrappedAnimationRunnerImpl = (WrappedAnimationRunnerImpl) this.mImpl.get();
        if (wrappedAnimationRunnerImpl != null) {
            wrappedAnimationRunnerImpl.onCreateAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, animationResult);
        }
    }
}
