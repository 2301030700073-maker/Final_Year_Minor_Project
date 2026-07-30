package defpackage;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: pI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3500pI {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"UnknownNullness"})
    public final View f14904do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f14906do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Transition> f14905do = new ArrayList<>();

    @Deprecated
    public C3500pI() {
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3500pI)) {
            return false;
        }
        C3500pI c3500pI = (C3500pI) obj;
        return this.f14904do == c3500pI.f14904do && this.f14906do.equals(c3500pI.f14906do);
    }

    public final int hashCode() {
        return this.f14906do.hashCode() + (this.f14904do.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder m6916goto = Cif.m6916goto("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        m6916goto.append(this.f14904do);
        m6916goto.append("\n");
        String m7816case = Cpublic.m7816case(m6916goto.toString(), "    values:");
        HashMap hashMap = this.f14906do;
        for (String str : hashMap.keySet()) {
            m7816case = m7816case + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return m7816case;
    }

    public C3500pI(View view) {
        this.f14904do = view;
    }
}
