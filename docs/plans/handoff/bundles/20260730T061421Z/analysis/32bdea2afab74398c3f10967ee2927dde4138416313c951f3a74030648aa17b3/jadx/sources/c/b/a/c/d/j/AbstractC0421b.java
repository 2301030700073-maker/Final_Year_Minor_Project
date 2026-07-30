package c.b.a.c.d.j;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* renamed from: c.b.a.c.d.j.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0421b extends AbstractC0423d {

    /* renamed from: d, reason: collision with root package name */
    public final int f2952d;
    public final Bundle e;
    public final /* synthetic */ z f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0421b(z zVar, int i, Bundle bundle) {
        super(zVar, Boolean.TRUE);
        this.f = zVar;
        this.f2952d = i;
        this.e = bundle;
    }

    @Override // c.b.a.c.d.j.AbstractC0423d
    public final /* synthetic */ void a(Object obj) {
        int i = this.f2952d;
        if (i == 0) {
            if (d()) {
                return;
            }
            this.f.t(1, null);
            c(new ConnectionResult(8, null));
            return;
        }
        if (i == 10) {
            this.f.t(1, null);
            throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
        }
        this.f.t(1, null);
        Bundle bundle = this.e;
        c(new ConnectionResult(this.f2952d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
    }

    public abstract void c(ConnectionResult connectionResult);

    public abstract boolean d();
}
