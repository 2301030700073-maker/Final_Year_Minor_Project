package defpackage;

import android.app.Application;
import android.content.Context;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.session.SessionManager;
import java.util.concurrent.Executor;

/* renamed from: qi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3581qi {
    public C3581qi(C0706ai c0706ai, AbstractC0680aF abstractC0680aF, Executor executor) {
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        L9 m1286try = L9.m1286try();
        m1286try.getClass();
        L9.f1930do.f2857do = C0685aK.m3118do(context);
        m1286try.f1932do.m6824if(context);
        C3366n2 m7530do = C3366n2.m7530do();
        synchronized (m7530do) {
            if (!m7530do.f14433if) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(m7530do);
                    m7530do.f14433if = true;
                }
            }
        }
        m7530do.m7533for(new C3934wi());
        if (abstractC0680aF != null) {
            AppStartTrace m6108new = AppStartTrace.m6108new();
            m6108new.m6110class(context);
            executor.execute(new AppStartTrace.Cif(m6108new));
        }
        SessionManager.getInstance().initializeGaugeCollection();
    }
}
