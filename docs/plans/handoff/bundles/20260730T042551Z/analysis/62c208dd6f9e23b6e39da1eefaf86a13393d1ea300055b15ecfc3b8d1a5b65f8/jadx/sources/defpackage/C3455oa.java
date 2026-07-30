package defpackage;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: oa, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3455oa {

    /* renamed from: do, reason: not valid java name */
    public static final C3455oa f14801do;

    /* renamed from: if, reason: not valid java name */
    public static final C3455oa f14802if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14803do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String[] f14804do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f14805if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String[] f14806if;

    static {
        D7 d7 = D7.f503final;
        D7 d72 = D7.f509super;
        D7 d73 = D7.f511throw;
        D7 d74 = D7.f513while;
        D7 d75 = D7.f507import;
        D7 d76 = D7.f505goto;
        D7 d77 = D7.f494break;
        D7 d78 = D7.f510this;
        D7 d79 = D7.f496catch;
        D7 d710 = D7.f498const;
        D7 d711 = D7.f497class;
        D7[] d7Arr = {d7, d72, d73, d74, d75, d76, d77, d78, d79, d710, d711};
        D7[] d7Arr2 = {d7, d72, d73, d74, d75, d76, d77, d78, d79, d710, d711, D7.f495case, D7.f502else, D7.f508new, D7.f512try, D7.f506if, D7.f504for, D7.f500do};
        Cdo cdo = new Cdo(true);
        cdo.m7710do(d7Arr);
        EnumC4088zH enumC4088zH = EnumC4088zH.TLS_1_3;
        EnumC4088zH enumC4088zH2 = EnumC4088zH.TLS_1_2;
        cdo.m7711for(enumC4088zH, enumC4088zH2);
        cdo.f14809if = true;
        new C3455oa(cdo);
        Cdo cdo2 = new Cdo(true);
        cdo2.m7710do(d7Arr2);
        EnumC4088zH enumC4088zH3 = EnumC4088zH.TLS_1_0;
        cdo2.m7711for(enumC4088zH, enumC4088zH2, EnumC4088zH.TLS_1_1, enumC4088zH3);
        cdo2.f14809if = true;
        f14801do = new C3455oa(cdo2);
        Cdo cdo3 = new Cdo(true);
        cdo3.m7710do(d7Arr2);
        cdo3.m7711for(enumC4088zH3);
        cdo3.f14809if = true;
        new C3455oa(cdo3);
        f14802if = new C3455oa(new Cdo(false));
    }

    public C3455oa(Cdo cdo) {
        this.f14803do = cdo.f14807do;
        this.f14804do = cdo.f14808do;
        this.f14806if = cdo.f14810if;
        this.f14805if = cdo.f14809if;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7709do(SSLSocket sSLSocket) {
        if (!this.f14803do) {
            return false;
        }
        String[] strArr = this.f14806if;
        if (strArr != null && !SJ.m2150while(SJ.f3488do, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f14804do;
        return strArr2 == null || SJ.m2150while(D7.f499do, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3455oa)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C3455oa c3455oa = (C3455oa) obj;
        boolean z = c3455oa.f14803do;
        boolean z2 = this.f14803do;
        if (z2 != z) {
            return false;
        }
        return !z2 || (Arrays.equals(this.f14804do, c3455oa.f14804do) && Arrays.equals(this.f14806if, c3455oa.f14806if) && this.f14805if == c3455oa.f14805if);
    }

    public final int hashCode() {
        if (this.f14803do) {
            return ((((527 + Arrays.hashCode(this.f14804do)) * 31) + Arrays.hashCode(this.f14806if)) * 31) + (!this.f14805if ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        String str;
        List list;
        if (!this.f14803do) {
            return "ConnectionSpec()";
        }
        List list2 = null;
        String str2 = "[all enabled]";
        String[] strArr = this.f14804do;
        if (strArr != null) {
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                for (String str3 : strArr) {
                    arrayList.add(D7.m349do(str3));
                }
                list = DesugarCollections.unmodifiableList(arrayList);
            } else {
                list = null;
            }
            str = list.toString();
        } else {
            str = "[all enabled]";
        }
        String[] strArr2 = this.f14806if;
        if (strArr2 != null) {
            if (strArr2 != null) {
                ArrayList arrayList2 = new ArrayList(strArr2.length);
                for (String str4 : strArr2) {
                    arrayList2.add(EnumC4088zH.m8790do(str4));
                }
                list2 = DesugarCollections.unmodifiableList(arrayList2);
            }
            str2 = list2.toString();
        }
        StringBuilder m6919this = Cif.m6919this("ConnectionSpec(cipherSuites=", str, ", tlsVersions=", str2, ", supportsTlsExtensions=");
        m6919this.append(this.f14805if);
        m6919this.append(")");
        return m6919this.toString();
    }

    /* renamed from: oa$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final boolean f14807do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String[] f14808do;

        /* renamed from: if, reason: not valid java name */
        public boolean f14809if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String[] f14810if;

        public Cdo(boolean z) {
            this.f14807do = z;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m7710do(D7... d7Arr) {
            if (!this.f14807do) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[d7Arr.length];
            for (int i = 0; i < d7Arr.length; i++) {
                strArr[i] = d7Arr[i].f514do;
            }
            m7712if(strArr);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m7711for(EnumC4088zH... enumC4088zHArr) {
            if (!this.f14807do) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[enumC4088zHArr.length];
            for (int i = 0; i < enumC4088zHArr.length; i++) {
                strArr[i] = enumC4088zHArr[i].f16889break;
            }
            m7713new(strArr);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m7712if(String... strArr) {
            if (!this.f14807do) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f14808do = (String[]) strArr.clone();
        }

        /* renamed from: new, reason: not valid java name */
        public final void m7713new(String... strArr) {
            if (!this.f14807do) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f14810if = (String[]) strArr.clone();
        }

        public Cdo(C3455oa c3455oa) {
            this.f14807do = c3455oa.f14803do;
            this.f14808do = c3455oa.f14804do;
            this.f14810if = c3455oa.f14806if;
            this.f14809if = c3455oa.f14805if;
        }
    }
}
