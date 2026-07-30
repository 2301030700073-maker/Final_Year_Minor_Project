package defpackage;

import android.content.Context;
import android.os.Handler;
import com.facebook.appevents.AppEventsLoggerImpl;
import com.facebook.appevents.UserDataStore;
import com.google.firebase.perf.util.Timer;
import defpackage.ScheduledFutureC0425Pd;
import java.util.function.Consumer;

/* renamed from: e2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2668e2 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f12580do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12581for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f12582if;

    public /* synthetic */ RunnableC2668e2(int i, Object obj, Object obj2) {
        this.f12581for = i;
        this.f12580do = obj;
        this.f12582if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f12581for;
        Object obj = this.f12582if;
        Object obj2 = this.f12580do;
        switch (i) {
            case 0:
                AppEventsLoggerImpl.Companion.m5315initializeLib$lambda4((Context) obj2, (AppEventsLoggerImpl) obj);
                return;
            case 1:
                UserDataStore.m5334writeDataIntoCache$lambda0((String) obj2, (String) obj);
                return;
            case 2:
                ScheduledFutureC0425Pd.Cif cif = (ScheduledFutureC0425Pd.Cif) obj;
                try {
                    ((Runnable) obj2).run();
                    return;
                } catch (Exception e) {
                    ScheduledFutureC0425Pd.this.mo1470while(e);
                    throw e;
                }
            case 3:
                ((C0445Qb) obj2).m1974do((InterfaceC3200kD) obj);
                return;
            case 4:
                C3986xb c3986xb = (C3986xb) obj2;
                Q0 q0 = C3986xb.f16580do;
                C4045yb m8653if = c3986xb.m8653if((Timer) obj);
                if (m8653if != null) {
                    c3986xb.f16584do.add(m8653if);
                    return;
                }
                return;
            default:
                Handler handler = C3128j0.f13617do;
                ((Consumer) obj2).accept(obj);
                return;
        }
    }
}
