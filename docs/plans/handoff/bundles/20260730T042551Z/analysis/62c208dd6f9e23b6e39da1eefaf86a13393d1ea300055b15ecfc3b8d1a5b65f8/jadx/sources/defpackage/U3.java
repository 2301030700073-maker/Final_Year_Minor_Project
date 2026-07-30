package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class U3 extends AbstractC3221kc {

    /* renamed from: do, reason: not valid java name */
    public final Context f3821do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2792g8 f3822do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3823do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC2792g8 f3824if;

    public U3(Context context, InterfaceC2792g8 interfaceC2792g8, InterfaceC2792g8 interfaceC2792g82, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f3821do = context;
        if (interfaceC2792g8 == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f3822do = interfaceC2792g8;
        if (interfaceC2792g82 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f3824if = interfaceC2792g82;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f3823do = str;
    }

    @Override // defpackage.AbstractC3221kc
    /* renamed from: do, reason: not valid java name */
    public final Context mo2318do() {
        return this.f3821do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3221kc)) {
            return false;
        }
        AbstractC3221kc abstractC3221kc = (AbstractC3221kc) obj;
        return this.f3821do.equals(abstractC3221kc.mo2318do()) && this.f3822do.equals(abstractC3221kc.mo2321new()) && this.f3824if.equals(abstractC3221kc.mo2319for()) && this.f3823do.equals(abstractC3221kc.mo2320if());
    }

    @Override // defpackage.AbstractC3221kc
    /* renamed from: for, reason: not valid java name */
    public final InterfaceC2792g8 mo2319for() {
        return this.f3824if;
    }

    public final int hashCode() {
        return ((((((this.f3821do.hashCode() ^ 1000003) * 1000003) ^ this.f3822do.hashCode()) * 1000003) ^ this.f3824if.hashCode()) * 1000003) ^ this.f3823do.hashCode();
    }

    @Override // defpackage.AbstractC3221kc
    /* renamed from: if, reason: not valid java name */
    public final String mo2320if() {
        return this.f3823do;
    }

    @Override // defpackage.AbstractC3221kc
    /* renamed from: new, reason: not valid java name */
    public final InterfaceC2792g8 mo2321new() {
        return this.f3822do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f3821do);
        sb.append(", wallClock=");
        sb.append(this.f3822do);
        sb.append(", monotonicClock=");
        sb.append(this.f3824if);
        sb.append(", backendName=");
        return Creturn.m7984try(sb, this.f3823do, "}");
    }
}
