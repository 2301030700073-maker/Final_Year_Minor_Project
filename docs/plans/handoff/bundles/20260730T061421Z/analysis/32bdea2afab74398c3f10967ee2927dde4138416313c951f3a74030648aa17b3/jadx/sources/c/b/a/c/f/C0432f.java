package c.b.a.c.f;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.internal.zzdyj;
import com.google.android.gms.internal.zzdyk;

/* renamed from: c.b.a.c.f.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0432f extends c.b.a.c.d.j.z {
    public C0432f(Context context, Looper looper, c.b.a.c.d.j.k kVar, c.b.a.c.d.g.m mVar, c.b.a.c.d.g.n nVar) {
        super(context, looper, 51, kVar, mVar, nVar);
    }

    @Override // c.b.a.c.d.g.d
    public final int a() {
        return c.b.a.c.d.e.f2874a;
    }

    @Override // c.b.a.c.d.j.z
    public final String m() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // c.b.a.c.d.j.z
    public final String n() {
        return "com.google.android.gms.phenotype.service.START";
    }

    @Override // c.b.a.c.d.j.z
    public final /* synthetic */ IInterface o(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return queryLocalInterface instanceof zzdyj ? (zzdyj) queryLocalInterface : new zzdyk(iBinder);
    }
}
