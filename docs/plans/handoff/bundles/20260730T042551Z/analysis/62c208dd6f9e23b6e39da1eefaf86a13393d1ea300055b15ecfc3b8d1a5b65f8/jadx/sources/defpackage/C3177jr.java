package defpackage;

import java.util.Iterator;

/* renamed from: jr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3177jr implements Iterable<Long>, InterfaceC3941wp {

    /* renamed from: do, reason: not valid java name */
    public final long f13809do;

    /* renamed from: for, reason: not valid java name */
    public final long f13810for;

    /* renamed from: if, reason: not valid java name */
    public final long f13811if;

    public C3177jr(long j, long j2) {
        this.f13809do = j;
        if (j < j2) {
            long j3 = j2 % 1;
            long j4 = j % 1;
            long j5 = ((j3 < 0 ? j3 + 1 : j3) - (j4 < 0 ? j4 + 1 : j4)) % 1;
            j2 -= j5 < 0 ? j5 + 1 : j5;
        }
        this.f13811if = j2;
        this.f13810for = 1L;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return new C3236kr(this.f13809do, this.f13811if, this.f13810for);
    }
}
