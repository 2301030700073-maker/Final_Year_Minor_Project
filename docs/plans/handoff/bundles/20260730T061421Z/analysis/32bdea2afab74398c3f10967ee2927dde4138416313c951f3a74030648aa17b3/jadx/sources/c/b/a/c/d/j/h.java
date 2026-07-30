package c.b.a.c.d.j;

import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* loaded from: classes.dex */
public final class h extends AbstractC0421b {
    public final /* synthetic */ z g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(z zVar, int i) {
        super(zVar, i, null);
        this.g = zVar;
    }

    @Override // c.b.a.c.d.j.AbstractC0421b
    public final void c(ConnectionResult connectionResult) {
        this.g.h.a(connectionResult);
        Objects.requireNonNull(this.g);
        System.currentTimeMillis();
    }

    @Override // c.b.a.c.d.j.AbstractC0421b
    public final boolean d() {
        this.g.h.a(ConnectionResult.e);
        return true;
    }
}
