package androidx.browser.trusted;

import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import defpackage.DH;
import defpackage.InterfaceC0566Vm;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class TrustedWebActivityService extends Service {

    /* renamed from: do, reason: not valid java name */
    public NotificationManager f6023do;

    /* renamed from: for, reason: not valid java name */
    public int f6025for = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6024do = new Cdo();

    /* renamed from: androidx.browser.trusted.TrustedWebActivityService$do, reason: invalid class name */
    public class Cdo extends InterfaceC0566Vm.Cdo {
        public Cdo() {
        }

        public final void n() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            int i = trustedWebActivityService.f6025for;
            if (i != -1) {
                if (i != Binder.getCallingUid()) {
                    throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
                }
            } else {
                trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                trustedWebActivityService.m3558for();
                throw null;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m3557do(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    /* renamed from: for, reason: not valid java name */
    public abstract DH m3558for();

    /* renamed from: if, reason: not valid java name */
    public final void m3559if() {
        if (this.f6023do == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final int m3560new() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6024do;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f6023do = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.f6025for = -1;
        return super.onUnbind(intent);
    }
}
