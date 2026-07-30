package c.b.a.c.c.f;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import c.b.a.c.d.g.m;
import c.b.a.c.d.g.n;
import c.b.a.c.d.j.k;
import c.b.a.c.d.j.z;
import com.google.android.gms.clearcut.internal.zzq;
import com.google.android.gms.clearcut.internal.zzr;

/* loaded from: classes.dex */
public final class f extends z {
    public f(Context context, Looper looper, k kVar, m mVar, n nVar) {
        super(context, looper, 40, kVar, mVar, nVar);
    }

    @Override // c.b.a.c.d.g.d
    public final int a() {
        return c.b.a.c.d.e.f2874a;
    }

    @Override // c.b.a.c.d.j.z
    public final String m() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // c.b.a.c.d.j.z
    public final String n() {
        return "com.google.android.gms.clearcut.service.START";
    }

    @Override // c.b.a.c.d.j.z
    public final /* synthetic */ IInterface o(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return queryLocalInterface instanceof zzq ? (zzq) queryLocalInterface : new zzr(iBinder);
    }
}
