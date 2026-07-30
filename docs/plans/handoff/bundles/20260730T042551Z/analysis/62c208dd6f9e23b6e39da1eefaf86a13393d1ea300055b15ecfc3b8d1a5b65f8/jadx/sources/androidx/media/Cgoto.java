package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

/* renamed from: androidx.media.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ResultReceiver f7198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7199do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7200do;

    public Cgoto(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f7199do = cgoto;
        this.f7200do = cbreak;
        this.f7198do = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7200do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7199do;
        if (MediaBrowserServiceCompat.this.f7163do.getOrDefault(m4281do, null) == null) {
            return;
        }
        MediaBrowserServiceCompat.this.getClass();
        this.f7198do.m3186if(-1, null);
    }
}
