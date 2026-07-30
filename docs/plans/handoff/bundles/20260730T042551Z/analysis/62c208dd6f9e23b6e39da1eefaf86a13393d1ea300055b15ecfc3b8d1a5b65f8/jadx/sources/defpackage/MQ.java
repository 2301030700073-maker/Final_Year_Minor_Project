package defpackage;

import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import com.joeykrim.rootcheck.gpiab.Cdo;

/* loaded from: classes.dex */
public final /* synthetic */ class MQ implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2182do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2183for = 1;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2184for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2185if;

    public /* synthetic */ MQ(C2811gR c2811gR, C0247Ha c0247Ha, Cdo cdo) {
        this.f2182do = c2811gR;
        this.f2185if = c0247Ha;
        this.f2184for = cdo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2183for;
        Object obj = this.f2184for;
        Object obj2 = this.f2185if;
        Object obj3 = this.f2182do;
        switch (i) {
            case 0:
                ((C2811gR) obj3).m6733abstract((C0247Ha) obj2, (InterfaceC0269Ia) obj);
                break;
            default:
                YS ys = (YS) obj;
                ys.f4740do.p();
                zzon zzonVar = (zzon) obj3;
                Object f = zzonVar.f();
                ZU zu = ys.f4740do;
                if (f != null) {
                    zu.m3038public(zzonVar, (zzo) obj2);
                    break;
                } else {
                    zu.m3042switch(zzonVar.f10352break, (zzo) obj2);
                    break;
                }
        }
    }

    public MQ(YS ys, zzon zzonVar, zzo zzoVar) {
        this.f2182do = zzonVar;
        this.f2185if = zzoVar;
        this.f2184for = ys;
    }
}
