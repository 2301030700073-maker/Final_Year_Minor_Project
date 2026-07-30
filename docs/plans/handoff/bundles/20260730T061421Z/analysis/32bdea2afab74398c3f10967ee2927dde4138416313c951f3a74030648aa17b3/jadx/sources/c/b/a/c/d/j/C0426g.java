package c.b.a.c.d.j;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* renamed from: c.b.a.c.d.j.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0426g extends AbstractC0421b {
    public final IBinder g;
    public final /* synthetic */ z h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0426g(z zVar, int i, IBinder iBinder, Bundle bundle) {
        super(zVar, i, bundle);
        this.h = zVar;
        this.g = iBinder;
    }

    @Override // c.b.a.c.d.j.AbstractC0421b
    public final void c(ConnectionResult connectionResult) {
        B b2 = this.h.n;
        if (b2 != null) {
            b2.f2938a.onConnectionFailed(connectionResult);
        }
        Objects.requireNonNull(this.h);
        System.currentTimeMillis();
    }

    @Override // c.b.a.c.d.j.AbstractC0421b
    public final boolean d() {
        try {
            String interfaceDescriptor = this.g.getInterfaceDescriptor();
            if (!this.h.m().equals(interfaceDescriptor)) {
                String m = this.h.m();
                StringBuilder sb = new StringBuilder(String.valueOf(interfaceDescriptor).length() + String.valueOf(m).length() + 34);
                sb.append("service descriptor mismatch: ");
                sb.append(m);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface o = this.h.o(this.g);
            if (o == null || !(this.h.p(2, 4, o) || this.h.p(3, 4, o))) {
                return false;
            }
            z zVar = this.h;
            zVar.q = null;
            A a2 = zVar.m;
            if (a2 == null) {
                return true;
            }
            a2.f2937a.onConnected(null);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
