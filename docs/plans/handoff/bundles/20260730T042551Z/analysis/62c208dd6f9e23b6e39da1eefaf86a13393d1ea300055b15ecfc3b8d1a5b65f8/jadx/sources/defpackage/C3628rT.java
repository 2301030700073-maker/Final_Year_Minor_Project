package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.EnumMap;
import java.util.Iterator;

/* renamed from: rT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3628rT {

    /* renamed from: do, reason: not valid java name */
    public static final C3628rT f15276do = new C3628rT(100);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f15277do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumMap<Cdo, EnumC3746tT> f15278do;

    /* renamed from: rT$do, reason: invalid class name */
    public enum Cdo {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");


        /* renamed from: break, reason: not valid java name */
        public final String f15284break;

        Cdo(String str) {
            this.f15284break = str;
        }
    }

    public C3628rT(EnumMap<Cdo, EnumC3746tT> enumMap, int i) {
        EnumMap<Cdo, EnumC3746tT> enumMap2 = new EnumMap<>((Class<Cdo>) Cdo.class);
        this.f15278do = enumMap2;
        enumMap2.putAll(enumMap);
        this.f15277do = i;
    }

    /* renamed from: case, reason: not valid java name */
    public static EnumC3746tT m7948case(char c) {
        return c != '+' ? c != '0' ? c != '1' ? EnumC3746tT.UNINITIALIZED : EnumC3746tT.GRANTED : EnumC3746tT.DENIED : EnumC3746tT.POLICY;
    }

    /* renamed from: catch, reason: not valid java name */
    public static C3628rT m7949catch(String str) {
        return m7955new(100, str);
    }

    /* renamed from: do, reason: not valid java name */
    public static char m7950do(EnumC3746tT enumC3746tT) {
        if (enumC3746tT == null) {
            return '-';
        }
        int ordinal = enumC3746tT.ordinal();
        if (ordinal == 1) {
            return '+';
        }
        if (ordinal != 2) {
            return ordinal != 3 ? '-' : '1';
        }
        return '0';
    }

    /* renamed from: else, reason: not valid java name */
    public static EnumC3746tT m7951else(Boolean bool) {
        return bool == null ? EnumC3746tT.UNINITIALIZED : bool.booleanValue() ? EnumC3746tT.GRANTED : EnumC3746tT.DENIED;
    }

    /* renamed from: for, reason: not valid java name */
    public static C3628rT m7952for(int i, Bundle bundle) {
        if (bundle == null) {
            return new C3628rT(i);
        }
        EnumMap enumMap = new EnumMap(Cdo.class);
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            enumMap.put((EnumMap) cdo, (Cdo) m7953goto(bundle.getString(cdo.f15284break)));
        }
        return new C3628rT(enumMap, i);
    }

    /* renamed from: goto, reason: not valid java name */
    public static EnumC3746tT m7953goto(String str) {
        EnumC3746tT enumC3746tT = EnumC3746tT.UNINITIALIZED;
        return str == null ? enumC3746tT : str.equals("granted") ? EnumC3746tT.GRANTED : str.equals("denied") ? EnumC3746tT.DENIED : enumC3746tT;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m7954if(int i) {
        return i != -30 ? i != -20 ? i != -10 ? i != 0 ? i != 30 ? i != 90 ? i != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    /* renamed from: new, reason: not valid java name */
    public static C3628rT m7955new(int i, String str) {
        EnumMap enumMap = new EnumMap(Cdo.class);
        if (str == null) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        EnumC3687sT enumC3687sT = EnumC3687sT.STORAGE;
        int i2 = 0;
        while (true) {
            Cdo[] cdoArr = enumC3687sT.f15500do;
            if (i2 >= cdoArr.length) {
                return new C3628rT(enumMap, i);
            }
            Cdo cdo = cdoArr[i2];
            int i3 = i2 + 2;
            if (i3 < str.length()) {
                enumMap.put((EnumMap) cdo, (Cdo) m7948case(str.charAt(i3)));
            } else {
                enumMap.put((EnumMap) cdo, (Cdo) EnumC3746tT.UNINITIALIZED);
            }
            i2++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m7956this(int i, int i2) {
        return ((i == -20 && i2 == -30) || ((i == -30 && i2 == -20) || i == i2)) || i < i2;
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m7957break(Cdo cdo) {
        return this.f15278do.get(cdo) != EnumC3746tT.DENIED;
    }

    /* renamed from: class, reason: not valid java name */
    public final C3628rT m7958class(C3628rT c3628rT) {
        EnumMap enumMap = new EnumMap(Cdo.class);
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            EnumC3746tT enumC3746tT = this.f15278do.get(cdo);
            if (enumC3746tT == EnumC3746tT.UNINITIALIZED) {
                enumC3746tT = c3628rT.f15278do.get(cdo);
            }
            if (enumC3746tT != null) {
                enumMap.put((EnumMap) cdo, (Cdo) enumC3746tT);
            }
        }
        return new C3628rT(enumMap, this.f15277do);
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m7959const(C3628rT c3628rT, Cdo... cdoArr) {
        for (Cdo cdo : cdoArr) {
            EnumC3746tT enumC3746tT = this.f15278do.get(cdo);
            EnumC3746tT enumC3746tT2 = c3628rT.f15278do.get(cdo);
            EnumC3746tT enumC3746tT3 = EnumC3746tT.DENIED;
            if (enumC3746tT == enumC3746tT3 && enumC3746tT2 != enumC3746tT3) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3628rT)) {
            return false;
        }
        C3628rT c3628rT = (C3628rT) obj;
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            if (this.f15278do.get(cdo) != c3628rT.f15278do.get(cdo)) {
                return false;
            }
        }
        return this.f15277do == c3628rT.f15277do;
    }

    /* renamed from: final, reason: not valid java name */
    public final String m7960final() {
        int ordinal;
        StringBuilder sb = new StringBuilder("G1");
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            EnumC3746tT enumC3746tT = this.f15278do.get(cdo);
            char c = '-';
            if (enumC3746tT != null && (ordinal = enumC3746tT.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        c = '0';
                    } else if (ordinal != 3) {
                    }
                }
                c = '1';
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public final int hashCode() {
        int i = this.f15277do * 17;
        Iterator<EnumC3746tT> it = this.f15278do.values().iterator();
        while (it.hasNext()) {
            i = (i * 31) + it.next().hashCode();
        }
        return i;
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m7961import() {
        Iterator<EnumC3746tT> it = this.f15278do.values().iterator();
        while (it.hasNext()) {
            if (it.next() != EnumC3746tT.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public final String m7962super() {
        StringBuilder sb = new StringBuilder("G1");
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            sb.append(m7950do(this.f15278do.get(cdo)));
        }
        return sb.toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public final boolean m7963throw() {
        return m7957break(Cdo.AD_STORAGE);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(m7954if(this.f15277do));
        for (Cdo cdo : EnumC3687sT.STORAGE.f15500do) {
            sb.append(",");
            sb.append(cdo.f15284break);
            sb.append("=");
            EnumC3746tT enumC3746tT = this.f15278do.get(cdo);
            if (enumC3746tT == null) {
                enumC3746tT = EnumC3746tT.UNINITIALIZED;
            }
            sb.append(enumC3746tT);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[SYNTHETIC] */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3628rT m7964try(defpackage.C3628rT r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<rT$do> r1 = defpackage.C3628rT.Cdo.class
            r0.<init>(r1)
            sT r1 = defpackage.EnumC3687sT.STORAGE
            rT$do[] r1 = r1.f15500do
            int r2 = r1.length
            r3 = 0
        Ld:
            if (r3 >= r2) goto L4b
            r4 = r1[r3]
            java.util.EnumMap<rT$do, tT> r5 = r8.f15278do
            java.lang.Object r5 = r5.get(r4)
            tT r5 = (defpackage.EnumC3746tT) r5
            java.util.EnumMap<rT$do, tT> r6 = r9.f15278do
            java.lang.Object r6 = r6.get(r4)
            tT r6 = (defpackage.EnumC3746tT) r6
            if (r5 != 0) goto L24
            goto L33
        L24:
            if (r6 != 0) goto L27
            goto L43
        L27:
            tT r7 = defpackage.EnumC3746tT.UNINITIALIZED
            if (r5 != r7) goto L2c
            goto L33
        L2c:
            if (r6 != r7) goto L2f
            goto L43
        L2f:
            tT r7 = defpackage.EnumC3746tT.POLICY
            if (r5 != r7) goto L35
        L33:
            r5 = r6
            goto L43
        L35:
            if (r6 != r7) goto L38
            goto L43
        L38:
            tT r7 = defpackage.EnumC3746tT.DENIED
            if (r5 == r7) goto L42
            if (r6 != r7) goto L3f
            goto L42
        L3f:
            tT r5 = defpackage.EnumC3746tT.GRANTED
            goto L43
        L42:
            r5 = r7
        L43:
            if (r5 == 0) goto L48
            r0.put(r4, r5)
        L48:
            int r3 = r3 + 1
            goto Ld
        L4b:
            rT r9 = new rT
            r1 = 100
            r9.<init>(r0, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3628rT.m7964try(rT):rT");
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m7965while() {
        return m7957break(Cdo.ANALYTICS_STORAGE);
    }

    public C3628rT(int i) {
        EnumMap<Cdo, EnumC3746tT> enumMap = new EnumMap<>((Class<Cdo>) Cdo.class);
        this.f15278do = enumMap;
        enumMap.put((EnumMap<Cdo, EnumC3746tT>) Cdo.AD_STORAGE, (Cdo) m7951else(null));
        enumMap.put((EnumMap<Cdo, EnumC3746tT>) Cdo.ANALYTICS_STORAGE, (Cdo) m7951else(null));
        this.f15277do = i;
    }
}
