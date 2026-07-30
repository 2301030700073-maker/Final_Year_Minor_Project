package defpackage;

import android.content.Context;
import com.facebook.internal.FacebookRequestErrorClassification;
import java.util.List;

/* renamed from: rx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3654rx {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2650dk<Context, List<InterfaceC0402Oc<AbstractC3890vx>>> f15342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f15343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15344do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C3419nx f15345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3632rb f15346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4010xz<AbstractC3890vx> f15347do;

    /* JADX WARN: Multi-variable type inference failed */
    public C3654rx(String str, C4010xz<AbstractC3890vx> c4010xz, InterfaceC2650dk<? super Context, ? extends List<? extends InterfaceC0402Oc<AbstractC3890vx>>> interfaceC2650dk, InterfaceC3632rb interfaceC3632rb) {
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        this.f15344do = str;
        this.f15347do = c4010xz;
        this.f15342do = interfaceC2650dk;
        this.f15346do = interfaceC3632rb;
        this.f15343do = new Object();
    }

    /* renamed from: do, reason: not valid java name */
    public final C3419nx m8032do(Object obj, InterfaceC0108Ap interfaceC0108Ap) {
        C3419nx c3419nx;
        Context context = (Context) obj;
        C0173Do.m401try(context, "thisRef");
        C0173Do.m401try(interfaceC0108Ap, "property");
        C3419nx c3419nx2 = this.f15345do;
        if (c3419nx2 != null) {
            return c3419nx2;
        }
        synchronized (this.f15343do) {
            if (this.f15345do == null) {
                Context applicationContext = context.getApplicationContext();
                InterfaceC3927wb interfaceC3927wb = this.f15347do;
                InterfaceC2650dk<Context, List<InterfaceC0402Oc<AbstractC3890vx>>> interfaceC2650dk = this.f15342do;
                C0173Do.m399new(applicationContext, "applicationContext");
                List<InterfaceC0402Oc<AbstractC3890vx>> mo364this = interfaceC2650dk.mo364this(applicationContext);
                InterfaceC3632rb interfaceC3632rb = this.f15346do;
                C3596qx c3596qx = new C3596qx(applicationContext, this);
                C0173Do.m401try(mo364this, "migrations");
                C0173Do.m401try(interfaceC3632rb, "scope");
                C3537px c3537px = new C3537px(c3596qx);
                if (interfaceC3927wb == null) {
                    interfaceC3927wb = new O4();
                }
                this.f15345do = new C3419nx(new C3201kE(c3537px, O4.m1617package(new C0424Pc(mo364this, null)), interfaceC3927wb, interfaceC3632rb));
            }
            c3419nx = this.f15345do;
            C0173Do.m398if(c3419nx);
        }
        return c3419nx;
    }
}
