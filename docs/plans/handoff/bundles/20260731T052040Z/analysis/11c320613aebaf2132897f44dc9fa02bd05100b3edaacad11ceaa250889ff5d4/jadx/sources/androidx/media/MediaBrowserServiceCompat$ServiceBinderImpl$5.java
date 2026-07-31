package androidx.media;

import android.os.Bundle;
import android.os.Messenger;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import coil3.memory.MemoryCacheService;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.collections.EmptyList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserImpl$onSearch$1;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.util.ServiceHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaBrowserServiceCompat$ServiceBinderImpl$5 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ MemoryCacheService this$1;
    public final /* synthetic */ MemoryCacheService val$callbacks;
    public final /* synthetic */ String val$mediaId;
    public final /* synthetic */ ResultReceiver val$receiver;

    public MediaBrowserServiceCompat$ServiceBinderImpl$5(MemoryCacheService memoryCacheService, MemoryCacheService memoryCacheService2, String str, ResultReceiver resultReceiver) {
        this.this$1 = memoryCacheService;
        this.val$callbacks = memoryCacheService2;
        this.val$mediaId = str;
        this.val$receiver = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        ResultReceiver resultReceiver = this.val$receiver;
        MemoryCacheService memoryCacheService = this.this$1;
        MemoryCacheService memoryCacheService2 = this.val$callbacks;
        String str = this.val$mediaId;
        switch (i) {
            case 0:
                if (((MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mConnections.get(((Messenger) memoryCacheService2.imageLoader).getBinder())) != null) {
                    if ((2 & 2) == 0) {
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("media_item", null);
                        resultReceiver.send(0, bundle);
                        break;
                    } else {
                        resultReceiver.send(-1, null);
                        break;
                    }
                } else {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                    break;
                }
            default:
                if (((MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mConnections.get(((Messenger) memoryCacheService2.imageLoader).getBinder())) != null) {
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) memoryCacheService.imageLoader;
                    MediaBrowserServiceCompat.AnonymousClass3 anonymousClass3 = new MediaBrowserServiceCompat.AnonymousClass3(str, resultReceiver, 0);
                    MediaBrowserImpl mediaBrowserImpl = ((PlayerService) mediaBrowserServiceCompat).mediaBrowserImpl;
                    mediaBrowserImpl.getClass();
                    str.getClass();
                    int i2 = MainActivity.$r8$clinit;
                    anonymousClass3.detach();
                    CompositeDisposable compositeDisposable = mediaBrowserImpl.disposables;
                    int selectedServiceId = ServiceHelper.getSelectedServiceId(mediaBrowserImpl.context);
                    ExtractorHelper.checkServiceId(selectedServiceId);
                    SingleObserveOn subscribeOn = new SingleMap(new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda2(selectedServiceId, str, EmptyList.INSTANCE, ""), 3), new MediaBrowserImpl$onSearch$1(mediaBrowserImpl, 0), 0).subscribeOn(Schedulers.IO);
                    ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new VideoPlayerUi.AnonymousClass1(anonymousClass3, 11), new TokenData((Object) anonymousClass3, str, 19));
                    subscribeOn.subscribe(consumerSingleObserver);
                    compositeDisposable.add(consumerSingleObserver);
                    if (!anonymousClass3.isDone()) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("onSearch must call detach() or sendResult() before returning for query=".concat(str));
                        break;
                    }
                } else {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                    break;
                }
                break;
        }
    }

    public MediaBrowserServiceCompat$ServiceBinderImpl$5(MemoryCacheService memoryCacheService, MemoryCacheService memoryCacheService2, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.this$1 = memoryCacheService;
        this.val$callbacks = memoryCacheService2;
        this.val$mediaId = str;
        this.val$receiver = resultReceiver;
    }
}
