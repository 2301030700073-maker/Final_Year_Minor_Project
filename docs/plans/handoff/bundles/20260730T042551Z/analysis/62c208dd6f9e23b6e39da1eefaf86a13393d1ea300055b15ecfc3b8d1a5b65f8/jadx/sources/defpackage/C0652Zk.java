package defpackage;

import j$.util.Objects;
import java.util.HashSet;
import java.util.List;

/* renamed from: Zk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0652Zk {

    /* renamed from: do, reason: not valid java name */
    public final List<PH> f4896do;

    public C0652Zk(List<PH> list) {
        C0173Do.m401try(list, "topics");
        this.f4896do = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0652Zk)) {
            return false;
        }
        List<PH> list = this.f4896do;
        C0652Zk c0652Zk = (C0652Zk) obj;
        if (list.size() != c0652Zk.f4896do.size()) {
            return false;
        }
        return C0173Do.m394do(new HashSet(list), new HashSet(c0652Zk.f4896do));
    }

    public final int hashCode() {
        return Objects.hash(this.f4896do);
    }

    public final String toString() {
        return "Topics=" + this.f4896do;
    }
}
