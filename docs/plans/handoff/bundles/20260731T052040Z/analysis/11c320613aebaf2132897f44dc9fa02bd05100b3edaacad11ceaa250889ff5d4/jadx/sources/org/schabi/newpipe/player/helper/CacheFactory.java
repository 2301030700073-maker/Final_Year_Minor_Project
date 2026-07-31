package org.schabi.newpipe.player.helper;

import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CacheFactory implements DataSource.Factory {
    public final SimpleCache cache;
    public final PlayerService context;
    public final TransferListener transferListener;
    public final DataSource.Factory upstreamDataSourceFactory;

    public CacheFactory(PlayerService playerService, TransferListener transferListener, SimpleCache simpleCache, HttpDataSource.Factory factory) {
        this.context = playerService;
        this.transferListener = transferListener;
        this.cache = simpleCache;
        this.upstreamDataSourceFactory = factory;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
    public final DataSource createDataSource() {
        return new CacheDataSource(this.cache, new DefaultDataSource.Factory(this.context, this.upstreamDataSourceFactory).setTransferListener(this.transferListener).createDataSource(), new FileDataSource(), new CacheDataSink(this.cache, 2097152L), 2, null);
    }
}
