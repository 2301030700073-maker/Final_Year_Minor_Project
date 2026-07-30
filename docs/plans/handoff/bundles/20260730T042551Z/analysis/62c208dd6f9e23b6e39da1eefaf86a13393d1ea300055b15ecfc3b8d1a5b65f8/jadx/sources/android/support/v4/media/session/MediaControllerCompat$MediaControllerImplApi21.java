package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.session.Cfor;
import android.support.v4.media.session.Cif;
import android.support.v4.media.session.MediaSessionCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MediaControllerCompat$MediaControllerImplApi21 {

    /* renamed from: do, reason: not valid java name */
    public final MediaController f5045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MediaSessionCompat.Token f5046do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f5047do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f5048do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<Cfor, Cdo> f5049do = new HashMap<>();

    public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<MediaControllerCompat$MediaControllerImplApi21> f5050do;

        public ExtraBinderRequestResultReceiver(MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21) {
            super(null);
            this.f5050do = new WeakReference<>(mediaControllerCompat$MediaControllerImplApi21);
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.f5050do.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.f5047do) {
                mediaControllerCompat$MediaControllerImplApi21.f5046do.f5055do = Cif.Cdo.n(bundle.getBinder("android.support.v4.media.session.EXTRA_BINDER"));
                MediaSessionCompat.Token token = mediaControllerCompat$MediaControllerImplApi21.f5046do;
                bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
                token.getClass();
                mediaControllerCompat$MediaControllerImplApi21.m3178do();
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$do, reason: invalid class name */
    public static class Cdo extends Cfor.Cif {
        public Cdo(Cfor cfor) {
            super(cfor);
        }

        @Override // android.support.v4.media.session.Cdo
        /* renamed from: abstract, reason: not valid java name */
        public final void mo3179abstract() {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.Cdo
        /* renamed from: const, reason: not valid java name */
        public final void mo3180const() {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.Cdo
        /* renamed from: continue, reason: not valid java name */
        public final void mo3181continue() {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.Cdo
        /* renamed from: if, reason: not valid java name */
        public final void mo3182if() {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.Cdo
        public final void k() {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.Cdo
        /* renamed from: new, reason: not valid java name */
        public final void mo3183new() {
            throw new AssertionError();
        }
    }

    public MediaControllerCompat$MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
        this.f5046do = token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) token.f5056do);
        this.f5045do = mediaController;
        if (token.f5055do == null) {
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3178do() {
        MediaSessionCompat.Token token = this.f5046do;
        if (token.f5055do == null) {
            return;
        }
        ArrayList arrayList = this.f5048do;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Cfor cfor = (Cfor) it.next();
            Cdo cdo = new Cdo(cfor);
            this.f5049do.put(cfor, cdo);
            cfor.f5078do = cdo;
            try {
                token.f5055do.mo3185this(cdo);
            } catch (RemoteException unused) {
            }
        }
        arrayList.clear();
    }
}
