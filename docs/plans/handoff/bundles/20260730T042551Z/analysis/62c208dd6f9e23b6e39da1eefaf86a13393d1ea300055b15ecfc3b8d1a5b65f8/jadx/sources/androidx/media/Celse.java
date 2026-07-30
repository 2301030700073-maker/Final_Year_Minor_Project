package androidx.media;

import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;

/* renamed from: androidx.media.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7191do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7192do;

    public Celse(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak) {
        this.f7191do = cgoto;
        this.f7192do = cbreak;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7192do).m4281do();
        MediaBrowserServiceCompat.Cif remove = MediaBrowserServiceCompat.this.f7163do.remove(m4281do);
        if (remove != null) {
            m4281do.unlinkToDeath(remove, 0);
        }
    }
}
