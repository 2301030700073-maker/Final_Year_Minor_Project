package defpackage;

import android.os.StrictMode;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: Og, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0406Og implements InterfaceC3655ry {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2660do;

    public /* synthetic */ C0406Og(int i) {
        this.f2660do = i;
    }

    @Override // defpackage.InterfaceC3655ry
    public final Object get() {
        C0177Ds lambda$new$1;
        switch (this.f2660do) {
            case 0:
                C0503Sp<ScheduledExecutorService> c0503Sp = ExecutorsRegistrar.f11870do;
                return new ScheduledExecutorServiceC0403Od(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new ThreadFactoryC0117Bc("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), ExecutorsRegistrar.f11873new.get());
            default:
                lambda$new$1 = GaugeManager.lambda$new$1();
                return lambda$new$1;
        }
    }
}
