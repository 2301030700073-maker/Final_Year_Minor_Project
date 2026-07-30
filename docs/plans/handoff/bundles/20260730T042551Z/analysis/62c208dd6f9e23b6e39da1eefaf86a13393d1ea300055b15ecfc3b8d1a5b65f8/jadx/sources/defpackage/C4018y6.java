package defpackage;

import defpackage.Tz;
import java.net.ProtocolException;
import java.util.logging.Logger;

/* renamed from: y6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4018y6 implements InterfaceC3940wo {

    /* renamed from: do, reason: not valid java name */
    public final boolean f16679do;

    /* renamed from: y6$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3994xj {
        public Cdo(InterfaceC3908wE interfaceC3908wE) {
            super(interfaceC3908wE);
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: super */
        public final void mo1111super(U5 u5, long j) {
            this.f16596do.mo1111super(u5, j);
        }
    }

    public C4018y6(boolean z) {
        this.f16679do = z;
    }

    @Override // defpackage.InterfaceC3940wo
    /* renamed from: do */
    public final Tz mo2113do(Xy xy) {
        Tz m2302do;
        AbstractC3134j6 abstractC3134j6;
        long currentTimeMillis = System.currentTimeMillis();
        xy.f4621do.getClass();
        InterfaceC4115zm interfaceC4115zm = xy.f4623do;
        Bz bz = xy.f4617do;
        interfaceC4115zm.mo7163case(bz);
        boolean m8466while = C3850vF.m8466while(bz.f299do);
        C3732tF c3732tF = xy.f4620do;
        Tz.Cdo cdo = null;
        if (m8466while && (abstractC3134j6 = bz.f298do) != null) {
            if ("100-continue".equalsIgnoreCase(bz.m244do("Expect"))) {
                interfaceC4115zm.mo7169new();
                cdo = interfaceC4115zm.mo7171try(true);
            }
            if (cdo == null) {
                Cz cz = (Cz) abstractC3134j6;
                Cdo cdo2 = new Cdo(interfaceC4115zm.mo7166for(bz, cz.f455do));
                Logger logger = C0114Av.f168do;
                Ty ty = new Ty(cdo2);
                ty.m2296if(cz.f457do, cz.f458if, cz.f455do);
                ty.close();
            } else {
                if (!(xy.f4618do.f4422do != null)) {
                    c3732tF.m8232case();
                }
            }
        }
        interfaceC4115zm.mo7164do();
        if (cdo == null) {
            cdo = interfaceC4115zm.mo7171try(false);
        }
        cdo.f3783do = bz;
        cdo.f3785do = c3732tF.m8237if().f4417do;
        cdo.f3782do = currentTimeMillis;
        cdo.f3791if = System.currentTimeMillis();
        Tz m2302do2 = cdo.m2302do();
        int i = m2302do2.f3777for;
        if (i == 100) {
            Tz.Cdo mo7171try = interfaceC4115zm.mo7171try(false);
            mo7171try.f3783do = bz;
            mo7171try.f3785do = c3732tF.m8237if().f4417do;
            mo7171try.f3782do = currentTimeMillis;
            mo7171try.f3791if = System.currentTimeMillis();
            m2302do2 = mo7171try.m2302do();
            i = m2302do2.f3777for;
        }
        if (this.f16679do && i == 101) {
            Tz.Cdo cdo3 = new Tz.Cdo(m2302do2);
            cdo3.f3786do = SJ.f3489do;
            m2302do = cdo3.m2302do();
        } else {
            Tz.Cdo cdo4 = new Tz.Cdo(m2302do2);
            cdo4.f3786do = interfaceC4115zm.mo7168if(m2302do2);
            m2302do = cdo4.m2302do();
        }
        if ("close".equalsIgnoreCase(m2302do.f3771do.m244do("Connection")) || "close".equalsIgnoreCase(m2302do.m2300do("Connection"))) {
            c3732tF.m8232case();
        }
        if (i == 204 || i == 205) {
            Vz vz = m2302do.f3774do;
            if (vz.mo2489do() > 0) {
                StringBuilder m7821else = Cpublic.m7821else("HTTP ", i, " had non-zero Content-Length: ");
                m7821else.append(vz.mo2489do());
                throw new ProtocolException(m7821else.toString());
            }
        }
        return m2302do;
    }
}
