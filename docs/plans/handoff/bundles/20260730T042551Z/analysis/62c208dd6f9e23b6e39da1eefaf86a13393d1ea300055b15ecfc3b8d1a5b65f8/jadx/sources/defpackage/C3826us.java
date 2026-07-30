package defpackage;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;

/* renamed from: us, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3826us extends MediaBrowserService {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3944ws f15959do;

    public C3826us(MediaBrowserServiceCompat mediaBrowserServiceCompat, InterfaceC3944ws interfaceC3944ws) {
        attachBaseContext(mediaBrowserServiceCompat);
        this.f15959do = interfaceC3944ws;
    }

    @Override // android.service.media.MediaBrowserService
    public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        MediaSessionCompat.m3184do(bundle);
        this.f15959do.mo4285new(str, i, bundle == null ? null : new Bundle(bundle));
        return null;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        this.f15959do.mo4284for(str, new C3885vs<>(result));
    }
}
