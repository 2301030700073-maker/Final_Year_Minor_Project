package defpackage;

import java.util.NoSuchElementException;

/* renamed from: kr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3236kr extends AbstractC2950ir {

    /* renamed from: do, reason: not valid java name */
    public final long f14053do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14054do;

    /* renamed from: for, reason: not valid java name */
    public long f14055for;

    /* renamed from: if, reason: not valid java name */
    public final long f14056if;

    public C3236kr(long j, long j2, long j3) {
        this.f14053do = j3;
        this.f14056if = j2;
        boolean z = true;
        if (j3 <= 0 ? j < j2 : j > j2) {
            z = false;
        }
        this.f14054do = z;
        this.f14055for = z ? j : j2;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f14054do;
    }

    @Override // defpackage.AbstractC2950ir
    public final long nextLong() {
        long j = this.f14055for;
        if (j != this.f14056if) {
            this.f14055for = this.f14053do + j;
        } else {
            if (!this.f14054do) {
                throw new NoSuchElementException();
            }
            this.f14054do = false;
        }
        return j;
    }
}
