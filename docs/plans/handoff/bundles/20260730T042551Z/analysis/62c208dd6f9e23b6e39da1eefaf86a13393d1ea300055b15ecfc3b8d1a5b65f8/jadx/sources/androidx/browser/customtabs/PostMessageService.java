package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import defpackage.InterfaceC0478Rm;

/* loaded from: classes.dex */
public class PostMessageService extends Service {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f6022do = new Cdo();

    /* renamed from: androidx.browser.customtabs.PostMessageService$do, reason: invalid class name */
    public class Cdo extends InterfaceC0478Rm.Cdo {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6022do;
    }
}
