package defpackage;

import android.view.accessibility.AccessibilityManager;

/* renamed from: synchronized, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csynchronized implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final Cinstanceof f15577do;

    public Csynchronized(Cinstanceof cinstanceof) {
        this.f15577do = cinstanceof;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Csynchronized) {
            return this.f15577do.equals(((Csynchronized) obj).f15577do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15577do.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        this.f15577do.onTouchExplorationStateChanged(z);
    }
}
