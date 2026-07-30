package androidx.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import defpackage.C4003xs;
import defpackage.InterfaceC4062ys;
import java.util.List;

/* renamed from: androidx.media.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f7180do = 0;

    /* renamed from: androidx.media.break$do, reason: invalid class name */
    public static class Cdo extends C4003xs {
        public Cdo(MediaBrowserServiceCompat mediaBrowserServiceCompat, Cfor cfor) {
            super(mediaBrowserServiceCompat, cfor);
        }

        @Override // android.service.media.MediaBrowserService
        public final void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
            MediaSessionCompat.m3184do(bundle);
            ((Cfor) this.f15959do).mo4282if(str, new Cif(result));
        }
    }

    /* renamed from: androidx.media.break$for, reason: invalid class name */
    public interface Cfor extends InterfaceC4062ys {
        /* renamed from: if */
        void mo4282if(String str, Cif cif);
    }

    /* renamed from: androidx.media.break$if, reason: invalid class name */
    public static class Cif {
        public Cif(MediaBrowserService.Result result) {
        }
    }

    static {
        try {
            MediaBrowserService.Result.class.getDeclaredField("mFlags").setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
    }
}
