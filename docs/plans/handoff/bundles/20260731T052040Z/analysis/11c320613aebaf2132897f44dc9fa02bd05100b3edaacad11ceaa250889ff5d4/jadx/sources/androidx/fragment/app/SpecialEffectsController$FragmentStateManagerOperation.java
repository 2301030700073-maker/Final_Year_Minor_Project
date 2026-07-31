package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SpecialEffectsController$FragmentStateManagerOperation {
    public final ArrayList _effects;
    public final ArrayList completionListeners;
    public final ArrayList effects;
    public int finalState;
    public final Fragment fragment;
    public final FragmentStateManager fragmentStateManager;
    public boolean isAwaitingContainerChanges;
    public boolean isCanceled;
    public boolean isComplete;
    public boolean isSeeking;
    public boolean isStarted;
    public int lifecycleImpact;

    public SpecialEffectsController$FragmentStateManagerOperation(int i, int i2, FragmentStateManager fragmentStateManager) {
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            throw null;
        }
        Fragment fragment = fragmentStateManager.mFragment;
        fragment.getClass();
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            throw null;
        }
        fragment.getClass();
        this.finalState = i;
        this.lifecycleImpact = i2;
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
            if (FragmentManager.isLoggingEnabled(2)) {
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

    public final void mergeWith(int i, int i2) {
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            throw null;
        }
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i2);
        Fragment fragment = this.fragment;
        if (ordinal == 0) {
            if (this.finalState != 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + Owner.CC.stringValueOf$2(this.finalState) + " -> " + Owner.CC.stringValueOf$2(i) + '.');
                }
                this.finalState = i;
                return;
            }
            return;
        }
        if (ordinal == 1) {
            if (this.finalState == 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + Owner.CC.stringValueOf$1(this.lifecycleImpact) + " to ADDING.");
                }
                this.finalState = 2;
                this.lifecycleImpact = 2;
                this.isAwaitingContainerChanges = true;
                return;
            }
            return;
        }
        if (ordinal != 2) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + Owner.CC.stringValueOf$2(this.finalState) + " -> REMOVED. mLifecycleImpact  = " + Owner.CC.stringValueOf$1(this.lifecycleImpact) + " to REMOVING.");
        }
        this.finalState = 1;
        this.lifecycleImpact = 3;
        this.isAwaitingContainerChanges = true;
    }

    public final String toString() {
        StringBuilder m180m = Modifier.CC.m180m("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        m180m.append(Owner.CC.stringValueOf$2(this.finalState));
        m180m.append(" lifecycleImpact = ");
        m180m.append(Owner.CC.stringValueOf$1(this.lifecycleImpact));
        m180m.append(" fragment = ");
        m180m.append(this.fragment);
        m180m.append('}');
        return m180m.toString();
    }
}
