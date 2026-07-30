package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.util.DefaultDisplay;
import com.android.systemui.shared.system.RemoteAnimationRunnerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

@TargetApi(28)
/* loaded from: classes.dex */
public abstract class LauncherAnimationRunner implements RemoteAnimationRunnerCompat, WrappedAnimationRunnerImpl {
    public static final String TAG = "LauncherAnimationRunner";
    public AnimationResult mAnimationResult;
    public final Handler mHandler;
    public final boolean mStartAtFrontOfQueue;

    public final class AnimationResult {
        public AnimatorSet mAnimator;
        public final Runnable mFinishRunnable;
        public boolean mFinished = false;
        public boolean mInitialized = false;

        public AnimationResult(Runnable runnable, AnonymousClass1 anonymousClass1) {
            this.mFinishRunnable = runnable;
        }

        public void setAnimation(AnimatorSet animatorSet, Context context) {
            if (this.mInitialized) {
                throw new IllegalStateException("Animation already initialized");
            }
            this.mInitialized = true;
            this.mAnimator = animatorSet;
            if (animatorSet == null) {
                if (this.mFinished) {
                    return;
                }
                this.mFinishRunnable.run();
                this.mFinished = true;
                return;
            }
            if (this.mFinished) {
                animatorSet.start();
                this.mAnimator.end();
            } else {
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAnimationRunner.AnimationResult.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AnimationResult animationResult = AnimationResult.this;
                        if (animationResult.mFinished) {
                            return;
                        }
                        animationResult.mFinishRunnable.run();
                        animationResult.mFinished = true;
                    }
                });
                this.mAnimator.start();
                this.mAnimator.setCurrentPlayTime(Math.min(DefaultDisplay.getSingleFrameMs(context), this.mAnimator.getTotalDuration()));
            }
        }
    }

    public LauncherAnimationRunner(Handler handler, boolean z) {
        this.mHandler = handler;
        this.mStartAtFrontOfQueue = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishExistingAnimation() {
        AnimationResult animationResult = this.mAnimationResult;
        if (animationResult != null) {
            if (!animationResult.mFinished) {
                animationResult.mFinishRunnable.run();
                animationResult.mFinished = true;
            }
            this.mAnimationResult = null;
        }
    }

    public /* synthetic */ void b(Runnable runnable) {
        runnable.run();
        this.mAnimationResult = null;
    }

    public /* synthetic */ void c(final Runnable runnable, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
        finishExistingAnimation();
        AnimationResult animationResult = new AnimationResult(new Runnable() { // from class: c.a.a.M
            @Override // java.lang.Runnable
            public final void run() {
                LauncherAnimationRunner.this.b(runnable);
            }
        }, null);
        this.mAnimationResult = animationResult;
        onCreateAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, animationResult);
    }

    @Override // com.android.launcher3.WrappedAnimationRunnerImpl
    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
    public void onAnimationCancelled() {
        Utilities.postAsyncCallback(this.mHandler, new Runnable() { // from class: c.a.a.L
            @Override // java.lang.Runnable
            public final void run() {
                LauncherAnimationRunner.this.finishExistingAnimation();
            }
        });
    }

    @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
    public void onAnimationStart(final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: c.a.a.N
            @Override // java.lang.Runnable
            public final void run() {
                LauncherAnimationRunner.this.c(runnable, remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2);
            }
        };
        if (this.mStartAtFrontOfQueue) {
            com.android.systemui.shared.recents.utilities.Utilities.postAtFrontOfQueueAsynchronously(this.mHandler, runnable2);
        } else {
            Utilities.postAsyncCallback(this.mHandler, runnable2);
        }
    }

    @Override // com.android.launcher3.WrappedAnimationRunnerImpl
    public abstract void onCreateAnimation(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, AnimationResult animationResult);

    @Deprecated
    public void onAnimationStart(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, Runnable runnable) {
        onAnimationStart(remoteAnimationTargetCompatArr, new RemoteAnimationTargetCompat[0], runnable);
    }
}
