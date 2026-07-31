package androidx.transition;

import android.view.View;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TransitionValues {
    public final View view;
    public final HashMap values = new HashMap();
    public final ArrayList mTargetedTransitions = new ArrayList();

    public TransitionValues(View view) {
        this.view = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public final int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        m.append(this.view);
        m.append("\n");
        String concat = m.toString().concat("    values:");
        HashMap hashMap = this.values;
        for (String str : hashMap.keySet()) {
            concat = concat + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return concat;
    }
}
