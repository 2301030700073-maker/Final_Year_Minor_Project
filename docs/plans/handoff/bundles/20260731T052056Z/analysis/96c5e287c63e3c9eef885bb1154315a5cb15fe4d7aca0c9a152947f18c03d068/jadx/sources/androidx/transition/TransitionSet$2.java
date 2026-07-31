package androidx.transition;

import androidx.transition.Transition;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TransitionSet$2 extends TransitionListenerAdapter {
    public final /* synthetic */ int $r8$classId;
    public Transition this$0;

    public /* synthetic */ TransitionSet$2(Transition transition, int i) {
        this.$r8$classId = i;
        this.this$0 = transition;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
        switch (this.$r8$classId) {
            case 0:
                AutoTransition autoTransition = (AutoTransition) this.this$0;
                autoTransition.mTransitions.remove(transition);
                if (!autoTransition.hasAnimators()) {
                    autoTransition.notifyFromTransition(autoTransition, Transition.TransitionNotification.ON_CANCEL, false);
                    autoTransition.mEnded = true;
                    autoTransition.notifyFromTransition(autoTransition, Transition.TransitionNotification.ON_END, false);
                    break;
                }
                break;
        }
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        switch (this.$r8$classId) {
            case 1:
                AutoTransition autoTransition = (AutoTransition) this.this$0;
                int i = autoTransition.mCurrentListeners - 1;
                autoTransition.mCurrentListeners = i;
                if (i == 0) {
                    autoTransition.mStarted = false;
                    autoTransition.end();
                }
                transition.removeListener(this);
                break;
            case 2:
                this.this$0.runAnimators();
                transition.removeListener(this);
                break;
        }
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        switch (this.$r8$classId) {
            case 1:
                AutoTransition autoTransition = (AutoTransition) this.this$0;
                if (!autoTransition.mStarted) {
                    autoTransition.start();
                    autoTransition.mStarted = true;
                    break;
                }
                break;
        }
    }

    public /* synthetic */ TransitionSet$2() {
        this.$r8$classId = 1;
    }
}
