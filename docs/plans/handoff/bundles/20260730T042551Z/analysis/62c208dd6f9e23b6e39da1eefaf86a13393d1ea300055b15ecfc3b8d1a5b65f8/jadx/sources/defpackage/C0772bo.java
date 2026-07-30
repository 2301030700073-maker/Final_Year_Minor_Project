package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
import defpackage.InterfaceC0368Mm;

/* renamed from: bo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0772bo extends InstallReferrerClient {

    /* renamed from: do, reason: not valid java name */
    public int f8450do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0368Mm f8451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f8452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f8453do;

    /* renamed from: bo$do, reason: invalid class name */
    public final class Cdo implements ServiceConnection {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InstallReferrerStateListener f8455do;

        public Cdo(InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1 installReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1) {
            this.f8455do = installReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InterfaceC0368Mm c0003do;
            int i = InterfaceC0368Mm.Cdo.f2238for;
            if (iBinder == null) {
                c0003do = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                c0003do = (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0368Mm)) ? new InterfaceC0368Mm.Cdo.C0003do(iBinder) : (InterfaceC0368Mm) queryLocalInterface;
            }
            C0772bo c0772bo = C0772bo.this;
            c0772bo.f8451do = c0003do;
            c0772bo.f8450do = 2;
            this.f8455do.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            C0772bo c0772bo = C0772bo.this;
            c0772bo.f8451do = null;
            c0772bo.f8450do = 0;
            this.f8455do.onInstallReferrerServiceDisconnected();
        }
    }

    public C0772bo(Context context) {
        this.f8452do = context.getApplicationContext();
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    /* renamed from: do, reason: not valid java name */
    public final ReferrerDetails mo4859do() {
        if (!((this.f8450do != 2 || this.f8451do == null || this.f8453do == null) ? false : true)) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f8452do.getPackageName());
        try {
            return new ReferrerDetails(this.f8451do.mo1460try(bundle));
        } catch (RemoteException e) {
            this.f8450do = 0;
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007e  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4860if(com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1 r9) {
        /*
            r8 = this;
            int r0 = r8.f8450do
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L11
            Mm r4 = r8.f8451do
            if (r4 == 0) goto L11
            bo$do r4 = r8.f8453do
            if (r4 == 0) goto L11
            r4 = 1
            goto L12
        L11:
            r4 = 0
        L12:
            if (r4 == 0) goto L18
            r9.onInstallReferrerSetupFinished(r3)
            return
        L18:
            r4 = 3
            if (r0 != r2) goto L1f
            r9.onInstallReferrerSetupFinished(r4)
            return
        L1f:
            if (r0 != r4) goto L25
            r9.onInstallReferrerSetupFinished(r4)
            return
        L25:
            bo$do r0 = new bo$do
            r0.<init>(r9)
            r8.f8453do = r0
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r4 = "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"
            r0.<init>(r4)
            android.content.ComponentName r4 = new android.content.ComponentName
            java.lang.String r5 = "com.android.vending"
            java.lang.String r6 = "com.google.android.finsky.externalreferrer.GetInstallReferrerService"
            r4.<init>(r5, r6)
            r0.setComponent(r4)
            android.content.Context r4 = r8.f8452do
            android.content.pm.PackageManager r6 = r4.getPackageManager()
            java.util.List r6 = r6.queryIntentServices(r0, r3)
            if (r6 == 0) goto L98
            boolean r7 = r6.isEmpty()
            if (r7 != 0) goto L98
            java.lang.Object r6 = r6.get(r3)
            android.content.pm.ResolveInfo r6 = (android.content.pm.ResolveInfo) r6
            android.content.pm.ServiceInfo r6 = r6.serviceInfo
            if (r6 == 0) goto L98
            java.lang.String r7 = r6.packageName
            java.lang.String r6 = r6.name
            boolean r7 = r5.equals(r7)
            if (r7 == 0) goto L92
            if (r6 == 0) goto L92
            android.content.pm.PackageManager r6 = r4.getPackageManager()
            r7 = 128(0x80, float:1.8E-43)
            android.content.pm.PackageInfo r5 = r6.getPackageInfo(r5, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7a
            int r5 = r5.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7a
            r6 = 80837300(0x4d17ab4, float:4.924835E-36)
            if (r5 < r6) goto L7b
            r5 = 1
            goto L7c
        L7a:
        L7b:
            r5 = 0
        L7c:
            if (r5 == 0) goto L92
            android.content.Intent r1 = new android.content.Intent
            r1.<init>(r0)
            bo$do r0 = r8.f8453do
            boolean r0 = r4.bindService(r1, r0, r2)
            if (r0 == 0) goto L8c
            return
        L8c:
            r8.f8450do = r3
            r9.onInstallReferrerSetupFinished(r2)
            return
        L92:
            r8.f8450do = r3
            r9.onInstallReferrerSetupFinished(r1)
            return
        L98:
            r8.f8450do = r3
            r9.onInstallReferrerSetupFinished(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0772bo.m4860if(com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1):void");
    }
}
