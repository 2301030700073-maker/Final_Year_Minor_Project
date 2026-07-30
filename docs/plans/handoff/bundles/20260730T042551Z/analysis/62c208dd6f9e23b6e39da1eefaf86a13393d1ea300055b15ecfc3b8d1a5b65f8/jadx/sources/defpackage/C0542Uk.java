package defpackage;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: Uk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0542Uk implements InterfaceC2858hF {

    /* renamed from: do, reason: not valid java name */
    public final GG<AbstractC2771fo> f3966do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZJ f3967do;

    public C0542Uk(ZJ zj, GG<AbstractC2771fo> gg) {
        this.f3967do = zj;
        this.f3966do = gg;
    }

    @Override // defpackage.InterfaceC2858hF
    /* renamed from: do, reason: not valid java name */
    public final boolean mo2463do(C3250l4 c3250l4) {
        if (!(c3250l4.mo1221case() == 4) || this.f3967do.m2987if(c3250l4)) {
            return false;
        }
        String str = c3250l4.f14083if;
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        Long valueOf = Long.valueOf(c3250l4.f14078do);
        Long valueOf2 = Long.valueOf(c3250l4.f14082if);
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (valueOf == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.concat(" tokenExpirationTimestamp");
        }
        if (valueOf2 == null) {
            str2 = Cpublic.m7816case(str2, " tokenCreationTimestamp");
        }
        if (!str2.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(str2));
        }
        this.f3966do.m721if(new C2670e4(str, valueOf.longValue(), valueOf2.longValue()));
        return true;
    }

    @Override // defpackage.InterfaceC2858hF
    /* renamed from: if, reason: not valid java name */
    public final boolean mo2464if(Exception exc) {
        this.f3966do.m720for(exc);
        return true;
    }
}
