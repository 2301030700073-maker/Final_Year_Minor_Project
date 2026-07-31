package com.google.android.exoplayer2.source.dash.offline;

import androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.offline.SegmentDownloader;
import com.google.android.exoplayer2.source.dash.BaseUrlExclusionList;
import com.google.android.exoplayer2.source.dash.DashSegmentIndex;
import com.google.android.exoplayer2.source.dash.DashUtil;
import com.google.android.exoplayer2.source.dash.DashWrappingSegmentIndex;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class DashDownloader extends SegmentDownloader<DashManifest> {
    private final BaseUrlExclusionList baseUrlExclusionList;

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, new DashManifestParser(), factory, executor, 20000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addSegmentsForAdaptationSet(com.google.android.exoplayer2.upstream.DataSource r23, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet r24, long r25, long r27, boolean r29, java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> r30) {
        /*
            r22 = this;
            r1 = r22
            r7 = r24
            r8 = r29
            r9 = r30
            r0 = 0
            r10 = r0
        La:
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r7.representations
            int r0 = r0.size()
            if (r10 >= r0) goto Laf
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r7.representations
            java.lang.Object r0 = r0.get(r10)
            r2 = r0
            com.google.android.exoplayer2.source.dash.manifest.Representation r2 = (com.google.android.exoplayer2.source.dash.manifest.Representation) r2
            int r0 = r7.type     // Catch: java.io.IOException -> La2
            r11 = r23
            com.google.android.exoplayer2.source.dash.DashSegmentIndex r0 = r1.getSegmentIndex(r11, r0, r2, r8)     // Catch: java.io.IOException -> L9e
            if (r0 == 0) goto L92
            r12 = r27
            long r14 = r0.getSegmentCount(r12)
            r3 = -1
            int r3 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
            if (r3 == 0) goto L8a
            com.google.android.exoplayer2.source.dash.BaseUrlExclusionList r3 = r1.baseUrlExclusionList
            com.google.common.collect.ImmutableList r4 = r2.baseUrls
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r3 = r3.selectBaseUrl(r4)
            java.lang.Object r3 = com.google.android.exoplayer2.util.Util.castNonNull(r3)
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r3 = (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) r3
            java.lang.String r3 = r3.url
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r2.getInitializationUri()
            if (r6 == 0) goto L50
            r4 = r25
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r6 = r1.createSegment(r2, r3, r4, r6)
            r9.add(r6)
        L50:
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r2.getIndexUri()
            if (r6 == 0) goto L61
            r1 = r22
            r4 = r25
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r6 = r1.createSegment(r2, r3, r4, r6)
            r9.add(r6)
        L61:
            long r4 = r0.getFirstSegmentNum()
            long r14 = r14 + r4
            r16 = 1
            long r14 = r14 - r16
        L6a:
            int r1 = (r4 > r14 ? 1 : (r4 == r14 ? 0 : -1))
            if (r1 > 0) goto La8
            long r18 = r0.getTimeUs(r4)
            long r18 = r18 + r25
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r0.getSegmentUrl(r4)
            r20 = r18
            r18 = r4
            r4 = r20
            r1 = r22
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r4 = r1.createSegment(r2, r3, r4, r6)
            r9.add(r4)
            long r4 = r18 + r16
            goto L6a
        L8a:
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException
            java.lang.String r1 = "Unbounded segment index"
            r0.<init>(r1)
            throw r0
        L92:
            r12 = r27
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException     // Catch: java.io.IOException -> L9c
            java.lang.String r1 = "Missing segment index"
            r0.<init>(r1)     // Catch: java.io.IOException -> L9c
            throw r0     // Catch: java.io.IOException -> L9c
        L9c:
            r0 = move-exception
            goto La6
        L9e:
            r0 = move-exception
        L9f:
            r12 = r27
            goto La6
        La2:
            r0 = move-exception
            r11 = r23
            goto L9f
        La6:
            if (r8 == 0) goto Lae
        La8:
            int r10 = r10 + 1
            r1 = r22
            goto La
        Lae:
            throw r0
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.offline.DashDownloader.addSegmentsForAdaptationSet(com.google.android.exoplayer2.upstream.DataSource, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet, long, long, boolean, java.util.ArrayList):void");
    }

    private SegmentDownloader.Segment createSegment(Representation representation, String str, long j, RangedUri rangedUri) {
        return new SegmentDownloader.Segment(j, DashUtil.buildDataSpec(representation, str, rangedUri, 0, RegularImmutableMap.EMPTY));
    }

    private DashSegmentIndex getSegmentIndex(final DataSource dataSource, final int i, final Representation representation, boolean z) {
        DashSegmentIndex index = representation.getIndex();
        if (index != null) {
            return index;
        }
        ChunkIndex chunkIndex = (ChunkIndex) execute(new RunnableFutureTask<ChunkIndex, IOException>() { // from class: com.google.android.exoplayer2.source.dash.offline.DashDownloader.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public ChunkIndex doWork() {
                return DashUtil.loadChunkIndex(dataSource, i, representation);
            }
        }, z);
        if (chunkIndex == null) {
            return null;
        }
        return new DashWrappingSegmentIndex(chunkIndex, representation.presentationTimeOffsetUs);
    }

    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    public List<SegmentDownloader.Segment> getSegments(DataSource dataSource, DashManifest dashManifest, boolean z) {
        ArrayList<SegmentDownloader.Segment> arrayList = new ArrayList<>();
        for (int i = 0; i < dashManifest.getPeriodCount(); i++) {
            Period period = dashManifest.getPeriod(i);
            long msToUs = Util.msToUs(period.startMs);
            long periodDurationUs = dashManifest.getPeriodDurationUs(i);
            List<AdaptationSet> list = period.adaptationSets;
            for (int i2 = 0; i2 < list.size(); i2++) {
                addSegmentsForAdaptationSet(dataSource, list.get(i2), msToUs, periodDurationUs, z, arrayList);
            }
        }
        return arrayList;
    }

    public DashDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new ArchTaskExecutor$$ExternalSyntheticLambda0(1));
    }

    @Deprecated
    public DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, parser, factory, executor, 20000L);
    }

    public DashDownloader(MediaItem mediaItem, ParsingLoadable.Parser<DashManifest> parser, CacheDataSource.Factory factory, Executor executor, long j) {
        super(mediaItem, parser, factory, executor, j);
        this.baseUrlExclusionList = new BaseUrlExclusionList();
    }
}
