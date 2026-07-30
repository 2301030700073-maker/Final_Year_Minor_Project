package defpackage;

import android.content.ServiceConnection;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzbz;

/* loaded from: classes3.dex */
public final class ES implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FS f792do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbz f793do;

    public ES(FS fs, zzbz zzbzVar, ServiceConnection serviceConnection) {
        this.f793do = zzbzVar;
        this.f792do = fs;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FS fs = this.f792do;
        DS ds = fs.f1052do;
        TS ts = ds.f617do;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        zzbz zzbzVar = this.f793do;
        C3156jS c3156jS = ts.f3695do;
        if (zzbzVar != null) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", fs.f1053do);
            try {
                if (zzbzVar.zza(bundle) == null) {
                    TS.m2247this(c3156jS);
                    c3156jS.f13717do.m7369if("Install Referrer Service returned a null response");
                }
            } catch (Exception e) {
                TS.m2247this(c3156jS);
                c3156jS.f13717do.m7368for("Exception occurred while retrieving the Install Referrer", e.getMessage());
            }
        } else {
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7369if("Attempting to use Install Referrer Service while it is not initialized");
        }
        QS qs2 = ds.f617do.f3683do;
        TS.m2247this(qs2);
        qs2.mo1960catch();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
