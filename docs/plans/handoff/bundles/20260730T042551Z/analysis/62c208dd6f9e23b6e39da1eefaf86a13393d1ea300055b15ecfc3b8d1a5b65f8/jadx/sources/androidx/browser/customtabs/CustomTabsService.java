package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsService;
import defpackage.BinderC3810uc;
import defpackage.C0095Ac;
import defpackage.C2680eE;
import defpackage.InterfaceC0303Jm;
import defpackage.InterfaceC0325Km;
import java.util.ArrayList;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class CustomTabsService extends Service {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2680eE<IBinder, IBinder.DeathRecipient> f6020do = new C2680eE<>();

    /* renamed from: do, reason: not valid java name */
    public final Cdo f6019do = new Cdo();

    /* renamed from: androidx.browser.customtabs.CustomTabsService$do, reason: invalid class name */
    public class Cdo extends InterfaceC0325Km.Cdo {
        public Cdo() {
        }

        public static PendingIntent n(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        @Override // defpackage.InterfaceC0325Km
        /* renamed from: goto */
        public final boolean mo1207goto(BinderC3810uc binderC3810uc) {
            return o(binderC3810uc, null);
        }

        @Override // defpackage.InterfaceC0325Km
        public final boolean h(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle, ArrayList arrayList) {
            new C0095Ac(interfaceC0303Jm, n(bundle));
            return CustomTabsService.this.m3553if();
        }

        @Override // defpackage.InterfaceC0325Km
        public final boolean i(InterfaceC0303Jm interfaceC0303Jm, Uri uri, Bundle bundle) {
            new C0095Ac(interfaceC0303Jm, n(bundle));
            if (bundle != null) {
                if (Build.VERSION.SDK_INT >= 33) {
                }
            }
            return CustomTabsService.this.m3548case();
        }

        @Override // defpackage.InterfaceC0325Km
        /* renamed from: instanceof */
        public final int mo1208instanceof(InterfaceC0303Jm interfaceC0303Jm, String str, Bundle bundle) {
            new C0095Ac(interfaceC0303Jm, n(bundle));
            return CustomTabsService.this.m3554new();
        }

        public final boolean o(InterfaceC0303Jm interfaceC0303Jm, PendingIntent pendingIntent) {
            final C0095Ac c0095Ac = new C0095Ac(interfaceC0303Jm, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: xc
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        CustomTabsService.Cdo cdo = CustomTabsService.Cdo.this;
                        C0095Ac c0095Ac2 = c0095Ac;
                        CustomTabsService customTabsService = CustomTabsService.this;
                        customTabsService.getClass();
                        try {
                            synchronized (customTabsService.f6020do) {
                                InterfaceC0303Jm interfaceC0303Jm2 = c0095Ac2.f108do;
                                IBinder asBinder = interfaceC0303Jm2 == null ? null : interfaceC0303Jm2.asBinder();
                                if (asBinder == null) {
                                    return;
                                }
                                asBinder.unlinkToDeath(customTabsService.f6020do.getOrDefault(asBinder, null), 0);
                                customTabsService.f6020do.remove(asBinder);
                            }
                        } catch (NoSuchElementException unused) {
                        }
                    }
                };
                synchronized (CustomTabsService.this.f6020do) {
                    interfaceC0303Jm.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.f6020do.put(interfaceC0303Jm.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.m3551for();
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override // defpackage.InterfaceC0325Km
        /* renamed from: synchronized */
        public final boolean mo1209synchronized(long j) {
            return CustomTabsService.this.m3555this();
        }

        @Override // defpackage.InterfaceC0325Km
        /* renamed from: volatile */
        public final boolean mo1210volatile(InterfaceC0303Jm interfaceC0303Jm, Uri uri) {
            new C0095Ac(interfaceC0303Jm, null);
            new Bundle();
            return CustomTabsService.this.m3548case();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public abstract boolean m3548case();

    /* renamed from: do, reason: not valid java name */
    public abstract Bundle m3549do();

    /* renamed from: else, reason: not valid java name */
    public abstract boolean m3550else();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean m3551for();

    /* renamed from: goto, reason: not valid java name */
    public abstract boolean m3552goto();

    /* renamed from: if, reason: not valid java name */
    public abstract boolean m3553if();

    /* renamed from: new, reason: not valid java name */
    public abstract int m3554new();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6019do;
    }

    /* renamed from: this, reason: not valid java name */
    public abstract boolean m3555this();

    /* renamed from: try, reason: not valid java name */
    public abstract boolean m3556try();
}
