package defpackage;

import android.media.browse.MediaBrowser;
import android.service.media.MediaBrowserService;
import androidx.media.MediaBrowserServiceCompat;

/* renamed from: xs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C4003xs extends C3826us {
    public C4003xs(MediaBrowserServiceCompat mediaBrowserServiceCompat, InterfaceC4062ys interfaceC4062ys) {
        super(mediaBrowserServiceCompat, interfaceC4062ys);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
        ((InterfaceC4062ys) this.f15959do).mo4286do(new C3885vs(result));
    }
}
