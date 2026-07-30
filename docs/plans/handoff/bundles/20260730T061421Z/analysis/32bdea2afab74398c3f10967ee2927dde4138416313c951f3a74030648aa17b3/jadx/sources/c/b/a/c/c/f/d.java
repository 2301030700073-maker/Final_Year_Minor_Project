package c.b.a.c.c.f;

import android.os.RemoteException;
import android.util.Log;
import c.b.a.c.d.g.j;
import c.b.a.c.d.g.o;
import c.b.a.c.d.g.s;
import c.b.a.c.f.F;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.clearcut.internal.zzq;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* loaded from: classes.dex */
public final class d extends BasePendingResult {
    public final LogEventParcelable o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(LogEventParcelable logEventParcelable, o oVar) {
        super(oVar);
        j jVar = c.b.a.c.c.e.o;
        c.b.a.c.b.a.S(oVar, "GoogleApiClient must not be null");
        c.b.a.c.b.a.S(jVar, "Api must not be null");
        if (jVar.f2879b == null) {
            throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
        }
        this.o = logEventParcelable;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ s c(Status status) {
        return status;
    }

    public final void i(RemoteException remoteException) {
        k(new Status(1, 8, remoteException.getLocalizedMessage(), null));
    }

    public final void j(c.b.a.c.d.g.g gVar) {
        f fVar = (f) gVar;
        e eVar = new e(this);
        try {
            LogEventParcelable logEventParcelable = this.o;
            if (logEventParcelable.j != null && logEventParcelable.i.m.length == 0) {
                logEventParcelable.i.m = logEventParcelable.j.a();
            }
            if (logEventParcelable.k != null && logEventParcelable.i.t.length == 0) {
                logEventParcelable.i.t = logEventParcelable.k.a();
            }
            logEventParcelable.f3353b = F.d(logEventParcelable.i);
            ((zzq) fVar.q()).zza(eVar, this.o);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            k(new Status(10, "MessageProducer"));
        }
    }

    public final void k(Status status) {
        c.b.a.c.b.a.D0(!(status.f3374b <= 0), "Failed result must not be success");
        d(status);
    }
}
