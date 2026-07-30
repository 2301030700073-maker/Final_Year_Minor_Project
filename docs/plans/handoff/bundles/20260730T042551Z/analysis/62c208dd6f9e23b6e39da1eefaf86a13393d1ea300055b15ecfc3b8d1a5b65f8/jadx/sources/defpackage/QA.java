package defpackage;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes3.dex */
public final class QA {

    /* renamed from: do, reason: not valid java name */
    public final InetSocketAddress f2868do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Proxy f2869do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3599r0 f2870do;

    public QA(C3599r0 c3599r0, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c3599r0 == null) {
            throw new NullPointerException("address == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f2870do = c3599r0;
        this.f2869do = proxy;
        this.f2868do = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof QA) {
            QA qa = (QA) obj;
            if (qa.f2870do.equals(this.f2870do) && qa.f2869do.equals(this.f2869do) && qa.f2868do.equals(this.f2868do)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2868do.hashCode() + ((this.f2869do.hashCode() + ((this.f2870do.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.f2868do + "}";
    }
}
