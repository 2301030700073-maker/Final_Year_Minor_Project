package defpackage;

import defpackage.C3455oa;
import defpackage.C3947wv;
import defpackage.D7;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: pa, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3514pa {

    /* renamed from: do, reason: not valid java name */
    public int f14936do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<C3455oa> f14937do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14938do;

    /* renamed from: if, reason: not valid java name */
    public boolean f14939if;

    public C3514pa(List<C3455oa> list) {
        this.f14937do = list;
    }

    /* renamed from: do, reason: not valid java name */
    public final C3455oa m7795do(SSLSocket sSLSocket) {
        C3455oa c3455oa;
        boolean z;
        int i = this.f14936do;
        List<C3455oa> list = this.f14937do;
        int size = list.size();
        while (true) {
            if (i >= size) {
                c3455oa = null;
                break;
            }
            c3455oa = list.get(i);
            if (c3455oa.m7709do(sSLSocket)) {
                this.f14936do = i + 1;
                break;
            }
            i++;
        }
        if (c3455oa == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f14939if + ", modes=" + list + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        int i2 = this.f14936do;
        while (true) {
            if (i2 >= list.size()) {
                z = false;
                break;
            }
            if (list.get(i2).m7709do(sSLSocket)) {
                z = true;
                break;
            }
            i2++;
        }
        this.f14938do = z;
        C3947wv.Cdo cdo = AbstractC4058yo.f16832do;
        boolean z2 = this.f14939if;
        cdo.getClass();
        String[] strArr = c3455oa.f14804do;
        String[] m2146super = strArr != null ? SJ.m2146super(D7.f499do, sSLSocket.getEnabledCipherSuites(), strArr) : sSLSocket.getEnabledCipherSuites();
        String[] strArr2 = c3455oa.f14806if;
        String[] m2146super2 = strArr2 != null ? SJ.m2146super(SJ.f3488do, sSLSocket.getEnabledProtocols(), strArr2) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        D7.Cdo cdo2 = D7.f499do;
        byte[] bArr = SJ.f3495do;
        int length = supportedCipherSuites.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            }
            if (cdo2.compare(supportedCipherSuites[i3], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i3++;
        }
        if (z2 && i3 != -1) {
            String str = supportedCipherSuites[i3];
            int length2 = m2146super.length + 1;
            String[] strArr3 = new String[length2];
            System.arraycopy(m2146super, 0, strArr3, 0, m2146super.length);
            strArr3[length2 - 1] = str;
            m2146super = strArr3;
        }
        C3455oa.Cdo cdo3 = new C3455oa.Cdo(c3455oa);
        cdo3.m7712if(m2146super);
        cdo3.m7713new(m2146super2);
        C3455oa c3455oa2 = new C3455oa(cdo3);
        String[] strArr4 = c3455oa2.f14806if;
        if (strArr4 != null) {
            sSLSocket.setEnabledProtocols(strArr4);
        }
        String[] strArr5 = c3455oa2.f14804do;
        if (strArr5 != null) {
            sSLSocket.setEnabledCipherSuites(strArr5);
        }
        return c3455oa;
    }
}
