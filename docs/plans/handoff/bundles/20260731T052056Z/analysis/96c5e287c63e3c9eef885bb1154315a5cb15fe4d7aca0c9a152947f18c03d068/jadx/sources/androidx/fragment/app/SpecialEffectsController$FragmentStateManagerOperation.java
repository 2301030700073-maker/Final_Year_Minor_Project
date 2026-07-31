package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpecialEffectsController$FragmentStateManagerOperation {
    public final ArrayList _effects;
    public final ArrayList completionListeners;
    public final ArrayList effects;
    public SpecialEffectsController$Operation$State finalState;
    public final Fragment fragment;
    public final FragmentStateManager fragmentStateManager;
    public boolean isAwaitingContainerChanges;
    public boolean isCanceled;
    public boolean isComplete;
    public boolean isSeeking;
    public boolean isStarted;
    public SpecialEffectsController$Operation$LifecycleImpact lifecycleImpact;

    public SpecialEffectsController$FragmentStateManagerOperation(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, FragmentStateManager fragmentStateManager) {
        specialEffectsController$Operation$State.getClass();
        specialEffectsController$Operation$LifecycleImpact.getClass();
        Fragment fragment = fragmentStateManager.mFragment;
        specialEffectsController$Operation$State.getClass();
        specialEffectsController$Operation$LifecycleImpact.getClass();
        this.finalState = specialEffectsController$Operation$State;
        this.lifecycleImpact = specialEffectsController$Operation$LifecycleImpact;
        this.fragment = fragment;
        this.completionListeners = new ArrayList();
        this.isAwaitingContainerChanges = true;
        ArrayList arrayList = new ArrayList();
        this._effects = arrayList;
        this.effects = arrayList;
        this.fragmentStateManager = fragmentStateManager;
    }

    public final void cancel(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.isStarted = false;
        if (this.isCanceled) {
            return;
        }
        this.isCanceled = true;
        if (this._effects.isEmpty()) {
            complete$fragment_release();
            return;
        }
        for (SpecialEffectsController$Effect specialEffectsController$Effect : CollectionsKt.toList(this.effects)) {
            specialEffectsController$Effect.getClass();
            if (!specialEffectsController$Effect.isCancelled) {
                specialEffectsController$Effect.onCancel(viewGroup);
            }
            specialEffectsController$Effect.isCancelled = true;
        }
    }

    public final void complete$fragment_release() {
        this.isStarted = false;
        if (!this.isComplete) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.isComplete = true;
            Iterator it = this.completionListeners.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.fragment.mTransitioning = false;
        this.fragmentStateManager.moveToExpectedState();
    }

    public final void completeEffect(SpecialEffectsController$Effect specialEffectsController$Effect) {
        specialEffectsController$Effect.getClass();
        ArrayList arrayList = this._effects;
        if (arrayList.remove(specialEffectsController$Effect) && arrayList.isEmpty()) {
            complete$fragment_release();
        }
    }

    public final void mergeWith(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact) {
        specialEffectsController$Operation$State.getClass();
        specialEffectsController$Operation$LifecycleImpact.getClass();
        int i = SpecialEffectsController$Operation$WhenMappings.$EnumSwitchMapping$0[specialEffectsController$Operation$LifecycleImpact.ordinal()];
        Fragment fragment = this.fragment;
        if (i == 1) {
            if (this.finalState == SpecialEffectsController$Operation$State.REMOVED) {
                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.lifecycleImpact + " to ADDING.");
                }
                this.finalState = SpecialEffectsController$Operation$State.VISIBLE;
                this.lifecycleImpact = SpecialEffectsController$Operation$LifecycleImpact.ADDING;
                this.isAwaitingContainerChanges = true;
                return;
            }
            return;
        }
        if (i == 2) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.finalState + " -> REMOVED. mLifecycleImpact  = " + this.lifecycleImpact + " to REMOVING.");
            }
            this.finalState = SpecialEffectsController$Operation$State.REMOVED;
            this.lifecycleImpact = SpecialEffectsController$Operation$LifecycleImpact.REMOVING;
            this.isAwaitingContainerChanges = true;
            return;
        }
        if (i == 3 && this.finalState != SpecialEffectsController$Operation$State.REMOVED) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.finalState + " -> " + specialEffectsController$Operation$State + '.');
            }
            this.finalState = specialEffectsController$Operation$State;
        }
    }

    public final String toString() {
        StringBuilder m21m = Animation.CC.m21m("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        m21m.append(this.finalState);
        m21m.append(" lifecycleImpact = ");
        m21m.append(this.lifecycleImpact);
        m21m.append(" fragment = ");
        m21m.append(this.fragment);
        m21m.append('}');
        return m21m.toString();
    }
}
