package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat.Cif;

/* renamed from: androidx.media.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f7181break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7183do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f7184for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f7185new;

    public Ccase(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, int i, int i2, Bundle bundle) {
        this.f7182do = cgoto;
        this.f7183do = cbreak;
        this.f7181break = str;
        this.f7184for = i;
        this.f7185new = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7183do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7182do;
        MediaBrowserServiceCompat.this.f7163do.remove(m4281do);
        MediaBrowserServiceCompat.Cif cif = MediaBrowserServiceCompat.this.new Cif(this.f7181break, this.f7184for, this.f7185new, this.f7183do);
        MediaBrowserServiceCompat.this.f7163do.put(m4281do, cif);
        try {
            m4281do.linkToDeath(cif, 0);
        } catch (RemoteException unused) {
        }
    }
}
