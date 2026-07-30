package defpackage;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.internal.Validate;

/* loaded from: classes.dex */
public final class Kz {

    /* renamed from: do, reason: not valid java name */
    public final long f1901do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f1902do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GraphRequest f1903do;

    /* renamed from: for, reason: not valid java name */
    public long f1904for;

    /* renamed from: if, reason: not valid java name */
    public long f1905if;

    /* renamed from: new, reason: not valid java name */
    public long f1906new;

    public Kz(Handler handler, GraphRequest graphRequest) {
        this.f1902do = handler;
        this.f1903do = graphRequest;
        C3756th c3756th = C3756th.f15751do;
        Validate.sdkInitialized();
        this.f1901do = C3756th.f15748do.get();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1231do() {
        final long j = this.f1905if;
        if (j > this.f1904for) {
            final GraphRequest.Cif cif = this.f1903do.f9276do;
            final long j2 = this.f1906new;
            if (j2 <= 0 || !(cif instanceof GraphRequest.Ctry)) {
                return;
            }
            Handler handler = this.f1902do;
            if ((handler == null ? null : Boolean.valueOf(handler.post(new Runnable(j, j2) { // from class: Jz
                @Override // java.lang.Runnable
                public final void run() {
                    ((GraphRequest.Ctry) GraphRequest.Cif.this).m5296do();
                }
            }))) == null) {
                ((GraphRequest.Ctry) cif).m5296do();
            }
            this.f1904for = this.f1905if;
        }
    }
}
