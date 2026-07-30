package defpackage;

import defpackage.InterfaceC3940wo;
import java.util.List;

/* loaded from: classes3.dex */
public final class Xy implements InterfaceC3940wo.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final int f4616do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bz f4617do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Wy f4618do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<InterfaceC3940wo> f4619do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3732tF f4620do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3755tg f4621do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3959x6 f4622do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4115zm f4623do;

    /* renamed from: for, reason: not valid java name */
    public final int f4624for;

    /* renamed from: if, reason: not valid java name */
    public final int f4625if;

    /* renamed from: new, reason: not valid java name */
    public final int f4626new;

    /* renamed from: try, reason: not valid java name */
    public int f4627try;

    public Xy(List<InterfaceC3940wo> list, C3732tF c3732tF, InterfaceC4115zm interfaceC4115zm, Wy wy, int i, Bz bz, InterfaceC3959x6 interfaceC3959x6, AbstractC3755tg abstractC3755tg, int i2, int i3, int i4) {
        this.f4619do = list;
        this.f4618do = wy;
        this.f4620do = c3732tF;
        this.f4623do = interfaceC4115zm;
        this.f4616do = i;
        this.f4617do = bz;
        this.f4622do = interfaceC3959x6;
        this.f4621do = abstractC3755tg;
        this.f4625if = i2;
        this.f4624for = i3;
        this.f4626new = i4;
    }

    /* renamed from: do, reason: not valid java name */
    public final Tz m2876do(Bz bz) {
        return m2877if(bz, this.f4620do, this.f4623do, this.f4618do);
    }

    /* renamed from: if, reason: not valid java name */
    public final Tz m2877if(Bz bz, C3732tF c3732tF, InterfaceC4115zm interfaceC4115zm, Wy wy) {
        List<InterfaceC3940wo> list = this.f4619do;
        int size = list.size();
        int i = this.f4616do;
        if (i >= size) {
            throw new AssertionError();
        }
        this.f4627try++;
        InterfaceC4115zm interfaceC4115zm2 = this.f4623do;
        if (interfaceC4115zm2 != null) {
            if (!this.f4618do.m2783catch(bz.f296do)) {
                throw new IllegalStateException("network interceptor " + list.get(i - 1) + " must retain the same host and port");
            }
        }
        if (interfaceC4115zm2 != null && this.f4627try > 1) {
            throw new IllegalStateException("network interceptor " + list.get(i - 1) + " must call proceed() exactly once");
        }
        List<InterfaceC3940wo> list2 = this.f4619do;
        int i2 = i + 1;
        Xy xy = new Xy(list2, c3732tF, interfaceC4115zm, wy, i2, bz, this.f4622do, this.f4621do, this.f4625if, this.f4624for, this.f4626new);
        InterfaceC3940wo interfaceC3940wo = list2.get(i);
        Tz mo2113do = interfaceC3940wo.mo2113do(xy);
        if (interfaceC4115zm != null && i2 < list.size() && xy.f4627try != 1) {
            throw new IllegalStateException("network interceptor " + interfaceC3940wo + " must call proceed() exactly once");
        }
        if (mo2113do == null) {
            throw new NullPointerException("interceptor " + interfaceC3940wo + " returned null");
        }
        if (mo2113do.f3774do != null) {
            return mo2113do;
        }
        throw new IllegalStateException("interceptor " + interfaceC3940wo + " returned a response with no body");
    }
}
