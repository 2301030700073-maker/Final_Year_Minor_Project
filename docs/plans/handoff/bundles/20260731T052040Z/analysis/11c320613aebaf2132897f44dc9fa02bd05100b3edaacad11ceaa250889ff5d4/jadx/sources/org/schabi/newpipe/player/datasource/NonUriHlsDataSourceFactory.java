package org.schabi.newpipe.player.datasource;

import com.google.android.exoplayer2.source.hls.HlsDataSourceFactory;
import com.google.android.exoplayer2.upstream.ByteArrayDataSource;
import com.google.android.exoplayer2.upstream.DataSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NonUriHlsDataSourceFactory implements HlsDataSourceFactory {
    public final DataSource.Factory dataSourceFactory;
    public final byte[] playlistStringByteArray;

    public NonUriHlsDataSourceFactory(DataSource.Factory factory, byte[] bArr) {
        this.dataSourceFactory = factory;
        this.playlistStringByteArray = bArr;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsDataSourceFactory
    public final DataSource createDataSource(int i) {
        return i == 4 ? new ByteArrayDataSource(this.playlistStringByteArray) : this.dataSourceFactory.createDataSource();
    }
}
