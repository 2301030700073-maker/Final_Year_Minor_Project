package com.android.quickstep.util;

import android.animation.ValueAnimator;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.TransactionCompat;

/* loaded from: classes.dex */
public class RemoteFadeOutAnimationListener implements ValueAnimator.AnimatorUpdateListener {
    public boolean mFirstFrame = true;
    public final RemoteAnimationTargets mTarget;

    public RemoteFadeOutAnimationListener(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
        this.mTarget = new RemoteAnimationTargets(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, 1);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        TransactionCompat transactionCompat = new TransactionCompat();
        if (this.mFirstFrame) {
            for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : this.mTarget.unfilteredApps) {
                transactionCompat.show(remoteAnimationTargetCompat.leash);
            }
            this.mFirstFrame = false;
        }
        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat2 : this.mTarget.apps) {
            transactionCompat.setAlpha(remoteAnimationTargetCompat2.leash, animatedFraction);
        }
        transactionCompat.apply();
    }
}
