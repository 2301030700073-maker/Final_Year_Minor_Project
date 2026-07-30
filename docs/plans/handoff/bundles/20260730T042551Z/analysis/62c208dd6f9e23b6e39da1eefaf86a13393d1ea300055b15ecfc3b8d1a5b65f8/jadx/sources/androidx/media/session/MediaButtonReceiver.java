package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import defpackage.V1;
import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: androidx.media.session.MediaButtonReceiver$do, reason: invalid class name */
    public static class Cdo extends MediaBrowserCompat.Cif {

        /* renamed from: do, reason: not valid java name */
        public final BroadcastReceiver.PendingResult f7207do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f7208do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Intent f7209do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public MediaBrowserCompat f7210do;

        public Cdo(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f7208do = context;
            this.f7209do = intent;
            this.f7207do = pendingResult;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4288do() {
            Messenger messenger;
            MediaBrowserCompat.Cfor cfor = this.f7210do.f5011do;
            MediaBrowserCompat.Celse celse = cfor.f5024do;
            if (celse != null && (messenger = cfor.f5022do) != null) {
                try {
                    celse.m3172do(7, null, messenger);
                } catch (RemoteException unused) {
                }
            }
            cfor.f5020do.disconnect();
            this.f7207do.finish();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static ComponentName m4287do(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (queryIntentServices.isEmpty()) {
            return null;
        }
        StringBuilder m2493break = V1.m2493break("Expected 1 service that handles ", str, ", found ");
        m2493break.append(queryIntentServices.size());
        throw new IllegalStateException(m2493break.toString());
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Objects.toString(intent);
            return;
        }
        ComponentName m4287do = m4287do(context, "android.intent.action.MEDIA_BUTTON");
        if (m4287do != null) {
            intent.setComponent(m4287do);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
                return;
            } else {
                context.startService(intent);
                return;
            }
        }
        ComponentName m4287do2 = m4287do(context, "android.media.browse.MediaBrowserService");
        if (m4287do2 == null) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        Cdo cdo = new Cdo(applicationContext, intent, goAsync);
        MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, m4287do2, cdo);
        cdo.f7210do = mediaBrowserCompat;
        mediaBrowserCompat.f5011do.f5020do.connect();
    }
}
