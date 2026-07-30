package defpackage;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import defpackage.InterfaceC3708ss;
import java.util.List;

/* renamed from: ts, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3767ts<T extends InterfaceC3708ss> extends C3649rs<T> {
    public C3767ts(MediaBrowserCompat.Cthis.Cif cif) {
        super(cif);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
        MediaSessionCompat.m3184do(bundle);
        ((InterfaceC3708ss) this.f15332do).mo3176if(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(String str, Bundle bundle) {
        MediaSessionCompat.m3184do(bundle);
        ((InterfaceC3708ss) this.f15332do).mo3175do();
    }
}
