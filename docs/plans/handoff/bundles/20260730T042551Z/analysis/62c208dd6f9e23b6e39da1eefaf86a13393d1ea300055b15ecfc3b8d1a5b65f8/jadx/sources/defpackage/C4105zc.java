package defpackage;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.RemoteException;

/* renamed from: zc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4105zc {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0303Jm f16922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0325Km f16923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ComponentName f16925do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16926do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PendingIntent f16924do = null;

    public C4105zc(InterfaceC0325Km interfaceC0325Km, BinderC3810uc binderC3810uc, ComponentName componentName) {
        this.f16923do = interfaceC0325Km;
        this.f16922do = binderC3810uc;
        this.f16925do = componentName;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8806do(String str) {
        Bundle bundle = new Bundle();
        PendingIntent pendingIntent = this.f16924do;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
        synchronized (this.f16926do) {
            try {
                try {
                    this.f16923do.mo1208instanceof(this.f16922do, str, bundle);
                } catch (RemoteException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
