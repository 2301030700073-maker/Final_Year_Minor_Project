package defpackage;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* renamed from: Ng, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0384Ng extends H4 {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2417break = "awaitEvenIfOnMainThread task continuation executor";

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f2418do = 2;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ExecutorService f2419do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TimeUnit f2420do;

    public C0384Ng(ExecutorService executorService, TimeUnit timeUnit) {
        this.f2419do = executorService;
        this.f2420do = timeUnit;
    }

    @Override // defpackage.H4
    /* renamed from: do */
    public final void mo809do() {
        ExecutorService executorService = this.f2419do;
        try {
            executorService.shutdown();
            if (executorService.awaitTermination(this.f2418do, this.f2420do)) {
                return;
            }
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f2417break);
            executorService.shutdownNow();
        }
    }
}
