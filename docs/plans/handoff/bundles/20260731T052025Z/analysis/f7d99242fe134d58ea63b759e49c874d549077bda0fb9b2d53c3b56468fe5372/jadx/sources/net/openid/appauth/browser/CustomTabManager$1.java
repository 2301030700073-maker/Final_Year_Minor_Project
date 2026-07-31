package net.openid.appauth.browser;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsService;
import androidx.browser.customtabs.CustomTabsServiceConnection$1;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import net.openid.appauth.internal.Logger;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CustomTabManager$1 implements ServiceConnection {
    public Context mApplicationContext;
    public final /* synthetic */ Dispatcher this$0;

    public CustomTabManager$1(Dispatcher dispatcher) {
        this.this$0 = dispatcher;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ICustomTabsService iCustomTabsService;
        if (this.mApplicationContext == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Custom Tabs Service connected before an applicationcontext has been provided.");
            return;
        }
        int i = ICustomTabsService.Stub.$r8$clinit;
        if (iBinder == null) {
            iCustomTabsService = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof ICustomTabsService)) {
                ICustomTabsService.Stub.Proxy proxy = new ICustomTabsService.Stub.Proxy();
                proxy.mRemote = iBinder;
                iCustomTabsService = proxy;
            } else {
                iCustomTabsService = (ICustomTabsService) queryLocalInterface;
            }
        }
        CustomTabsServiceConnection$1 customTabsServiceConnection$1 = new CustomTabsServiceConnection$1(iCustomTabsService, componentName);
        Logger.debug("CustomTabsService is connected", new Object[0]);
        try {
            ((ICustomTabsService.Stub.Proxy) iCustomTabsService).warmup();
        } catch (RemoteException unused) {
        }
        Dispatcher dispatcher = this.this$0;
        ((AtomicReference) dispatcher.readyAsyncCalls).set(customTabsServiceConnection$1);
        ((CountDownLatch) dispatcher.runningAsyncCalls).countDown();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Logger.debug("CustomTabsService is disconnected", new Object[0]);
        Dispatcher dispatcher = this.this$0;
        ((AtomicReference) dispatcher.readyAsyncCalls).set(null);
        ((CountDownLatch) dispatcher.runningAsyncCalls).countDown();
    }
}
