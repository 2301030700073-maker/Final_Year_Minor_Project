package androidx.media;

import androidx.media.MediaBrowserServiceCompat;

/* renamed from: androidx.media.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7201do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7202do;

    public Cif(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak) {
        this.f7201do = cgoto;
        this.f7202do = cbreak;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.Cif remove = MediaBrowserServiceCompat.this.f7163do.remove(((MediaBrowserServiceCompat.Cbreak) this.f7202do).m4281do());
        if (remove != null) {
            ((MediaBrowserServiceCompat.Cbreak) remove.f7170do).m4281do().unlinkToDeath(remove, 0);
        }
    }
}
