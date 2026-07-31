package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.Collections;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SourceGenerator implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {
    public final DecodeJob cb;
    public volatile Object dataToCache;
    public final DecodeHelper helper;
    public volatile ModelLoader.LoadData loadData;
    public volatile int loadDataListIndex;
    public volatile DataCacheKey originalKey;
    public volatile DataCacheGenerator sourceCacheGenerator;

    public SourceGenerator(DecodeHelper decodeHelper, DecodeJob decodeJob) {
        this.helper = decodeHelper;
        this.cb = decodeJob;
    }

    public final boolean cacheData(Object obj) {
        Throwable th;
        int i = LogTime.$r8$clinit;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            DataRewinder rewinder = this.helper.glideContext.getRegistry().getRewinder(obj);
            Object rewindAndGet = rewinder.rewindAndGet();
            Encoder sourceEncoder = this.helper.getSourceEncoder(rewindAndGet);
            ImapSync imapSync = new ImapSync(sourceEncoder, rewindAndGet, this.helper.options, 6);
            Key key = this.loadData.sourceKey;
            DecodeHelper decodeHelper = this.helper;
            DataCacheKey dataCacheKey = new DataCacheKey(key, decodeHelper.signature);
            DiskCache diskCache = decodeHelper.diskCacheProvider.getDiskCache();
            diskCache.put(dataCacheKey, imapSync);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + dataCacheKey + ", data: " + obj + ", encoder: " + sourceEncoder + ", duration: " + LogTime.getElapsedMillis(elapsedRealtimeNanos));
            }
            if (diskCache.get(dataCacheKey) != null) {
                this.originalKey = dataCacheKey;
                this.sourceCacheGenerator = new DataCacheGenerator(Collections.singletonList(this.loadData.sourceKey), this.helper, this);
                this.loadData.fetcher.cleanup();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.originalKey + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.cb.onDataFetcherReady(this.loadData.sourceKey, rewinder.rewindAndGet(), this.loadData.fetcher, this.loadData.fetcher.getDataSource(), this.loadData.sourceKey);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (z) {
                    throw th;
                }
                this.loadData.fetcher.cleanup();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.loadData;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherFailed(Key key, Exception exc, DataFetcher dataFetcher, int i) {
        this.cb.onDataFetcherFailed(key, exc, dataFetcher, this.loadData.fetcher.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherReady(Key key, Object obj, DataFetcher dataFetcher, int i, Key key2) {
        this.cb.onDataFetcherReady(key, obj, dataFetcher, this.loadData.fetcher.getDataSource(), key);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (cacheData(r0) == false) goto L16;
     */
    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean startNext() {
        /*
            r7 = this;
            java.lang.Object r0 = r7.dataToCache
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L20
            java.lang.Object r0 = r7.dataToCache
            r7.dataToCache = r1
            boolean r0 = r7.cacheData(r0)     // Catch: java.io.IOException -> L11
            if (r0 != 0) goto L20
            goto L2c
        L11:
            r0 = move-exception
            r3 = 3
            java.lang.String r4 = "SourceGenerator"
            boolean r3 = android.util.Log.isLoggable(r4, r3)
            if (r3 == 0) goto L20
            java.lang.String r3 = "Failed to properly rewind or write data to cache"
            android.util.Log.d(r4, r3, r0)
        L20:
            com.bumptech.glide.load.engine.DataCacheGenerator r0 = r7.sourceCacheGenerator
            if (r0 == 0) goto L2d
            com.bumptech.glide.load.engine.DataCacheGenerator r0 = r7.sourceCacheGenerator
            boolean r0 = r0.startNext()
            if (r0 == 0) goto L2d
        L2c:
            return r2
        L2d:
            r7.sourceCacheGenerator = r1
            r7.loadData = r1
            r0 = 0
        L32:
            if (r0 != 0) goto L93
            int r1 = r7.loadDataListIndex
            com.bumptech.glide.load.engine.DecodeHelper r3 = r7.helper
            java.util.ArrayList r3 = r3.getLoadData()
            int r3 = r3.size()
            if (r1 >= r3) goto L93
            com.bumptech.glide.load.engine.DecodeHelper r1 = r7.helper
            java.util.ArrayList r1 = r1.getLoadData()
            int r3 = r7.loadDataListIndex
            int r4 = r3 + 1
            r7.loadDataListIndex = r4
            java.lang.Object r1 = r1.get(r3)
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = (com.bumptech.glide.load.model.ModelLoader.LoadData) r1
            r7.loadData = r1
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = r7.loadData
            if (r1 == 0) goto L32
            com.bumptech.glide.load.engine.DecodeHelper r1 = r7.helper
            com.bumptech.glide.load.engine.DiskCacheStrategy$2 r1 = r1.diskCacheStrategy
            com.bumptech.glide.load.model.ModelLoader$LoadData r3 = r7.loadData
            com.bumptech.glide.load.data.DataFetcher r3 = r3.fetcher
            int r3 = r3.getDataSource()
            boolean r1 = r1.isDataCacheable(r3)
            if (r1 != 0) goto L7c
            com.bumptech.glide.load.engine.DecodeHelper r1 = r7.helper
            com.bumptech.glide.load.model.ModelLoader$LoadData r3 = r7.loadData
            com.bumptech.glide.load.data.DataFetcher r3 = r3.fetcher
            java.lang.Class r3 = r3.getDataClass()
            com.bumptech.glide.load.engine.LoadPath r1 = r1.getLoadPath(r3)
            if (r1 == 0) goto L32
        L7c:
            com.bumptech.glide.load.model.ModelLoader$LoadData r0 = r7.loadData
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = r7.loadData
            com.bumptech.glide.load.data.DataFetcher r1 = r1.fetcher
            com.bumptech.glide.load.engine.DecodeHelper r3 = r7.helper
            com.bumptech.glide.Priority r3 = r3.priority
            com.beetstra.jutf7.Base64Util r4 = new com.beetstra.jutf7.Base64Util
            r5 = 14
            r6 = 0
            r4.<init>(r5, r7, r0, r6)
            r1.loadData(r3, r4)
            r0 = r2
            goto L32
        L93:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.SourceGenerator.startNext():boolean");
    }
}
