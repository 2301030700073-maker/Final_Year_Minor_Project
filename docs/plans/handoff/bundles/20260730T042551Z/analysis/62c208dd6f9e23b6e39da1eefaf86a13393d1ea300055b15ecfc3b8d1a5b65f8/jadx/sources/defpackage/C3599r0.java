package defpackage;

import com.facebook.internal.security.CertificateUtil;
import defpackage.C0237Gm;
import j$.util.DesugarCollections;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: r0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3599r0 {

    /* renamed from: do, reason: not valid java name */
    public final C0237Gm f15178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0317Ke f15179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Q2 f15180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3135j7 f15181do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Proxy f15182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ProxySelector f15183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<EnumC3538py> f15184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SocketFactory f15185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HostnameVerifier f15186do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SSLSocketFactory f15187do;

    /* renamed from: if, reason: not valid java name */
    public final List<C3455oa> f15188if;

    public C3599r0(String str, int i, InterfaceC0317Ke interfaceC0317Ke, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C3135j7 c3135j7, Q2 q2, Proxy proxy, List<EnumC3538py> list, List<C3455oa> list2, ProxySelector proxySelector) {
        C0237Gm.Cdo cdo = new C0237Gm.Cdo();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            cdo.f1237do = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
            }
            cdo.f1237do = "https";
        }
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        String m2137for = SJ.m2137for(C0237Gm.m745break(false, str, 0, str.length()));
        if (m2137for == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(str));
        }
        cdo.f1242new = m2137for;
        if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException(V1.m2494case("unexpected port: ", i));
        }
        cdo.f1236do = i;
        this.f15178do = cdo.m759do();
        if (interfaceC0317Ke == null) {
            throw new NullPointerException("dns == null");
        }
        this.f15179do = interfaceC0317Ke;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f15185do = socketFactory;
        if (q2 == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f15180do = q2;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f15184do = DesugarCollections.unmodifiableList(new ArrayList(list));
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f15188if = DesugarCollections.unmodifiableList(new ArrayList(list2));
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f15183do = proxySelector;
        this.f15182do = proxy;
        this.f15187do = sSLSocketFactory;
        this.f15186do = hostnameVerifier;
        this.f15181do = c3135j7;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m7930do(C3599r0 c3599r0) {
        return this.f15179do.equals(c3599r0.f15179do) && this.f15180do.equals(c3599r0.f15180do) && this.f15184do.equals(c3599r0.f15184do) && this.f15188if.equals(c3599r0.f15188if) && this.f15183do.equals(c3599r0.f15183do) && SJ.m2131catch(this.f15182do, c3599r0.f15182do) && SJ.m2131catch(this.f15187do, c3599r0.f15187do) && SJ.m2131catch(this.f15186do, c3599r0.f15186do) && SJ.m2131catch(this.f15181do, c3599r0.f15181do) && this.f15178do.f1228do == c3599r0.f15178do.f1228do;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3599r0) {
            C3599r0 c3599r0 = (C3599r0) obj;
            if (this.f15178do.equals(c3599r0.f15178do) && m7930do(c3599r0)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f15183do.hashCode() + ((this.f15188if.hashCode() + ((this.f15184do.hashCode() + ((this.f15180do.hashCode() + ((this.f15179do.hashCode() + ((this.f15178do.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Proxy proxy = this.f15182do;
        int hashCode2 = (hashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f15187do;
        int hashCode3 = (hashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f15186do;
        int hashCode4 = (hashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        C3135j7 c3135j7 = this.f15181do;
        return hashCode4 + (c3135j7 != null ? c3135j7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        C0237Gm c0237Gm = this.f15178do;
        sb.append(c0237Gm.f1234new);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(c0237Gm.f1228do);
        Proxy proxy = this.f15182do;
        if (proxy != null) {
            sb.append(", proxy=");
            sb.append(proxy);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f15183do);
        }
        sb.append("}");
        return sb.toString();
    }
}
