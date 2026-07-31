package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.animation.core.Animation;
import androidx.transition.Transition;
import coil3.ImageLoader$Builder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AutoTransition extends Transition {
    public int mCurrentListeners;
    public Transition[] mTransitionsCache;
    public ArrayList mTransitions = new ArrayList();
    public boolean mPlayTogether = true;
    public boolean mStarted = false;
    public int mChangeFlags = 0;

    public AutoTransition() {
        setOrdering(1);
        addTransition(new Fade(2));
        addTransition(new ChangeBounds());
        addTransition(new Fade(1));
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
            transition.setEpicenterCallback(null);
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
    public final Transition mo762clone() {
        AutoTransition autoTransition = (AutoTransition) super.mo762clone();
        autoTransition.mTransitions = new ArrayList();
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            Transition mo762clone = ((Transition) this.mTransitions.get(i)).mo762clone();
            autoTransition.mTransitions.add(mo762clone);
            mo762clone.mParent = autoTransition;
        }
        return autoTransition;
    }

    @Override // androidx.transition.Transition
    public final void createAnimators(ViewGroup viewGroup, ImageLoader$Builder imageLoader$Builder, ImageLoader$Builder imageLoader$Builder2, ArrayList arrayList, ArrayList arrayList2) {
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
            transition.createAnimators(viewGroup, imageLoader$Builder, imageLoader$Builder2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public final void excludeTarget() {
        for (int i = 0; i < this.mTransitions.size(); i++) {
            ((Transition) this.mTransitions.get(i)).excludeTarget();
        }
        super.excludeTarget();
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
        TransitionSet$2 transitionSet$2 = new TransitionSet$2(this, i);
        while (i < this.mTransitions.size()) {
            Transition transition = (Transition) this.mTransitions.get(i);
            transition.addListener(transitionSet$2);
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
        TransitionSet$2 transitionSet$2 = new TransitionSet$2();
        transitionSet$2.this$0 = this;
        Iterator it = this.mTransitions.iterator();
        while (it.hasNext()) {
            ((Transition) it.next()).addListener(transitionSet$2);
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
            ((Transition) arrayList.get(i - 1)).addListener(new TransitionSet$2((Transition) this.mTransitions.get(i), 2));
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.AutoTransition.setCurrentPlayTimeMillis(long, long):void");
    }

    @Override // androidx.transition.Transition
    /* renamed from: setDuration$1, reason: merged with bridge method [inline-methods] */
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
    public final void setEpicenterCallback(UnsignedKt unsignedKt) {
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.mTransitions.get(i)).setEpicenterCallback(unsignedKt);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: setInterpolator$1, reason: merged with bridge method [inline-methods] */
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

    public final void setOrdering(int i) {
        if (i == 0) {
            this.mPlayTogether = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException(Animation.CC.m(i, "Invalid parameter for TransitionSet ordering: "));
            }
            this.mPlayTogether = false;
        }
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
            transition = transition + "\n" + ((Transition) this.mTransitions.get(i)).toString(str.concat("  "));
        }
        return transition;
    }
}
