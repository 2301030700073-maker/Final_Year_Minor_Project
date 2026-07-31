package androidx.media;

import android.content.Context;
import android.os.Bundle;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat.ConnectionRecord;
import coil3.ComponentRegistry;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 extends MediaBrowserService {
    public final /* synthetic */ ComponentRegistry.Builder this$1$1;

    public MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23(ComponentRegistry.Builder builder, Context context) {
        this.this$1$1 = builder;
        attachBaseContext(context);
    }

    @Override // android.service.media.MediaBrowserService
    public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        Bundle bundle2;
        MediaMetadataCompat.Builder builder;
        MediaSessionCompat.ensureClassLoader(bundle);
        ComponentRegistry.Builder builder2 = this.this$1$1;
        MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) builder2.lazyFetcherFactories;
        Bundle bundle3 = bundle == null ? null : new Bundle(bundle);
        int i2 = -1;
        if (bundle3 == null || bundle3.getInt("extra_client_version", 0) == 0) {
            bundle2 = null;
        } else {
            bundle3.remove("extra_client_version");
            builder2.keyers = new Messenger(mediaBrowserServiceCompat.mHandler);
            Bundle bundle4 = new Bundle();
            bundle4.putInt("extra_service_version", 2);
            bundle4.putBinder("extra_messenger", ((Messenger) builder2.keyers).getBinder());
            MediaSessionCompat.Token token = mediaBrowserServiceCompat.mSession;
            if (token != null) {
                IMediaSession extraBinder = token.getExtraBinder();
                bundle4.putBinder("extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
            } else {
                ((ArrayList) builder2.interceptors).add(bundle4);
            }
            i2 = bundle3.getInt("extra_calling_pid", -1);
            bundle3.remove("extra_calling_pid");
            bundle2 = bundle4;
        }
        MediaBrowserServiceCompat.ConnectionRecord connectionRecord = mediaBrowserServiceCompat.new ConnectionRecord(str, i2, i, null);
        MediaMetadataCompat.Builder onGetRoot = mediaBrowserServiceCompat.onGetRoot(str, i, bundle3);
        if (onGetRoot == null) {
            builder = null;
        } else {
            if (((Messenger) builder2.keyers) != null) {
                mediaBrowserServiceCompat.mPendingConnections.add(connectionRecord);
            }
            Bundle bundle5 = onGetRoot.mBundle;
            if (bundle2 == null) {
                bundle2 = bundle5;
            } else if (bundle5 != null) {
                bundle2.putAll(bundle5);
            }
            builder = new MediaMetadataCompat.Builder(bundle2);
        }
        if (builder == null) {
            return null;
        }
        return new MediaBrowserService.BrowserRoot("//org.schabi.newpipe", builder.mBundle);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result) {
        ((MediaBrowserServiceCompat) this.this$1$1.lazyFetcherFactories).onLoadChildren(str, new MediaBrowserServiceCompat.AnonymousClass3(str, new MemoryCacheService(result), 1));
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result result) {
        new MemoryCacheService(result).sendResult(null);
    }
}
