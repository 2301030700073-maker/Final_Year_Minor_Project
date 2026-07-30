package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
import j$.util.Objects;

/* renamed from: androidx.media.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Bundle f7211do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ResultReceiver f7212do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7213do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7214do;

    public Cthis(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f7213do = cgoto;
        this.f7214do = cbreak;
        this.f7211do = bundle;
        this.f7212do = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7214do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7213do;
        if (MediaBrowserServiceCompat.this.f7163do.getOrDefault(m4281do, null) == null) {
            Objects.toString(this.f7211do);
        } else {
            MediaBrowserServiceCompat.this.getClass();
            this.f7212do.m3186if(-1, null);
        }
    }
}
