package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: b4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0729b4 extends AbstractC0770bm {

    /* renamed from: do, reason: not valid java name */
    public final String f8323do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<String> f8324do;

    public C0729b4(String str, ArrayList arrayList) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f8323do = str;
        this.f8324do = arrayList;
    }

    @Override // defpackage.AbstractC0770bm
    /* renamed from: do, reason: not valid java name */
    public final List<String> mo4809do() {
        return this.f8324do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0770bm)) {
            return false;
        }
        AbstractC0770bm abstractC0770bm = (AbstractC0770bm) obj;
        return this.f8323do.equals(abstractC0770bm.mo4810if()) && this.f8324do.equals(abstractC0770bm.mo4809do());
    }

    public final int hashCode() {
        return ((this.f8323do.hashCode() ^ 1000003) * 1000003) ^ this.f8324do.hashCode();
    }

    @Override // defpackage.AbstractC0770bm
    /* renamed from: if, reason: not valid java name */
    public final String mo4810if() {
        return this.f8323do;
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f8323do + ", usedDates=" + this.f8324do + "}";
    }
}
