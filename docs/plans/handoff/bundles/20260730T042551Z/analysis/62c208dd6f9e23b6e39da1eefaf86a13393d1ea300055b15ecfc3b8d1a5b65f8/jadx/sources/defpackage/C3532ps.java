package defpackage;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.Cif;
import android.support.v4.media.session.Cnew;
import android.support.v4.media.session.Ctry;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import androidx.media.session.MediaButtonReceiver;
import defpackage.InterfaceC3473os;
import java.lang.ref.WeakReference;
import java.util.HashSet;

/* renamed from: ps, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3532ps<T extends InterfaceC3473os> extends MediaBrowser.ConnectionCallback {

    /* renamed from: do, reason: not valid java name */
    public final T f15006do;

    public C3532ps(MediaBrowserCompat.Cif.C0021if c0021if) {
        this.f15006do = c0021if;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnected() {
        Context context;
        MediaSessionCompat.Token token;
        MediaBrowserCompat.Cfor cfor;
        MediaBrowser mediaBrowser;
        Bundle extras;
        MediaBrowserCompat.Cif cif = MediaBrowserCompat.Cif.this;
        MediaBrowserCompat.Cif.Cdo cdo = cif.f5028do;
        if (cdo != null && (extras = (mediaBrowser = (cfor = (MediaBrowserCompat.Cfor) cdo).f5020do).getExtras()) != null) {
            extras.getInt("extra_service_version", 0);
            IBinder binder = extras.getBinder("extra_messenger");
            if (binder != null) {
                cfor.f5024do = new MediaBrowserCompat.Celse(binder, cfor.f5021do);
                MediaBrowserCompat.Cdo cdo2 = cfor.f5023do;
                Messenger messenger = new Messenger(cdo2);
                cfor.f5022do = messenger;
                cdo2.getClass();
                cdo2.f5015if = new WeakReference<>(messenger);
                try {
                    MediaBrowserCompat.Celse celse = cfor.f5024do;
                    Context context2 = cfor.f5019do;
                    Messenger messenger2 = cfor.f5022do;
                    celse.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putString("data_package_name", context2.getPackageName());
                    bundle.putBundle("data_root_hints", celse.f5016do);
                    celse.m3172do(6, bundle, messenger2);
                } catch (RemoteException unused) {
                }
            }
            Cif n = Cif.Cdo.n(extras.getBinder("extra_session_binder"));
            if (n != null) {
                MediaSession.Token sessionToken = mediaBrowser.getSessionToken();
                cfor.f5025do = sessionToken != null ? new MediaSessionCompat.Token(sessionToken, n) : null;
            }
        }
        MediaButtonReceiver.Cdo cdo3 = (MediaButtonReceiver.Cdo) cif;
        try {
            context = cdo3.f7208do;
            MediaBrowserCompat.Cfor cfor2 = cdo3.f7210do.f5011do;
            if (cfor2.f5025do == null) {
                MediaSession.Token sessionToken2 = cfor2.f5020do.getSessionToken();
                cfor2.f5025do = sessionToken2 != null ? new MediaSessionCompat.Token(sessionToken2, null) : null;
            }
            token = cfor2.f5025do;
            new HashSet();
        } catch (RemoteException unused2) {
        }
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        int i = Build.VERSION.SDK_INT;
        MediaControllerCompat$MediaControllerImplApi21 ctry = i >= 24 ? new Ctry(context, token) : i >= 23 ? new Cnew(context, token) : new MediaControllerCompat$MediaControllerImplApi21(context, token);
        KeyEvent keyEvent = (KeyEvent) cdo3.f7209do.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            throw new IllegalArgumentException("KeyEvent may not be null");
        }
        ctry.f5045do.dispatchMediaButtonEvent(keyEvent);
        cdo3.m4288do();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionFailed() {
        MediaBrowserCompat.Cif cif = MediaBrowserCompat.Cif.this;
        MediaBrowserCompat.Cif.Cdo cdo = cif.f5028do;
        ((MediaButtonReceiver.Cdo) cif).m4288do();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionSuspended() {
        MediaBrowserCompat.Cif cif = MediaBrowserCompat.Cif.this;
        MediaBrowserCompat.Cif.Cdo cdo = cif.f5028do;
        if (cdo != null) {
            MediaBrowserCompat.Cfor cfor = (MediaBrowserCompat.Cfor) cdo;
            cfor.f5024do = null;
            cfor.f5022do = null;
            cfor.f5025do = null;
            MediaBrowserCompat.Cdo cdo2 = cfor.f5023do;
            cdo2.getClass();
            cdo2.f5015if = new WeakReference<>(null);
        }
        ((MediaButtonReceiver.Cdo) cif).m4288do();
    }
}
