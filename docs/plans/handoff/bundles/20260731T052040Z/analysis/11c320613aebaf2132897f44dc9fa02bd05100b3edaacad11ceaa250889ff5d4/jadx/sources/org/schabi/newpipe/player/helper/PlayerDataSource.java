package org.schabi.newpipe.player.helper;

import android.util.Log;
import androidx.preference.PreferenceManager;
import com.google.android.exoplayer2.database.StandaloneDatabaseProvider;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import java.io.File;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubeOtfDashManifestCreator;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubePostLiveStreamDvrDashManifestCreator;
import org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators.YoutubeProgressiveDashManifestCreator;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.datasource.YoutubeHttpDataSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlayerDataSource {
    public static SimpleCache cache;
    public final CacheFactory cacheDataSourceFactory;
    public final DefaultDataSource.Factory cachelessDataSourceFactory;
    public final int progressiveLoadIntervalBytes;
    public final CacheFactory ytDashCacheDataSourceFactory;
    public final CacheFactory ytHlsCacheDataSourceFactory;
    public final CacheFactory ytProgressiveDashCacheDataSourceFactory;

    public PlayerDataSource(PlayerService playerService, DefaultBandwidthMeter defaultBandwidthMeter) {
        String string = playerService.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(playerService), 0).getString(playerService.getString(R.string.progressive_load_interval_key), playerService.getString(R.string.progressive_load_interval_default_value));
        this.progressiveLoadIntervalBytes = playerService.getString(R.string.progressive_load_interval_exoplayer_default_value).equals(string) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : Integer.parseInt(string) * 1024;
        if (cache == null) {
            File file = new File(playerService.getExternalCacheDir(), "exoplayer");
            int i = MainActivity.$r8$clinit;
            if (!file.exists() && !file.mkdir()) {
                Log.w("PlayerDataSource", "instantiateCacheIfNeeded: could not create cache dir");
            }
            cache = new SimpleCache(file, new LeastRecentlyUsedCacheEvictor(67108864L), new StandaloneDatabaseProvider(playerService));
        }
        this.cachelessDataSourceFactory = new DefaultDataSource.Factory(playerService, new DefaultHttpDataSource.Factory().setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0")).setTransferListener(defaultBandwidthMeter);
        this.cacheDataSourceFactory = new CacheFactory(playerService, defaultBandwidthMeter, cache, new DefaultHttpDataSource.Factory().setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"));
        SimpleCache simpleCache = cache;
        YoutubeHttpDataSource.Factory factory = new YoutubeHttpDataSource.Factory();
        factory.rangeParameterEnabled = false;
        factory.rnParameterEnabled = false;
        this.ytHlsCacheDataSourceFactory = new CacheFactory(playerService, defaultBandwidthMeter, simpleCache, factory);
        SimpleCache simpleCache2 = cache;
        YoutubeHttpDataSource.Factory factory2 = new YoutubeHttpDataSource.Factory();
        factory2.rangeParameterEnabled = true;
        factory2.rnParameterEnabled = true;
        this.ytDashCacheDataSourceFactory = new CacheFactory(playerService, defaultBandwidthMeter, simpleCache2, factory2);
        SimpleCache simpleCache3 = cache;
        YoutubeHttpDataSource.Factory factory3 = new YoutubeHttpDataSource.Factory();
        factory3.rangeParameterEnabled = false;
        factory3.rnParameterEnabled = true;
        this.ytProgressiveDashCacheDataSourceFactory = new CacheFactory(playerService, defaultBandwidthMeter, simpleCache3, factory3);
        YoutubeProgressiveDashManifestCreator.PROGRESSIVE_STREAMS_CACHE.setMaximumSize();
        YoutubeOtfDashManifestCreator.OTF_STREAMS_CACHE.setMaximumSize();
        YoutubePostLiveStreamDvrDashManifestCreator.POST_LIVE_DVR_STREAMS_CACHE.setMaximumSize();
    }
}
