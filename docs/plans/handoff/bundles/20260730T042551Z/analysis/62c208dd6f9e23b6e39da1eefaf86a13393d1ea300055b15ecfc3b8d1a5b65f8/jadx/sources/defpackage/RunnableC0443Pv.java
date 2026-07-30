package defpackage;

import android.content.Context;
import com.facebook.appevents.ondeviceprocessing.OnDeviceProcessingManager;
import defpackage.Ew;

/* renamed from: Pv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0443Pv implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f2838do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2839for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2840for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f2841if;

    public /* synthetic */ RunnableC0443Pv(Object obj, Object obj2, Object obj3, int i) {
        this.f2839for = i;
        this.f2840for = obj;
        this.f2838do = obj2;
        this.f2841if = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2839for;
        Object obj = this.f2841if;
        Object obj2 = this.f2838do;
        Object obj3 = this.f2840for;
        switch (i) {
            case 0:
                OnDeviceProcessingManager.m5392sendInstallEventAsync$lambda0((Context) obj3, (String) obj2, (String) obj);
                return;
            case 1:
                String str = (String) obj2;
                String str2 = (String) obj;
                C0357Mb c0357Mb = ((C0445Qb) obj3).f2964do;
                c0357Mb.getClass();
                try {
                    c0357Mb.f2198do.f1784do.m1139do(str, str2);
                    return;
                } catch (IllegalArgumentException e) {
                    Context context = c0357Mb.f2204do;
                    if (context != null) {
                        if ((context.getApplicationInfo().flags & 2) != 0) {
                            throw e;
                        }
                        return;
                    }
                    return;
                }
            default:
                AI ai = (AI) obj3;
                Q0 q0 = AI.f55do;
                ai.getClass();
                Ew.Cdo m511instanceof = Ew.m511instanceof();
                m511instanceof.m6307super();
                Ew.m512interface((Ew) m511instanceof.f12107if, (C2684eI) obj2);
                ai.m68new(m511instanceof, (EnumC3601r2) obj);
                return;
        }
    }
}
