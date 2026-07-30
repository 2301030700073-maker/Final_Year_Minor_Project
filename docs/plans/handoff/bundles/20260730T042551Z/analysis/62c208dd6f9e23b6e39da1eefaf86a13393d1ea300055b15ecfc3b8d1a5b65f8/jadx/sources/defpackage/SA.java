package defpackage;

import com.facebook.internal.security.CertificateUtil;
import defpackage.InterfaceC0317Ke;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes3.dex */
public final class SA {

    /* renamed from: do, reason: not valid java name */
    public int f3456do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<Proxy> f3458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3576qd f3459do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3599r0 f3460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3755tg f3461do;

    /* renamed from: if, reason: not valid java name */
    public List<InetSocketAddress> f3462if = Collections.emptyList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f3457do = new ArrayList();

    /* renamed from: SA$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f3463do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<QA> f3464do;

        public Cdo(ArrayList arrayList) {
            this.f3464do = arrayList;
        }
    }

    public SA(C3599r0 c3599r0, C3576qd c3576qd, InterfaceC3959x6 interfaceC3959x6, AbstractC3755tg abstractC3755tg) {
        this.f3458do = Collections.emptyList();
        this.f3460do = c3599r0;
        this.f3459do = c3576qd;
        this.f3461do = abstractC3755tg;
        Proxy proxy = c3599r0.f15182do;
        if (proxy != null) {
            this.f3458do = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = c3599r0.f15183do.select(c3599r0.f15178do.m754final());
            this.f3458do = (select == null || select.isEmpty()) ? SJ.m2136final(Proxy.NO_PROXY) : DesugarCollections.unmodifiableList(new ArrayList(select));
        }
        this.f3456do = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2117do(QA qa, IOException iOException) {
        C3599r0 c3599r0;
        ProxySelector proxySelector;
        if (qa.f2869do.type() != Proxy.Type.DIRECT && (proxySelector = (c3599r0 = this.f3460do).f15183do) != null) {
            proxySelector.connectFailed(c3599r0.f15178do.m754final(), qa.f2869do.address(), iOException);
        }
        C3576qd c3576qd = this.f3459do;
        synchronized (c3576qd) {
            ((Set) c3576qd.f15141do).add(qa);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Cdo m2118if() {
        String str;
        int i;
        boolean contains;
        if (!((this.f3456do < this.f3458do.size()) || !this.f3457do.isEmpty())) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        do {
            if (!(this.f3456do < this.f3458do.size())) {
                break;
            }
            boolean z = this.f3456do < this.f3458do.size();
            C3599r0 c3599r0 = this.f3460do;
            if (!z) {
                throw new SocketException("No route to " + c3599r0.f15178do.f1234new + "; exhausted proxy configurations: " + this.f3458do);
            }
            List<Proxy> list = this.f3458do;
            int i2 = this.f3456do;
            this.f3456do = i2 + 1;
            Proxy proxy = list.get(i2);
            this.f3462if = new ArrayList();
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                C0237Gm c0237Gm = c3599r0.f15178do;
                str = c0237Gm.f1234new;
                i = c0237Gm.f1228do;
            } else {
                SocketAddress address = proxy.address();
                if (!(address instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                InetAddress address2 = inetSocketAddress.getAddress();
                str = address2 == null ? inetSocketAddress.getHostName() : address2.getHostAddress();
                i = inetSocketAddress.getPort();
            }
            if (i < 1 || i > 65535) {
                throw new SocketException("No route to " + str + CertificateUtil.DELIMITER + i + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f3462if.add(InetSocketAddress.createUnresolved(str, i));
            } else {
                this.f3461do.getClass();
                ((InterfaceC0317Ke.Cdo) c3599r0.f15179do).getClass();
                if (str == null) {
                    throw new UnknownHostException("hostname == null");
                }
                try {
                    List asList = Arrays.asList(InetAddress.getAllByName(str));
                    if (asList.isEmpty()) {
                        throw new UnknownHostException(c3599r0.f15179do + " returned no addresses for " + str);
                    }
                    int size = asList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        this.f3462if.add(new InetSocketAddress((InetAddress) asList.get(i3), i));
                    }
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
            int size2 = this.f3462if.size();
            for (int i4 = 0; i4 < size2; i4++) {
                QA qa = new QA(this.f3460do, proxy, this.f3462if.get(i4));
                C3576qd c3576qd = this.f3459do;
                synchronized (c3576qd) {
                    contains = ((Set) c3576qd.f15141do).contains(qa);
                }
                if (contains) {
                    this.f3457do.add(qa);
                } else {
                    arrayList.add(qa);
                }
            }
        } while (arrayList.isEmpty());
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f3457do);
            this.f3457do.clear();
        }
        return new Cdo(arrayList);
    }
}
