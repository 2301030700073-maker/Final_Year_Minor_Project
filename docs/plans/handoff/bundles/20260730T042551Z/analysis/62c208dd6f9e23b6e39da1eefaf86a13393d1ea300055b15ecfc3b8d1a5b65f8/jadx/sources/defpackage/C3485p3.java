package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: p3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3485p3 extends AbstractC2907i5 {

    /* renamed from: do, reason: not valid java name */
    public final List<AbstractC0504Sq> f14877do;

    public C3485p3(ArrayList arrayList) {
        this.f14877do = arrayList;
    }

    @Override // defpackage.AbstractC2907i5
    /* renamed from: do */
    public final List<AbstractC0504Sq> mo6873do() {
        return this.f14877do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2907i5) {
            return this.f14877do.equals(((AbstractC2907i5) obj).mo6873do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f14877do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f14877do + "}";
    }
}
