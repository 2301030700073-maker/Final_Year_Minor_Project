package j$.time;

import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements TemporalAccessor, TemporalAdjuster, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;
    public final int b;
    public final transient String c;
    public static final ConcurrentHashMap d = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ConcurrentHashMap e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = D(0);
    public static final ZoneOffset f = D(-64800);
    public static final ZoneOffset g = D(64800);

    public ZoneOffset(int i) {
        String sb;
        this.b = i;
        if (i == 0) {
            sb = "Z";
        } else {
            int abs = Math.abs(i);
            int i2 = abs / 3600;
            int i3 = (abs / 60) % 60;
            StringBuilder sb2 = new StringBuilder(i < 0 ? "-" : "+");
            sb2.append(i2 < 10 ? "0" : "");
            sb2.append(i2);
            sb2.append(i3 < 10 ? ":0" : ":");
            sb2.append(i3);
            int i4 = abs % 60;
            if (i4 != 0) {
                sb2.append(i4 < 10 ? ":0" : ":");
                sb2.append(i4);
            }
            sb = sb2.toString();
        }
        this.c = sb;
    }

    public static ZoneOffset A(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        ZoneOffset zoneOffset = (ZoneOffset) temporal.i(j$.time.temporal.o.d);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        h.g("Unable to obtain ZoneOffset from TemporalAccessor: ", temporal, " of type ", temporal.getClass().getName());
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.ZoneOffset B(java.lang.String r8) {
        /*
            java.lang.String r0 = "offsetId"
            j$.util.Objects.requireNonNull(r8, r0)
            j$.util.concurrent.ConcurrentHashMap r0 = j$.time.ZoneOffset.e
            java.lang.Object r0 = r0.get(r8)
            j$.time.ZoneOffset r0 = (j$.time.ZoneOffset) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r8.length()
            r1 = 2
            r2 = 0
            r3 = 1
            r4 = 0
            if (r0 == r1) goto L62
            r1 = 3
            if (r0 == r1) goto L7e
            r5 = 5
            if (r0 == r5) goto L59
            r6 = 6
            r7 = 4
            if (r0 == r6) goto L4f
            r6 = 7
            if (r0 == r6) goto L42
            r1 = 9
            if (r0 != r1) goto L38
            int r0 = E(r8, r3, r4)
            int r1 = E(r8, r7, r3)
            int r3 = E(r8, r6, r3)
            goto L84
        L38:
            java.lang.String r0 = "Invalid ID for ZoneOffset, invalid format: "
            java.lang.String r8 = r0.concat(r8)
            j$.time.h.k(r8)
            return r2
        L42:
            int r0 = E(r8, r3, r4)
            int r1 = E(r8, r1, r4)
            int r3 = E(r8, r5, r4)
            goto L84
        L4f:
            int r0 = E(r8, r3, r4)
            int r1 = E(r8, r7, r3)
        L57:
            r3 = r4
            goto L84
        L59:
            int r0 = E(r8, r3, r4)
            int r1 = E(r8, r1, r4)
            goto L57
        L62:
            char r0 = r8.charAt(r4)
            char r8 = r8.charAt(r3)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "0"
            r1.append(r0)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
        L7e:
            int r0 = E(r8, r3, r4)
            r1 = r4
            r3 = r1
        L84:
            char r4 = r8.charAt(r4)
            r5 = 43
            r6 = 45
            if (r4 == r5) goto L9b
            if (r4 != r6) goto L91
            goto L9b
        L91:
            java.lang.String r0 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            java.lang.String r8 = r0.concat(r8)
            j$.time.h.k(r8)
            return r2
        L9b:
            if (r4 != r6) goto La5
            int r8 = -r0
            int r0 = -r1
            int r1 = -r3
            j$.time.ZoneOffset r8 = C(r8, r0, r1)
            return r8
        La5:
            j$.time.ZoneOffset r8 = C(r0, r1, r3)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.ZoneOffset.B(java.lang.String):j$.time.ZoneOffset");
    }

    public static ZoneOffset C(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            h.e("Zone offset hours not in valid range: value ", i, " is not in the range -18 to 18");
            return null;
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                h.k("Zone offset minutes and seconds must be positive because hours is positive");
                return null;
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                h.k("Zone offset minutes and seconds must be negative because hours is negative");
                return null;
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            h.k("Zone offset minutes and seconds must have the same sign");
            return null;
        }
        if (i2 < -59 || i2 > 59) {
            h.e("Zone offset minutes not in valid range: value ", i2, " is not in the range -59 to 59");
            return null;
        }
        if (i3 < -59 || i3 > 59) {
            h.e("Zone offset seconds not in valid range: value ", i3, " is not in the range -59 to 59");
            return null;
        }
        if (Math.abs(i) != 18 || (i2 | i3) == 0) {
            return D((i2 * 60) + (i * 3600) + i3);
        }
        h.k("Zone offset not in valid range: -18:00 to +18:00");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ZoneOffset D(int i) {
        if (i < -64800 || i > 64800) {
            h.k("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        if (i % 900 != 0) {
            return new ZoneOffset(i);
        }
        Integer valueOf = Integer.valueOf(i);
        ConcurrentHashMap concurrentHashMap = d;
        ZoneOffset zoneOffset = (ZoneOffset) concurrentHashMap.get(valueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        concurrentHashMap.putIfAbsent(valueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) concurrentHashMap.get(valueOf);
        e.putIfAbsent(zoneOffset2.c, zoneOffset2);
        return zoneOffset2;
    }

    public static int E(CharSequence charSequence, int i, boolean z) {
        if (z && charSequence.charAt(i - 1) != ':') {
            h.j(charSequence, "Invalid ID for ZoneOffset, colon not found when expected: ");
            return 0;
        }
        char charAt = charSequence.charAt(i);
        char charAt2 = charSequence.charAt(i + 1);
        if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9') {
            h.j(charSequence, "Invalid ID for ZoneOffset, non numeric characters found: ");
            return 0;
        }
        return (charAt2 - '0') + ((charAt - '0') * 10);
    }

    public static ZoneOffset F(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? D(dataInput.readInt()) : D(readByte * 900);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new r((byte) 8, this);
    }

    public final void G(DataOutput dataOutput) {
        int i = this.b;
        int i2 = i % 900 == 0 ? i / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.OFFSET_SECONDS : nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.b - this.b;
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.b == ((ZoneOffset) obj).b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.b;
        }
        if (nVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
        return j$.time.temporal.o.d(this, nVar).a(q(nVar), nVar);
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        return (fVar == j$.time.temporal.o.d || fVar == j$.time.temporal.o.e) ? this : j$.time.temporal.o.c(this, fVar);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(this.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.b;
        }
        if (nVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
        return nVar.i(this);
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.c;
    }

    @Override // j$.time.ZoneId
    public final j$.time.zone.f v() {
        Objects.requireNonNull(this, "offset");
        return new j$.time.zone.f(this);
    }

    @Override // j$.time.ZoneId
    public final void z(DataOutput dataOutput) {
        dataOutput.writeByte(8);
        G(dataOutput);
    }
}
