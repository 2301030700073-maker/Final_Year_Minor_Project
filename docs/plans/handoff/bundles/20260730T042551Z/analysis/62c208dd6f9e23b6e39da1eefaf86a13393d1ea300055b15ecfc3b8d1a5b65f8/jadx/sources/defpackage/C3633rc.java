package defpackage;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.internal.FacebookRequestErrorClassification;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: rc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3633rc extends AbstractServiceConnectionC4046yc {

    /* renamed from: do, reason: not valid java name */
    public static final ReentrantLock f15297do = new ReentrantLock();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C3869vc f15298do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C4105zc f15299do;

    /* renamed from: rc$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m7973do(Uri uri) {
            C3869vc c3869vc;
            C0173Do.m401try(uri, "url");
            ReentrantLock reentrantLock = C3633rc.f15297do;
            reentrantLock.lock();
            if (C3633rc.f15299do == null && (c3869vc = C3633rc.f15298do) != null) {
                C3633rc.f15299do = c3869vc.m8478for(null);
            }
            reentrantLock.unlock();
            reentrantLock.lock();
            C4105zc c4105zc = C3633rc.f15299do;
            if (c4105zc != null) {
                Bundle bundle = new Bundle();
                PendingIntent pendingIntent = c4105zc.f16924do;
                if (pendingIntent != null) {
                    bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                }
                try {
                    c4105zc.f16923do.h(c4105zc.f16922do, uri, bundle, null);
                } catch (RemoteException unused) {
                }
            }
            C3633rc.f15297do.unlock();
        }
    }

    @Override // defpackage.AbstractServiceConnectionC4046yc
    public final void onCustomTabsServiceConnected(ComponentName componentName, C3869vc c3869vc) {
        C3869vc c3869vc2;
        C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
        C0173Do.m401try(c3869vc, "newClient");
        try {
            c3869vc.f16096do.mo1209synchronized(0L);
        } catch (RemoteException unused) {
        }
        f15298do = c3869vc;
        ReentrantLock reentrantLock = f15297do;
        reentrantLock.lock();
        if (f15299do == null && (c3869vc2 = f15298do) != null) {
            f15299do = c3869vc2.m8478for(null);
        }
        reentrantLock.unlock();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C0173Do.m401try(componentName, "componentName");
    }
}
