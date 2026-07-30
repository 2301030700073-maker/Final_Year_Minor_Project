package j$.time;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class ZoneOffset extends y implements j$.time.temporal.n, j$.time.temporal.o, Comparable<ZoneOffset> {
    private static final long serialVersionUID = 2357656521762053153L;
    private final int a;
    private final transient String b;
    private static final ConcurrentHashMap c = new ConcurrentHashMap(16, 0.75f, 4);
    private static final ConcurrentHashMap d = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = M(0);
    public static final ZoneOffset e = M(-64800);
    public static final ZoneOffset f = M(64800);

    private ZoneOffset(int i) {
        String sb;
        this.a = i;
        if (i == 0) {
            sb = "Z";
        } else {
            int abs = Math.abs(i);
            StringBuilder sb2 = new StringBuilder();
            int i2 = abs / 3600;
            int i3 = (abs / 60) % 60;
            sb2.append(i < 0 ? "-" : "+");
            sb2.append(i2 < 10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            sb2.append(i2);
            sb2.append(i3 < 10 ? ":0" : CertificateUtil.DELIMITER);
            sb2.append(i3);
            int i4 = abs % 60;
            if (i4 != 0) {
                sb2.append(i4 >= 10 ? CertificateUtil.DELIMITER : ":0");
                sb2.append(i4);
            }
            sb = sb2.toString();
        }
        this.b = sb;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.ZoneOffset K(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            j$.util.Objects.requireNonNull(r7, r0)
            j$.util.concurrent.ConcurrentHashMap r0 = j$.time.ZoneOffset.d
            java.lang.Object r0 = r0.get(r7)
            j$.time.ZoneOffset r0 = (j$.time.ZoneOffset) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r7.length()
            r1 = 0
            r2 = 2
            r3 = 1
            if (r0 == r2) goto L62
            r2 = 3
            if (r0 == r2) goto L7e
            r4 = 5
            if (r0 == r4) goto L59
            r5 = 6
            r6 = 4
            if (r0 == r5) goto L50
            r5 = 7
            if (r0 == r5) goto L43
            r2 = 9
            if (r0 != r2) goto L37
            int r0 = N(r7, r3, r1)
            int r2 = N(r7, r6, r3)
            int r3 = N(r7, r5, r3)
            goto L84
        L37:
            j$.time.d r0 = new j$.time.d
            java.lang.String r1 = "Invalid ID for ZoneOffset, invalid format: "
            java.lang.String r7 = r1.concat(r7)
            r0.<init>(r7)
            throw r0
        L43:
            int r0 = N(r7, r3, r1)
            int r2 = N(r7, r2, r1)
            int r3 = N(r7, r4, r1)
            goto L84
        L50:
            int r0 = N(r7, r3, r1)
            int r2 = N(r7, r6, r3)
            goto L83
        L59:
            int r0 = N(r7, r3, r1)
            int r2 = N(r7, r2, r1)
            goto L83
        L62:
            char r0 = r7.charAt(r1)
            char r7 = r7.charAt(r3)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r0 = "0"
            r2.append(r0)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
        L7e:
            int r0 = N(r7, r3, r1)
            r2 = 0
        L83:
            r3 = 0
        L84:
            char r1 = r7.charAt(r1)
            r4 = 43
            r5 = 45
            if (r1 == r4) goto L9d
            if (r1 != r5) goto L91
            goto L9d
        L91:
            j$.time.d r0 = new j$.time.d
            java.lang.String r1 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            java.lang.String r7 = r1.concat(r7)
            r0.<init>(r7)
            throw r0
        L9d:
            if (r1 != r5) goto La7
            int r7 = -r0
            int r0 = -r2
            int r1 = -r3
            j$.time.ZoneOffset r7 = L(r7, r0, r1)
            return r7
        La7:
            j$.time.ZoneOffset r7 = L(r0, r2, r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.ZoneOffset.K(java.lang.String):j$.time.ZoneOffset");
    }

    public static ZoneOffset L(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new d("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new d("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new d("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new d("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new d("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        }
        if (i3 < -59 || i3 > 59) {
            throw new d("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        }
        if (Math.abs(i) == 18 && (i2 | i3) != 0) {
            throw new d("Zone offset not in valid range: -18:00 to +18:00");
        }
        return M((i2 * 60) + (i * 3600) + i3);
    }

    public static ZoneOffset M(int i) {
        if (i < -64800 || i > 64800) {
            throw new d("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % 900 != 0) {
            return new ZoneOffset(i);
        }
        Integer valueOf = Integer.valueOf(i);
        ConcurrentHashMap concurrentHashMap = c;
        ZoneOffset zoneOffset = (ZoneOffset) concurrentHashMap.get(valueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        concurrentHashMap.putIfAbsent(valueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) concurrentHashMap.get(valueOf);
        d.putIfAbsent(zoneOffset2.b, zoneOffset2);
        return zoneOffset2;
    }

    private static int N(CharSequence charSequence, int i, boolean z) {
        if (z && charSequence.charAt(i - 1) != ':') {
            throw new d("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char charAt = charSequence.charAt(i);
        char charAt2 = charSequence.charAt(i + 1);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            return (charAt2 - '0') + ((charAt - '0') * 10);
        }
        throw new d("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
    }

    static ZoneOffset O(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? M(dataInput.readInt()) : M(readByte * 900);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 8, this);
    }

    @Override // j$.time.y
    public final j$.time.zone.f D() {
        return j$.time.zone.f.i(this);
    }

    @Override // j$.time.y
    final void H(DataOutput dataOutput) {
        dataOutput.writeByte(8);
        P(dataOutput);
    }

    public final int I(ZoneOffset zoneOffset) {
        return zoneOffset.a - this.a;
    }

    public final int J() {
        return this.a;
    }

    final void P(DataOutput dataOutput) {
        int i = this.a;
        int i2 = i % 900 == 0 ? i / 900 : ModuleDescriptor.MODULE_VERSION;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.a - this.a;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.OFFSET_SECONDS : rVar != null && rVar.i(this);
    }

    @Override // j$.time.y
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneOffset) {
            return this.a == ((ZoneOffset) obj).a;
        }
        return false;
    }

    @Override // j$.time.y
    public final String h() {
        return this.b;
    }

    @Override // j$.time.y
    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.a;
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        return j$.time.temporal.q.d(this, rVar).a(v(rVar), rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return mVar.c(this.a, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.y
    public final String toString() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.a;
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        return rVar.n(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return (tVar == j$.time.temporal.q.h() || tVar == j$.time.temporal.q.j()) ? this : j$.time.temporal.q.c(this, tVar);
    }
}
