package defpackage;

import android.media.browse.MediaBrowser;
import android.support.v4.media.MediaBrowserCompat;
import defpackage.InterfaceC3591qs;
import java.util.List;

/* renamed from: rs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3649rs<T extends InterfaceC3591qs> extends MediaBrowser.SubscriptionCallback {

    /* renamed from: do, reason: not valid java name */
    public final T f15332do;

    public C3649rs(MediaBrowserCompat.Cthis.Cdo cdo) {
        this.f15332do = cdo;
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
        this.f15332do.mo3174for(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(String str) {
        this.f15332do.onError();
    }
}
