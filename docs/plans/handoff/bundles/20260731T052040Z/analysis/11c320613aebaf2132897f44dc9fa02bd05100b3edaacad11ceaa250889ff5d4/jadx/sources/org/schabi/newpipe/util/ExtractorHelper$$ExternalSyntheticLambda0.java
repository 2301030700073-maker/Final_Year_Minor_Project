package org.schabi.newpipe.util;

import androidx.collection.LruCache;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeJust;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.util.InfoCache;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda0(int i, int i2, String str) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = i2;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        Info info;
        int i = this.f$0;
        String str = this.f$1;
        int i2 = this.f$2;
        ExtractorHelper.CACHE.getClass();
        LruCache lruCache = InfoCache.LRU_CACHE;
        synchronized (lruCache) {
            String keyOf = InfoCache.keyOf(i, i2, str);
            InfoCache.CacheData cacheData = (InfoCache.CacheData) lruCache.get(keyOf);
            info = null;
            if (cacheData != null) {
                if (System.currentTimeMillis() > cacheData.expireTimestamp) {
                    lruCache.remove(keyOf);
                } else {
                    info = cacheData.info;
                }
            }
        }
        int i3 = MainActivity.$r8$clinit;
        return info != null ? new MaybeJust(info) : MaybeEmpty.INSTANCE;
    }
}
