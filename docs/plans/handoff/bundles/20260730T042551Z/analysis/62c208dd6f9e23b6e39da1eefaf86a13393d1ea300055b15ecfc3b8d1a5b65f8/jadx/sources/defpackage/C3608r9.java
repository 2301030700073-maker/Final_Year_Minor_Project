package defpackage;

import android.os.Build;
import android.os.StrictMode;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: r9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C3608r9 implements InterfaceC3655ry {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f15221do;

    public /* synthetic */ C3608r9(int i) {
        this.f15221do = i;
    }

    @Override // defpackage.InterfaceC3655ry
    public final Object get() {
        C3986xb lambda$new$0;
        switch (this.f15221do) {
            case 0:
                return Collections.emptySet();
            case 1:
                return null;
            case 2:
                C0503Sp<ScheduledExecutorService> c0503Sp = ExecutorsRegistrar.f11870do;
                StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    detectNetwork.detectResourceMismatches();
                    if (i >= 26) {
                        detectNetwork.detectUnbufferedIo();
                    }
                }
                return new ScheduledExecutorServiceC0403Od(Executors.newFixedThreadPool(4, new ThreadFactoryC0117Bc("Firebase Background", 10, detectNetwork.penaltyLog().build())), ExecutorsRegistrar.f11873new.get());
            case 3:
                lambda$new$0 = GaugeManager.lambda$new$0();
                return lambda$new$0;
            default:
                Clock clock = C3421nz.f14640do;
                return null;
        }
    }
}
