package defpackage;

/* renamed from: mf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3342mf implements Comparable<C3342mf> {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f14376for = 0;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final long f14377for;

    /* renamed from: if, reason: not valid java name */
    public static final long f14378if;

    /* renamed from: do, reason: not valid java name */
    public final long f14379do;

    static {
        int i = C3401nf.f14545do;
        f14378if = Long.MAX_VALUE;
        f14377for = -9223372036854775805L;
    }

    /* renamed from: case, reason: not valid java name */
    public static final boolean m7460case(long j) {
        return j == f14378if || j == f14377for;
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m7461do(StringBuilder sb, int i, int i2, int i3, String str) {
        CharSequence charSequence;
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String valueOf = String.valueOf(i2);
            C0173Do.m401try(valueOf, "<this>");
            if (i3 < 0) {
                throw new IllegalArgumentException(Creturn.m7981if("Desired length ", i3, " is less than zero."));
            }
            if (i3 <= valueOf.length()) {
                charSequence = valueOf.subSequence(0, valueOf.length());
            } else {
                StringBuilder sb2 = new StringBuilder(i3);
                C3881vo c3881vo = new C3881vo(1, i3 - valueOf.length());
                C3822uo c3822uo = new C3822uo(1, c3881vo.f15769new, c3881vo.f15770try);
                while (c3822uo.f15951do) {
                    c3822uo.nextInt();
                    sb2.append('0');
                }
                sb2.append((CharSequence) valueOf);
                charSequence = sb2;
            }
            String obj = charSequence.toString();
            int i4 = -1;
            int length = obj.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (obj.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (i6 < 3) {
                sb.append((CharSequence) obj, 0, i6);
            } else {
                sb.append((CharSequence) obj, 0, ((i6 + 2) / 3) * 3);
            }
        }
        sb.append(str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static final long m7462goto(long j, EnumC3460of enumC3460of) {
        C0173Do.m401try(enumC3460of, "unit");
        if (j == f14378if) {
            return Long.MAX_VALUE;
        }
        if (j == f14377for) {
            return Long.MIN_VALUE;
        }
        long j2 = j >> 1;
        EnumC3460of enumC3460of2 = (((int) j) & 1) == 0 ? EnumC3460of.NANOSECONDS : EnumC3460of.MILLISECONDS;
        C0173Do.m401try(enumC3460of2, "sourceUnit");
        return enumC3460of.f14822do.convert(j2, enumC3460of2.f14822do);
    }

    @Override // java.lang.Comparable
    public final int compareTo(C3342mf c3342mf) {
        long j = c3342mf.f14379do;
        long j2 = this.f14379do;
        long j3 = j2 ^ j;
        if (j3 >= 0 && (((int) j3) & 1) != 0) {
            int i = (((int) j2) & 1) - (((int) j) & 1);
            return (j2 < 0 ? 1 : 0) != 0 ? -i : i;
        }
        if (j2 < j) {
            r11 = -1;
        } else if (j2 != j) {
            r11 = 1;
        }
        return r11;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3342mf) {
            return this.f14379do == ((C3342mf) obj).f14379do;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f14379do;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        boolean z;
        int m7462goto;
        StringBuilder sb;
        long j;
        int i;
        int i2;
        int i3;
        long j2 = this.f14379do;
        if (j2 == 0) {
            return "0s";
        }
        if (j2 == f14378if) {
            return "Infinity";
        }
        if (j2 == f14377for) {
            return "-Infinity";
        }
        boolean z2 = j2 < 0;
        StringBuilder sb2 = new StringBuilder();
        if (z2) {
            sb2.append('-');
        }
        if (j2 < 0) {
            j2 = (((int) j2) & 1) + ((-(j2 >> 1)) << 1);
            int i4 = C3401nf.f14545do;
        }
        long m7462goto2 = m7462goto(j2, EnumC3460of.DAYS);
        int m7462goto3 = m7460case(j2) ? 0 : (int) (m7462goto(j2, EnumC3460of.HOURS) % 24);
        if (m7460case(j2)) {
            z = z2;
            m7462goto = 0;
        } else {
            z = z2;
            m7462goto = (int) (m7462goto(j2, EnumC3460of.MINUTES) % 60);
        }
        int m7462goto4 = m7460case(j2) ? 0 : (int) (m7462goto(j2, EnumC3460of.SECONDS) % 60);
        if (m7460case(j2)) {
            sb = sb2;
            i = 0;
        } else {
            boolean z3 = (((int) j2) & 1) == 1;
            long j3 = j2 >> 1;
            if (z3) {
                sb = sb2;
                j = (j3 % 1000) * 1000000;
            } else {
                sb = sb2;
                j = j3 % 1000000000;
            }
            i = (int) j;
        }
        boolean z4 = m7462goto2 != 0;
        boolean z5 = m7462goto3 != 0;
        boolean z6 = m7462goto != 0;
        boolean z7 = (m7462goto4 == 0 && i == 0) ? false : true;
        if (z4) {
            sb.append(m7462goto2);
            sb.append('d');
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (z5 || (z4 && (z6 || z7))) {
            int i5 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(m7462goto3);
            sb.append('h');
            i2 = i5;
        }
        if (z6 || (z7 && (z5 || z4))) {
            int i6 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(m7462goto);
            sb.append('m');
            i2 = i6;
        }
        if (z7) {
            i3 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            if (m7462goto4 != 0 || z4 || z5 || z6) {
                m7461do(sb, m7462goto4, i, 9, "s");
            } else if (i >= 1000000) {
                m7461do(sb, i / 1000000, i % 1000000, 6, "ms");
            } else if (i >= 1000) {
                m7461do(sb, i / 1000, i % 1000, 3, "us");
            } else {
                sb.append(i);
                sb.append("ns");
            }
        } else {
            i3 = i2;
        }
        if (z && i3 > 1) {
            sb.insert(1, '(').append(')');
        }
        String sb3 = sb.toString();
        C0173Do.m399new(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }
}
