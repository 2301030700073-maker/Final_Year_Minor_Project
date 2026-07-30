package defpackage;

import android.content.ComponentName;

/* loaded from: classes3.dex */
public final class BU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f243do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f244for;

    public /* synthetic */ BU(Object obj, int i) {
        this.f244for = i;
        this.f243do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f244for;
        Object obj = this.f243do;
        switch (i) {
            case 0:
                AU au = (AU) obj;
                C3217kU c3217kU = au.f90do;
                ComponentName componentName = new ComponentName(au.f90do.mo2255for(), "com.google.android.gms.measurement.AppMeasurementService");
                c3217kU.mo1960catch();
                if (c3217kU.f13997do != null) {
                    c3217kU.f13997do = null;
                    c3217kU.mo2249case().f13723this.m7368for("Disconnected from device MeasurementService", componentName);
                    c3217kU.mo1960catch();
                    c3217kU.m7261extends();
                    break;
                }
                break;
            default:
                TS ts = (TS) obj;
                C3395nV c3395nV = ts.f3700do;
                TS.m2245goto(c3395nV);
                if (!c3395nV.P()) {
                    C3156jS c3156jS = ts.f3695do;
                    TS.m2247this(c3156jS);
                    c3156jS.f13722new.m7369if("registerTrigger called but app not eligible");
                    break;
                } else {
                    C4041yT c4041yT = ts.f3702do;
                    TS.m2244else(c4041yT);
                    new Thread(new NR(c4041yT, 4)).start();
                    break;
                }
        }
    }
}
