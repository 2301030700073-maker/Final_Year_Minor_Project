package org.openintents.openpgp.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import org.openintents.openpgp.IOpenPgpService2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpServiceConnection {
    public final Context mApplicationContext;
    public final OnBound mOnBoundListener;
    public final String mProviderPackageName;
    public IOpenPgpService2 mService;
    public final AnonymousClass1 mServiceConnection = new ServiceConnection() { // from class: org.openintents.openpgp.util.OpenPgpServiceConnection.1
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v5, types: [org.openintents.openpgp.IOpenPgpService2] */
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IOpenPgpService2.Stub.Proxy proxy;
            int i = IOpenPgpService2.Stub.$r8$clinit;
            if (iBinder == null) {
                proxy = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("org.openintents.openpgp.IOpenPgpService2");
                if (queryLocalInterface == null || !(queryLocalInterface instanceof IOpenPgpService2)) {
                    IOpenPgpService2.Stub.Proxy proxy2 = new IOpenPgpService2.Stub.Proxy();
                    proxy2.mRemote = iBinder;
                    proxy = proxy2;
                } else {
                    proxy = (IOpenPgpService2) queryLocalInterface;
                }
            }
            OpenPgpServiceConnection openPgpServiceConnection = OpenPgpServiceConnection.this;
            openPgpServiceConnection.mService = proxy;
            OnBound onBound = openPgpServiceConnection.mOnBoundListener;
            if (onBound != null) {
                onBound.onBound(proxy);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            OpenPgpServiceConnection.this.mService = null;
        }
    };

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnBound {
        void onBound(IOpenPgpService2 iOpenPgpService2);

        void onError(Exception exc);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.openintents.openpgp.util.OpenPgpServiceConnection$1] */
    public OpenPgpServiceConnection(Context context, String str, OnBound onBound) {
        this.mApplicationContext = context.getApplicationContext();
        this.mProviderPackageName = str;
        this.mOnBoundListener = onBound;
    }

    public final void bindToService() {
        IOpenPgpService2 iOpenPgpService2 = this.mService;
        OnBound onBound = this.mOnBoundListener;
        if (iOpenPgpService2 != null) {
            if (onBound != null) {
                onBound.onBound(iOpenPgpService2);
                return;
            }
            return;
        }
        try {
            Intent intent = new Intent("org.openintents.openpgp.IOpenPgpService2");
            intent.setPackage(this.mProviderPackageName);
            if (this.mApplicationContext.bindService(intent, this.mServiceConnection, 1)) {
            } else {
                throw new Exception("bindService() returned false!");
            }
        } catch (Exception e) {
            if (onBound != null) {
                onBound.onError(e);
            }
        }
    }
}
