package defpackage;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

/* renamed from: Ac, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0095Ac {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0303Jm f108do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PendingIntent f109do;

    /* renamed from: Ac$do, reason: invalid class name */
    public class Cdo extends C3692sc {
        public Cdo() {
        }

        @Override // defpackage.C3692sc
        public final void extraCallback(String str, Bundle bundle) {
            try {
                C0095Ac.this.f108do.l(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
            try {
                return C0095Ac.this.f108do.mo1060else(str, bundle);
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // defpackage.C3692sc
        public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
            try {
                C0095Ac.this.f108do.b(i, i2, i3, i4, i5, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onActivityResized(int i, int i2, Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1061implements(i, i2, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onMessageChannelReady(Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1062import(bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onMinimized(Bundle bundle) {
            try {
                C0095Ac.this.f108do.f(bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onNavigationEvent(int i, Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1059break(i, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onPostMessage(String str, Bundle bundle) {
            try {
                C0095Ac.this.f108do.a(str, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1065switch(i, uri, z, bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onUnminimized(Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1064return(bundle);
            } catch (RemoteException unused) {
            }
        }

        @Override // defpackage.C3692sc
        public final void onWarmupCompleted(Bundle bundle) {
            try {
                C0095Ac.this.f108do.mo1063private(bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public C0095Ac(InterfaceC0303Jm interfaceC0303Jm, PendingIntent pendingIntent) {
        if (interfaceC0303Jm == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f108do = interfaceC0303Jm;
        this.f109do = pendingIntent;
        if (interfaceC0303Jm == null) {
            return;
        }
        new Cdo();
    }

    /* renamed from: do, reason: not valid java name */
    public final IBinder m79do() {
        InterfaceC0303Jm interfaceC0303Jm = this.f108do;
        if (interfaceC0303Jm != null) {
            return interfaceC0303Jm.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0095Ac)) {
            return false;
        }
        C0095Ac c0095Ac = (C0095Ac) obj;
        PendingIntent pendingIntent = c0095Ac.f109do;
        PendingIntent pendingIntent2 = this.f109do;
        if ((pendingIntent2 == null) != (pendingIntent == null)) {
            return false;
        }
        return pendingIntent2 != null ? pendingIntent2.equals(pendingIntent) : m79do().equals(c0095Ac.m79do());
    }

    public final int hashCode() {
        PendingIntent pendingIntent = this.f109do;
        return pendingIntent != null ? pendingIntent.hashCode() : m79do().hashCode();
    }
}
