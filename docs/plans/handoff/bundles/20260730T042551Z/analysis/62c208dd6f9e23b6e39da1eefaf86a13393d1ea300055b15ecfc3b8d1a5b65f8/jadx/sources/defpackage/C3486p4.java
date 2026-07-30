package defpackage;

import java.util.HashSet;
import java.util.Set;

/* renamed from: p4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3486p4 extends AbstractC3668sA {

    /* renamed from: do, reason: not valid java name */
    public final Set<AbstractC3492pA> f14878do;

    public C3486p4(HashSet hashSet) {
        this.f14878do = hashSet;
    }

    @Override // defpackage.AbstractC3668sA
    /* renamed from: do, reason: not valid java name */
    public final Set<AbstractC3492pA> mo7782do() {
        return this.f14878do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC3668sA) {
            return this.f14878do.equals(((AbstractC3668sA) obj).mo7782do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f14878do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f14878do + "}";
    }
}
