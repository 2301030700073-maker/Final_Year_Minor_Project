package c.b.a.c.d.g.u;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w extends AbstractC0415f {

    /* renamed from: a, reason: collision with root package name */
    public final c.b.a.c.c.f.d f2931a;

    public w(int i, c.b.a.c.c.f.d dVar) {
        super(i);
        this.f2931a = dVar;
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public final void b(Status status) {
        this.f2931a.k(status);
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public final void c(C0412c c0412c, boolean z) {
        c.b.a.c.c.f.d dVar = this.f2931a;
        c0412c.f2899a.put(dVar, Boolean.valueOf(z));
        C0413d c0413d = new C0413d(c0412c, dVar);
        Objects.requireNonNull(dVar);
        c.b.a.c.b.a.D0(true, "Callback cannot be null.");
        synchronized (dVar.f3377a) {
            if (dVar.h()) {
                c0413d.a(dVar.h);
            } else {
                dVar.f3380d.add(c0413d);
            }
        }
    }

    @Override // c.b.a.c.d.g.u.AbstractC0415f
    public final void d(C0418i c0418i) {
        try {
            c.b.a.c.c.f.d dVar = this.f2931a;
            c.b.a.c.d.g.d dVar2 = c0418i.f2909b;
            Objects.requireNonNull(dVar);
            try {
                try {
                    dVar.j(dVar2);
                } catch (RemoteException e) {
                    dVar.i(e);
                }
            } catch (DeadObjectException e2) {
                dVar.i(e2);
                throw e2;
            }
        } catch (RuntimeException e3) {
            String simpleName = e3.getClass().getSimpleName();
            String localizedMessage = e3.getLocalizedMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(localizedMessage).length() + simpleName.length() + 2);
            sb.append(simpleName);
            sb.append(": ");
            sb.append(localizedMessage);
            this.f2931a.k(new Status(10, sb.toString()));
        }
    }
}
