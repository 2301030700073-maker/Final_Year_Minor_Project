package defpackage;

import android.os.Handler;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class Fz<T> implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0291Ja<T> f1107do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f1108do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Callable<T> f1109do;

    /* renamed from: Fz$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0291Ja f1110do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Object f1111do;

        public Cdo(InterfaceC0291Ja interfaceC0291Ja, Object obj) {
            this.f1110do = interfaceC0291Ja;
            this.f1111do = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            this.f1110do.accept(this.f1111do);
        }
    }

    public Fz(Handler handler, CallableC3287lj callableC3287lj, C3346mj c3346mj) {
        this.f1109do = callableC3287lj;
        this.f1107do = c3346mj;
        this.f1108do = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        T t;
        try {
            t = this.f1109do.call();
        } catch (Exception unused) {
            t = null;
        }
        this.f1108do.post(new Cdo(this.f1107do, t));
    }
}
