package defpackage;

import java.util.HashSet;
import java.util.Set;

/* renamed from: s3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3661s3 extends N9 {

    /* renamed from: do, reason: not valid java name */
    public final Set<String> f15373do;

    public C3661s3(HashSet hashSet) {
        this.f15373do = hashSet;
    }

    @Override // defpackage.N9
    /* renamed from: do */
    public final Set<String> mo1506do() {
        return this.f15373do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof N9) {
            return this.f15373do.equals(((N9) obj).mo1506do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f15373do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "ConfigUpdate{updatedKeys=" + this.f15373do + "}";
    }
}
