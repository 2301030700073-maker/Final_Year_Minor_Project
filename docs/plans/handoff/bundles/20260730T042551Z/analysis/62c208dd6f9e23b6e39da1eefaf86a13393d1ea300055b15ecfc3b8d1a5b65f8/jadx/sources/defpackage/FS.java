package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzbz;

/* loaded from: classes3.dex */
public final class FS implements ServiceConnection {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ DS f1052do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1053do;

    public FS(DS ds, String str) {
        this.f1052do = ds;
        this.f1053do = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        DS ds = this.f1052do;
        if (iBinder == null) {
            C3156jS c3156jS = ds.f617do.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7369if("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzbz zza = zzby.zza(iBinder);
            if (zza == null) {
                C3156jS c3156jS2 = ds.f617do.f3695do;
                TS.m2247this(c3156jS2);
                c3156jS2.f13722new.m7369if("Install Referrer Service implementation was not found");
            } else {
                C3156jS c3156jS3 = ds.f617do.f3695do;
                TS.m2247this(c3156jS3);
                c3156jS3.f13723this.m7369if("Install Referrer Service connected");
                QS qs = ds.f617do.f3683do;
                TS.m2247this(qs);
                qs.m1964public(new ES(this, zza, this));
            }
        } catch (RuntimeException e) {
            C3156jS c3156jS4 = ds.f617do.f3695do;
            TS.m2247this(c3156jS4);
            c3156jS4.f13722new.m7368for("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C3156jS c3156jS = this.f1052do.f617do.f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13723this.m7369if("Install Referrer Service disconnected");
    }
}
