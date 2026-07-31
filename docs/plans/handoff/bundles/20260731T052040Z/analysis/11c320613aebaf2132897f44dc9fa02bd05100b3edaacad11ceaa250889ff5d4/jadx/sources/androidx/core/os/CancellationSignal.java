package androidx.core.os;

import androidx.transition.FragmentTransitionSupport$$ExternalSyntheticLambda0;
import androidx.transition.Transition;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CancellationSignal {
    public boolean mCancelInProgress;
    public boolean mIsCanceled;
    public FragmentTransitionSupport$$ExternalSyntheticLambda0 mOnCancelListener;

    public final void cancel() {
        synchronized (this) {
            try {
                if (this.mIsCanceled) {
                    return;
                }
                this.mIsCanceled = true;
                this.mCancelInProgress = true;
                FragmentTransitionSupport$$ExternalSyntheticLambda0 fragmentTransitionSupport$$ExternalSyntheticLambda0 = this.mOnCancelListener;
                if (fragmentTransitionSupport$$ExternalSyntheticLambda0 != null) {
                    try {
                        Runnable runnable = (Runnable) fragmentTransitionSupport$$ExternalSyntheticLambda0.f$0;
                        Transition transition = (Transition) fragmentTransitionSupport$$ExternalSyntheticLambda0.f$1;
                        Runnable runnable2 = (Runnable) fragmentTransitionSupport$$ExternalSyntheticLambda0.f$2;
                        if (runnable == null) {
                            transition.cancel();
                            runnable2.run();
                        } else {
                            runnable.run();
                        }
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.mCancelInProgress = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.mCancelInProgress = false;
                    notifyAll();
                }
            } finally {
            }
        }
    }
}
