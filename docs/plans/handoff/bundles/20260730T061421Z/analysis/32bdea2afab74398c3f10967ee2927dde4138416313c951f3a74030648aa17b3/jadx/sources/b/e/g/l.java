package b.e.g;

import android.os.Handler;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Callable f729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Handler f730b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f731c;

    public l(o oVar, Callable callable, Handler handler, n nVar) {
        this.f729a = callable;
        this.f730b = handler;
        this.f731c = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        try {
            obj = this.f729a.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.f730b.post(new k(this, obj));
    }
}
