package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.InterfaceC0632Ym;

/* loaded from: classes.dex */
public abstract class UnusedAppRestrictionsBackportService extends Service {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f6518do = new Cdo();

    /* renamed from: androidx.core.content.UnusedAppRestrictionsBackportService$do, reason: invalid class name */
    public class Cdo extends InterfaceC0632Ym.Cdo {
        public Cdo() {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void m3718do();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6518do;
    }
}
