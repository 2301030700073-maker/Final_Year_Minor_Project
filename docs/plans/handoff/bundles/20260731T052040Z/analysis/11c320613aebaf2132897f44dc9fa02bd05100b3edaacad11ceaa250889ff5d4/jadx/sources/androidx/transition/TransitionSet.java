package androidx.transition;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    public int mCurrentListeners;
    public Transition[] mTransitionsCache;
    public ArrayList mTransitions = new ArrayList();
    public boolean mPlayTogether = true;
    public boolean mStarted = false;
    public int mChangeFlags = 0;

    @Override // androidx.transition.Transition
    public final void addTarget(View view) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).addTarget(view);
        }
        this.mTargets.add(view);
    }

    public final void addTransition(Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
        long j = this.mDuration;
        if (j >= 0) {
            transition.setDuration(j);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.setInterpolator(this.mInterpolator);
        }
        if ((this.mChangeFlags & 2) != 0) {
            transition.setPropagation();
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.setPathMotion(this.mPathMotion);
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.setEpicenterCallback(this.mEpicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public final void cancel() {
        super.cancel();
        Transition[] transitionArr = this.mTransitionsCache;
        this.mTransitionsCache = null;
        if (transitionArr == null) {
            transitionArr = new Transition[this.mTransitions.size()];
        }
        Transition[] transitionArr2 = (Transition[]) this.mTransitions.toArray(transitionArr);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            transitionArr2[i].cancel();
        }
        Arrays.fill(transitionArr2, (Object) null);
        this.mTransitionsCache = transitionArr2;
    }

    @Override // androidx.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (isValidTarget(view)) {
            Iterator it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.isValidTarget(view)) {
                    transition.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void capturePropagationValues(TransitionValues transitionValues) {
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).capturePropagationValues(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (isValidTarget(view)) {
            Iterator it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.isValidTarget(view)) {
                    transition.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: clone */
    public final Transition mo473clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo473clone();
        transitionSet.mTransitions = new ArrayList();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            Transition mo473clone = ((Transition) this.mTransitions.get(i)).mo473clone();
            transitionSet.mTransitions.add(mo473clone);
            mo473clone.mParent = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    public final void createAnimators(ViewGroup viewGroup, Dispatcher dispatcher, Dispatcher dispatcher2, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.mStartDelay;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            Transition transition = (Transition) this.mTransitions.get(i);
            if (j > 0 && (this.mPlayTogether || i == 0)) {
                long j2 = transition.mStartDelay;
                if (j2 > 0) {
                    transition.setStartDelay(j2 + j);
                } else {
                    transition.setStartDelay(j);
                }
            }
            transition.createAnimators(viewGroup, dispatcher, dispatcher2, arrayList, arrayList2);
        }
    }

    public final Transition getTransitionAt(int i) {
        if (i < 0 || i >= this.mTransitions.size()) {
            return null;
        }
        return (Transition) this.mTransitions.get(i);
    }

    @Override // androidx.transition.Transition
    public final boolean hasAnimators() {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            if (((Transition) this.mTransitions.get(i)).hasAnimators()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public final boolean isSeekingSupported() {
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            if (!((Transition) this.mTransitions.get(i)).isSeekingSupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.transition.Transition
    public final void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).pause(view);
        }
    }

    @Override // androidx.transition.Transition
    public final void prepareAnimatorsForSeeking() {
        this.mTotalDuration = 0L;
        int i = 0;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, i);
        while (i < this.mTransitions.size()) {
            Transition transition = (Transition) this.mTransitions.get(i);
            transition.addListener(anonymousClass2);
            transition.prepareAnimatorsForSeeking();
            long j = transition.mTotalDuration;
            boolean z = this.mPlayTogether;
            long j2 = this.mTotalDuration;
            if (z) {
                this.mTotalDuration = Math.max(j2, j);
            } else {
                transition.mSeekOffsetInParent = j2;
                this.mTotalDuration = j2 + j;
            }
            i++;
        }
    }

    @Override // androidx.transition.Transition
    public final Transition removeListener(Transition.TransitionListener transitionListener) {
        super.removeListener(transitionListener);
        return this;
    }

    @Override // androidx.transition.Transition
    public final void removeTarget(View view) {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).removeTarget(view);
        }
        this.mTargets.remove(view);
    }

    @Override // androidx.transition.Transition
    public final void resume(View view) {
        super.resume(view);
        Transition[] transitionArr = this.mTransitionsCache;
        this.mTransitionsCache = null;
        if (transitionArr == null) {
            transitionArr = new Transition[this.mTransitions.size()];
        }
        Transition[] transitionArr2 = (Transition[]) this.mTransitions.toArray(transitionArr);
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            transitionArr2[i].resume(view);
        }
        Arrays.fill(transitionArr2, (Object) null);
        this.mTransitionsCache = transitionArr2;
    }

    @Override // androidx.transition.Transition
    public final void runAnimators() {
        ArrayList arrayList;
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        anonymousClass2.this$0 = this;
        Iterator it = this.mTransitions.iterator();
        while (it.hasNext()) {
            ((Transition) it.next()).addListener(anonymousClass2);
        }
        this.mCurrentListeners = this.mTransitions.size();
        if (this.mPlayTogether) {
            Iterator it2 = this.mTransitions.iterator();
            while (it2.hasNext()) {
                ((Transition) it2.next()).runAnimators();
            }
            return;
        }
        int i = 1;
        while (true) {
            int size = this.mTransitions.size();
            arrayList = this.mTransitions;
            if (i >= size) {
                break;
            }
            ((Transition) arrayList.get(i - 1)).addListener(new AnonymousClass2((Transition) this.mTransitions.get(i), 2));
            i++;
        }
        Transition transition = (Transition) arrayList.get(0);
        if (transition != null) {
            transition.runAnimators();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setCurrentPlayTimeMillis(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionSet.setCurrentPlayTimeMillis(long, long):void");
    }

    @Override // androidx.transition.Transition
    public final void setDuration(long j) {
        ArrayList arrayList;
        this.mDuration = j;
        if (j < 0 || (arrayList = this.mTransitions) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setDuration(j);
        }
    }

    @Override // androidx.transition.Transition
    public final void setEpicenterCallback(AppKt appKt) {
        this.mEpicenterCallback = appKt;
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setEpicenterCallback(appKt);
        }
    }

    @Override // androidx.transition.Transition
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.mTransitions.get(i)).setInterpolator(timeInterpolator);
            }
        }
        this.mInterpolator = timeInterpolator;
    }

    @Override // androidx.transition.Transition
    public final void setPathMotion(Transition.AnonymousClass1 anonymousClass1) {
        super.setPathMotion(anonymousClass1);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int i = 0; i < this.mTransitions.size(); i++) {
                ((Transition) this.mTransitions.get(i)).setPathMotion(anonymousClass1);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void setPropagation() {
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setPropagation();
        }
    }

    @Override // androidx.transition.Transition
    public final void setStartDelay(long j) {
        this.mStartDelay = j;
    }

    @Override // androidx.transition.Transition
    public final String toString(String str) {
        String transition = super.toString(str);
        for (int i = 0; i < this.mTransitions.size(); i++) {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(transition, "\n");
            m.append(((Transition) this.mTransitions.get(i)).toString(str.concat("  ")));
            transition = m.toString();
        }
        return transition;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.transition.TransitionSet$2, reason: invalid class name */
    public final class AnonymousClass2 extends TransitionListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public Transition this$0;

        public /* synthetic */ AnonymousClass2(Transition transition, int i) {
            this.$r8$classId = i;
            this.this$0 = transition;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
            switch (this.$r8$classId) {
                case 0:
                    TransitionSet transitionSet = (TransitionSet) this.this$0;
                    transitionSet.mTransitions.remove(transition);
                    if (!transitionSet.hasAnimators()) {
                        transitionSet.notifyFromTransition(transitionSet, Transition.TransitionNotification.ON_CANCEL, false);
                        transitionSet.mEnded = true;
                        transitionSet.notifyFromTransition(transitionSet, Transition.TransitionNotification.ON_END, false);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            switch (this.$r8$classId) {
                case 1:
                    TransitionSet transitionSet = (TransitionSet) this.this$0;
                    int i = transitionSet.mCurrentListeners - 1;
                    transitionSet.mCurrentListeners = i;
                    if (i == 0) {
                        transitionSet.mStarted = false;
                        transitionSet.end();
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
                    TransitionSet transitionSet = (TransitionSet) this.this$0;
                    if (!transitionSet.mStarted) {
                        transitionSet.start();
                        transitionSet.mStarted = true;
                        break;
                    }
                    break;
            }
        }

        public /* synthetic */ AnonymousClass2() {
            this.$r8$classId = 1;
        }
    }
}
