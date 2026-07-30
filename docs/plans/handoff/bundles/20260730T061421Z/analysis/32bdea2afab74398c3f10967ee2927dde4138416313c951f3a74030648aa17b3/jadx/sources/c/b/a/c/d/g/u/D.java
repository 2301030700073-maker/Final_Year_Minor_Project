package c.b.a.c.d.g.u;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class D extends AbstractC0415f {

    /* renamed from: a, reason: collision with root package name */
    public final c.b.a.c.j.a f2888a;

    /* renamed from: b, reason: collision with root package name */
    public final s f2889b;

    public D(s sVar, c.b.a.c.j.a aVar) {
        super(4);
        this.f2888a = aVar;
        this.f2889b = sVar;
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public void b(Status status) {
        this.f2888a.a(new ApiException(status));
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public final /* bridge */ /* synthetic */ void c(C0412c c0412c, boolean z) {
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public final void d(C0418i c0418i) {
        try {
            e(c0418i);
        } catch (DeadObjectException e) {
            this.f2888a.a(new ApiException(AbstractC0415f.a(e)));
            throw e;
        } catch (RemoteException e2) {
            this.f2888a.a(new ApiException(AbstractC0415f.a(e2)));
        } catch (RuntimeException e3) {
            this.f2888a.a(e3);
        }
    }

    public final void e(C0418i c0418i) {
        if (((u) c0418i.g.remove(this.f2889b)) != null) {
            throw null;
        }
        c.b.a.c.j.c cVar = this.f2888a.f3074a;
        synchronized (cVar.f3076a) {
            if (cVar.f3078c) {
                return;
            }
            cVar.f3078c = true;
            cVar.f3077b.a(cVar);
        }
    }
}
