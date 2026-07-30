package defpackage;

import defpackage.AbstractC3755tg;
import defpackage.Q2;
import j$.util.DesugarCollections;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: wv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3947wv implements Cloneable {

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public final int f16433case;

    /* renamed from: do, reason: not valid java name */
    public final C0141Ce f16434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0317Ke f16435do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Q2 f16436do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0818cb f16437do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3134j6 f16438do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3135j7 f16439do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Proxy f16440do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ProxySelector f16441do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<EnumC3538py> f16442do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SocketFactory f16443do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HostnameVerifier f16444do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SSLSocketFactory f16445do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3337ma f16446do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3755tg.Cif f16447do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16448do;

    /* renamed from: else, reason: not valid java name */
    public final int f16449else;

    /* renamed from: for, reason: not valid java name */
    public final int f16450for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final List<InterfaceC3940wo> f16451for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f16452for;

    /* renamed from: if, reason: not valid java name */
    public final Q2 f16453if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final List<C3455oa> f16454if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f16455if;

    /* renamed from: new, reason: not valid java name */
    public final int f16456new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final List<InterfaceC3940wo> f16457new;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final int f16458try;

    /* renamed from: try, reason: not valid java name */
    public static final List<EnumC3538py> f16432try = SJ.m2136final(EnumC3538py.HTTP_2, EnumC3538py.HTTP_1_1);

    /* renamed from: case, reason: not valid java name */
    public static final List<C3455oa> f16431case = SJ.m2136final(C3455oa.f14801do, C3455oa.f14802if);

    /* renamed from: wv$do, reason: invalid class name */
    public class Cdo extends AbstractC4058yo {
        /* renamed from: do, reason: not valid java name */
        public final Socket m8595do(C3337ma c3337ma, C3599r0 c3599r0, C3732tF c3732tF) {
            Iterator it = c3337ma.f14357do.iterator();
            while (it.hasNext()) {
                Wy wy = (Wy) it.next();
                if (wy.m2785else(c3599r0, null)) {
                    if ((wy.f4422do != null) && wy != c3732tF.m8237if()) {
                        if (c3732tF.f15677do != null || c3732tF.f15671do.f4420do.size() != 1) {
                            throw new IllegalStateException();
                        }
                        Reference reference = (Reference) c3732tF.f15671do.f4420do.get(0);
                        Socket m8235for = c3732tF.m8235for(true, false, false);
                        c3732tF.f15671do = wy;
                        wy.f4420do.add(reference);
                        return m8235for;
                    }
                }
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public final Wy m8596if(C3337ma c3337ma, C3599r0 c3599r0, C3732tF c3732tF, QA qa) {
            Iterator it = c3337ma.f14357do.iterator();
            while (it.hasNext()) {
                Wy wy = (Wy) it.next();
                if (wy.m2785else(c3599r0, qa)) {
                    c3732tF.m8233do(wy, true);
                    return wy;
                }
            }
            return null;
        }
    }

    static {
        AbstractC4058yo.f16832do = new Cdo();
    }

    public C3947wv() {
        this(new Cif());
    }

    public C3947wv(Cif cif) {
        boolean z;
        this.f16434do = cif.f16460do;
        this.f16440do = cif.f16466do;
        this.f16442do = cif.f16469do;
        List<C3455oa> list = cif.f16481if;
        this.f16454if = list;
        this.f16451for = DesugarCollections.unmodifiableList(new ArrayList(cif.f16468do));
        this.f16457new = DesugarCollections.unmodifiableList(new ArrayList(cif.f16480if));
        this.f16447do = cif.f16474do;
        this.f16441do = cif.f16467do;
        this.f16437do = cif.f16463do;
        this.f16443do = cif.f16470do;
        Iterator<C3455oa> it = list.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().f14803do;
            }
        }
        SSLSocketFactory sSLSocketFactory = cif.f16472do;
        if (sSLSocketFactory == null && z) {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length == 1) {
                    TrustManager trustManager = trustManagers[0];
                    if (trustManager instanceof X509TrustManager) {
                        X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                        try {
                            Ow ow = Ow.f2691do;
                            SSLContext mo1712goto = ow.mo1712goto();
                            mo1712goto.init(null, new TrustManager[]{x509TrustManager}, null);
                            this.f16445do = mo1712goto.getSocketFactory();
                            this.f16438do = ow.mo1711for(x509TrustManager);
                        } catch (GeneralSecurityException e) {
                            throw SJ.m2134do("No System TLS", e);
                        }
                    }
                }
                throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
            } catch (GeneralSecurityException e2) {
                throw SJ.m2134do("No System TLS", e2);
            }
        }
        this.f16445do = sSLSocketFactory;
        this.f16438do = cif.f16464do;
        SSLSocketFactory sSLSocketFactory2 = this.f16445do;
        if (sSLSocketFactory2 != null) {
            Ow.f2691do.mo1714try(sSLSocketFactory2);
        }
        this.f16444do = cif.f16471do;
        AbstractC3134j6 abstractC3134j6 = this.f16438do;
        C3135j7 c3135j7 = cif.f16465do;
        this.f16439do = SJ.m2131catch(c3135j7.f13639do, abstractC3134j6) ? c3135j7 : new C3135j7(c3135j7.f13640do, abstractC3134j6);
        this.f16436do = cif.f16462do;
        this.f16453if = cif.f16479if;
        this.f16446do = cif.f16473do;
        this.f16435do = cif.f16461do;
        this.f16448do = cif.f16475do;
        this.f16455if = cif.f16482if;
        this.f16452for = cif.f16477for;
        this.f16450for = cif.f16459do;
        this.f16456new = cif.f16478if;
        this.f16458try = cif.f16476for;
        this.f16433case = cif.f16483new;
        this.f16449else = cif.f16484try;
        if (this.f16451for.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f16451for);
        }
        if (this.f16457new.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f16457new);
        }
    }

    /* renamed from: wv$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f16459do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C0141Ce f16460do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC0317Ke f16461do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Q2 f16462do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC0818cb f16463do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AbstractC3134j6 f16464do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3135j7 f16465do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Proxy f16466do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ProxySelector f16467do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f16468do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<EnumC3538py> f16469do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SocketFactory f16470do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HostnameVerifier f16471do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SSLSocketFactory f16472do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3337ma f16473do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AbstractC3755tg.Cif f16474do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f16475do;

        /* renamed from: for, reason: not valid java name */
        public int f16476for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final boolean f16477for;

        /* renamed from: if, reason: not valid java name */
        public int f16478if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Q2 f16479if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final ArrayList f16480if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final List<C3455oa> f16481if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final boolean f16482if;

        /* renamed from: new, reason: not valid java name */
        public int f16483new;

        /* renamed from: try, reason: not valid java name */
        public final int f16484try;

        public Cif() {
            this.f16468do = new ArrayList();
            this.f16480if = new ArrayList();
            this.f16460do = new C0141Ce();
            this.f16469do = C3947wv.f16432try;
            this.f16481if = C3947wv.f16431case;
            this.f16474do = new C3814ug();
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f16467do = proxySelector;
            if (proxySelector == null) {
                this.f16467do = new C3358mv();
            }
            this.f16463do = InterfaceC0818cb.f8564do;
            this.f16470do = SocketFactory.getDefault();
            this.f16471do = C3888vv.f16154do;
            this.f16465do = C3135j7.f13638do;
            Q2.Cdo cdo = Q2.f2864do;
            this.f16462do = cdo;
            this.f16479if = cdo;
            this.f16473do = new C3337ma();
            this.f16461do = InterfaceC0317Ke.f1848do;
            this.f16475do = true;
            this.f16482if = true;
            this.f16477for = true;
            this.f16459do = 0;
            this.f16478if = 10000;
            this.f16476for = 10000;
            this.f16483new = 10000;
            this.f16484try = 0;
        }

        public Cif(C3947wv c3947wv) {
            ArrayList arrayList = new ArrayList();
            this.f16468do = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f16480if = arrayList2;
            this.f16460do = c3947wv.f16434do;
            this.f16466do = c3947wv.f16440do;
            this.f16469do = c3947wv.f16442do;
            this.f16481if = c3947wv.f16454if;
            arrayList.addAll(c3947wv.f16451for);
            arrayList2.addAll(c3947wv.f16457new);
            this.f16474do = c3947wv.f16447do;
            this.f16467do = c3947wv.f16441do;
            this.f16463do = c3947wv.f16437do;
            this.f16470do = c3947wv.f16443do;
            this.f16472do = c3947wv.f16445do;
            this.f16464do = c3947wv.f16438do;
            this.f16471do = c3947wv.f16444do;
            this.f16465do = c3947wv.f16439do;
            this.f16462do = c3947wv.f16436do;
            this.f16479if = c3947wv.f16453if;
            this.f16473do = c3947wv.f16446do;
            this.f16461do = c3947wv.f16435do;
            this.f16475do = c3947wv.f16448do;
            this.f16482if = c3947wv.f16455if;
            this.f16477for = c3947wv.f16452for;
            this.f16459do = c3947wv.f16450for;
            this.f16478if = c3947wv.f16456new;
            this.f16476for = c3947wv.f16458try;
            this.f16483new = c3947wv.f16433case;
            this.f16484try = c3947wv.f16449else;
        }
    }
}
