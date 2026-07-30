package androidx.media;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import androidx.media.MediaBrowserServiceCompat;
import defpackage.C0133Bs;
import java.util.HashMap;

/* renamed from: androidx.media.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f7186break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7188do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f7189for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f7190new;

    public Cdo(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, int i, int i2, Bundle bundle) {
        this.f7187do = cgoto;
        this.f7188do = cbreak;
        this.f7186break = str;
        this.f7189for = i;
        this.f7190new = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.Cthis cthis = this.f7188do;
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) cthis).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7187do;
        MediaBrowserServiceCompat.this.f7163do.remove(m4281do);
        new HashMap();
        if (Build.VERSION.SDK_INT >= 28) {
            new C0133Bs(this.f7186break, this.f7189for, this.f7190new);
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        mediaBrowserServiceCompat.getClass();
        mediaBrowserServiceCompat.m4279do();
        mediaBrowserServiceCompat.getClass();
        try {
            MediaBrowserServiceCompat.Cbreak cbreak = (MediaBrowserServiceCompat.Cbreak) cthis;
            cbreak.getClass();
            Message obtain = Message.obtain();
            obtain.what = 2;
            obtain.arg1 = 2;
            obtain.setData(null);
            cbreak.f7166do.send(obtain);
        } catch (RemoteException unused) {
        }
    }
}
