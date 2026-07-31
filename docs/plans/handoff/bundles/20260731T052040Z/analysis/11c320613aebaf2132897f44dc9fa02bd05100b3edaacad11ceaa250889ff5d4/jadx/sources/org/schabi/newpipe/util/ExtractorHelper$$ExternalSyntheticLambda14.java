package org.schabi.newpipe.util;

import androidx.collection.LruCache;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.util.InfoCache;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda14 implements ListenerSet.Event, Consumer {
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda14(int i, int i2, String str) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = i2;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.f$0;
        String str = (String) this.f$1;
        int i2 = this.f$2;
        Info info = (Info) obj;
        ExtractorHelper.CACHE.getClass();
        int serviceId = info.getServiceId();
        YoutubeService youtubeService = ServiceHelper.DEFAULT_FALLBACK_SERVICE;
        long j = serviceId == ServiceList.SoundCloud.serviceId ? 300000L : 3600000L;
        LruCache lruCache = InfoCache.LRU_CACHE;
        synchronized (lruCache) {
            lruCache.put(InfoCache.keyOf(i, i2, str), new InfoCache.CacheData(info, j));
        }
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onSurfaceSizeChanged((AnalyticsListener.EventTime) this.f$1, this.f$0, this.f$2);
    }

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda14(AnalyticsListener.EventTime eventTime, int i, int i2) {
        this.f$1 = eventTime;
        this.f$0 = i;
        this.f$2 = i2;
    }
}
