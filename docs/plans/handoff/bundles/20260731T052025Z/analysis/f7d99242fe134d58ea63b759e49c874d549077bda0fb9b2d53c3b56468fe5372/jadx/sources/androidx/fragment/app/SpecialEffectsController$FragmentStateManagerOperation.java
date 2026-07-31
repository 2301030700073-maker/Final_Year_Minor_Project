package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import coil3.size.ViewSizeResolver;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i2);
        Fragment fragment = this.fragment;
        if (ordinal == 0) {
            if (this.finalState != 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + ViewSizeResolver.CC.stringValueOf$1(this.finalState) + " -> " + ViewSizeResolver.CC.stringValueOf$1(i) + '.');
                }
                this.finalState = i;
                return;
            }
            return;
        }
        if (ordinal == 1) {
            if (this.finalState == 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + ViewSizeResolver.CC.stringValueOf(this.lifecycleImpact) + " to ADDING.");
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
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + ViewSizeResolver.CC.stringValueOf$1(this.finalState) + " -> REMOVED. mLifecycleImpact  = " + ViewSizeResolver.CC.stringValueOf(this.lifecycleImpact) + " to REMOVING.");
        }
        this.finalState = 1;
        this.lifecycleImpact = 3;
        this.isAwaitingContainerChanges = true;
    }

    public final String toString() {
        StringBuilder m31m = CameraDevices$CC.m31m("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        m31m.append(ViewSizeResolver.CC.stringValueOf$1(this.finalState));
        m31m.append(" lifecycleImpact = ");
        m31m.append(ViewSizeResolver.CC.stringValueOf(this.lifecycleImpact));
        m31m.append(" fragment = ");
        m31m.append(this.fragment);
        m31m.append('}');
        return m31m.toString();
    }
}
