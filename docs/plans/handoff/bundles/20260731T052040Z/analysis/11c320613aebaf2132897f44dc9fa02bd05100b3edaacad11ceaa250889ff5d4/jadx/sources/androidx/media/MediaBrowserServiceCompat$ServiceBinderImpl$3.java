package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.core.util.Pair;
import androidx.media.MediaBrowserServiceCompat;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaBrowserServiceCompat$ServiceBinderImpl$3 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ MemoryCacheService this$1;
    public final /* synthetic */ MemoryCacheService val$callbacks;
    public final /* synthetic */ String val$id;
    public final /* synthetic */ Bundle val$options;
    public final /* synthetic */ Object val$token;

    public MediaBrowserServiceCompat$ServiceBinderImpl$3(MemoryCacheService memoryCacheService, MemoryCacheService memoryCacheService2, String str, IBinder iBinder, Bundle bundle) {
        this.this$1 = memoryCacheService;
        this.val$callbacks = memoryCacheService2;
        this.val$id = str;
        this.val$token = iBinder;
        this.val$options = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.val$token;
        Bundle bundle = this.val$options;
        String str = this.val$id;
        MemoryCacheService memoryCacheService = this.this$1;
        MemoryCacheService memoryCacheService2 = this.val$callbacks;
        switch (i) {
            case 0:
                MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mConnections.get(((Messenger) memoryCacheService2.imageLoader).getBinder());
                if (connectionRecord == null) {
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                    break;
                } else {
                    HashMap hashMap = connectionRecord.subscriptions;
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) memoryCacheService.imageLoader;
                    IBinder iBinder = (IBinder) obj;
                    List<Pair> list = (List) hashMap.get(str);
                    if (list == null) {
                        list = new ArrayList();
                    }
                    for (Pair pair : list) {
                        if (iBinder == pair.first) {
                            Bundle bundle2 = (Bundle) pair.second;
                            if (bundle == bundle2) {
                                break;
                            } else if (bundle == null) {
                                if (bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                                    break;
                                }
                            } else if (bundle2 == null) {
                                if (bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                                    break;
                                }
                            } else if (bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                                break;
                            }
                        }
                    }
                    list.add(new Pair(iBinder, bundle));
                    hashMap.put(str, list);
                    mediaBrowserServiceCompat.performLoadChildren(str, connectionRecord, bundle);
                    break;
                }
                break;
            default:
                if (((MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mConnections.get(((Messenger) memoryCacheService2.imageLoader).getBinder())) == null) {
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                    break;
                } else {
                    ((ResultReceiver) obj).send(-1, null);
                    break;
                }
        }
    }

    public MediaBrowserServiceCompat$ServiceBinderImpl$3(MemoryCacheService memoryCacheService, MemoryCacheService memoryCacheService2, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.this$1 = memoryCacheService;
        this.val$callbacks = memoryCacheService2;
        this.val$id = str;
        this.val$options = bundle;
        this.val$token = resultReceiver;
    }
}
