package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

/* renamed from: androidx.media.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ResultReceiver f7215do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7216do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7217do;

    public Ctry(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, ResultReceiver resultReceiver) {
        this.f7216do = cgoto;
        this.f7217do = cbreak;
        this.f7215do = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7217do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7216do;
        if (MediaBrowserServiceCompat.this.f7163do.getOrDefault(m4281do, null) == null) {
            return;
        }
        MediaBrowserServiceCompat.this.getClass();
        int i = 2 & 2;
        ResultReceiver resultReceiver = this.f7215do;
        if (i != 0) {
            resultReceiver.m3186if(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", null);
        resultReceiver.m3186if(0, bundle);
    }
}
