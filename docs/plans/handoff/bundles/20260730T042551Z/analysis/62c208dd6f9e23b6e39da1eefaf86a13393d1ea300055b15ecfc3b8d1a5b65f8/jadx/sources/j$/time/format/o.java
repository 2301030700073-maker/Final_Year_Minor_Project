package j$.time.format;

import j$.time.y;

/* loaded from: classes2.dex */
final class o implements g {
    private final j$.time.temporal.t a;

    o(a aVar) {
        this.a = aVar;
    }

    @Override // j$.time.format.g
    public final boolean i(r rVar, StringBuilder sb) {
        y yVar = (y) rVar.f(this.a);
        if (yVar == null) {
            return false;
        }
        sb.append(yVar.h());
        return true;
    }

    public final String toString() {
        return "ZoneRegionId()";
    }
}
