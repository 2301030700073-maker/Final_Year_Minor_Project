package defpackage;

import android.content.Context;
import defpackage.C0121Bg;
import defpackage.C0143Cg;
import defpackage.C0253Hg;
import defpackage.C3322mH;
import defpackage.C3381nH;
import java.util.concurrent.Executor;

/* renamed from: Gc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0227Gc extends CI {

    /* renamed from: do, reason: not valid java name */
    public C2830go f1206do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3339mc f1207do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3597qy<Executor> f1208do = C0360Me.m1444do(C0253Hg.Cdo.f1372do);

    /* renamed from: for, reason: not valid java name */
    public InterfaceC3597qy<C2619dB> f1209for;

    /* renamed from: if, reason: not valid java name */
    public InterfaceC3597qy f1210if;

    /* renamed from: new, reason: not valid java name */
    public InterfaceC3597qy<BI> f1211new;

    public C0227Gc(Context context) {
        if (context == null) {
            throw new NullPointerException("instance cannot be null");
        }
        C2830go c2830go = new C2830go(context);
        this.f1206do = c2830go;
        C3322mH c3322mH = C3322mH.Cdo.f14326do;
        this.f1210if = C0360Me.m1444do(new C0327Ko(c2830go, new C3339mc(c2830go, c3322mH, C3381nH.Cdo.f14489do, 0)));
        C2830go c2830go2 = this.f1206do;
        this.f1207do = new C3339mc(c2830go2, C0121Bg.Cdo.f257do, C0143Cg.Cdo.f406do, 1);
        InterfaceC3597qy<C2619dB> m1444do = C0360Me.m1444do(new C2677eB(this.f1207do, C0360Me.m1444do(new C3795uJ(c2830go2))));
        this.f1209for = m1444do;
        C4082zB c4082zB = new C4082zB(c3322mH, 0);
        C2830go c2830go3 = this.f1206do;
        C3559qI c3559qI = new C3559qI(c2830go3, m1444do, c4082zB);
        InterfaceC3597qy<Executor> interfaceC3597qy = this.f1208do;
        InterfaceC3597qy interfaceC3597qy2 = this.f1210if;
        this.f1211new = C0360Me.m1444do(new DI(new C3870vd(interfaceC3597qy, interfaceC3597qy2, c3559qI, m1444do, m1444do), new DJ(c2830go3, interfaceC3597qy2, m1444do, c3559qI, interfaceC3597qy, m1444do, m1444do), new EM(interfaceC3597qy, m1444do, c3559qI, m1444do)));
    }
}
