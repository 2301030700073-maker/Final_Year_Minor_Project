package org.schabi.newpipe.extractor;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MultiInfoItemsCollector extends InfoItemsCollector {
    public final StreamInfoItemsCollector playlistCollector;
    public final StreamInfoItemsCollector streamCollector;
    public final StreamInfoItemsCollector userCollector;

    public MultiInfoItemsCollector(int i) {
        super(i, null);
        this.streamCollector = new StreamInfoItemsCollector(i, null, 0);
        this.userCollector = new StreamInfoItemsCollector(i, null, 1);
        this.playlistCollector = new StreamInfoItemsCollector(i, null, 3);
    }

    @Override // org.schabi.newpipe.extractor.Collector
    public final Object extract(InfoItemExtractor infoItemExtractor) {
        if (infoItemExtractor instanceof StreamInfoItemExtractor) {
            return this.streamCollector.extract((StreamInfoItemExtractor) infoItemExtractor);
        }
        if (infoItemExtractor instanceof ChannelInfoItemExtractor) {
            return this.userCollector.extract((ChannelInfoItemExtractor) infoItemExtractor);
        }
        if (infoItemExtractor instanceof PlaylistInfoItemExtractor) {
            return this.playlistCollector.extract((PlaylistInfoItemExtractor) infoItemExtractor);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(infoItemExtractor, "Invalid extractor type: ");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemsCollector
    public final List getErrors() {
        ArrayList arrayList = new ArrayList(DesugarCollections.unmodifiableList(this.errors));
        arrayList.addAll(DesugarCollections.unmodifiableList(this.streamCollector.errors));
        arrayList.addAll(DesugarCollections.unmodifiableList(this.userCollector.errors));
        arrayList.addAll(DesugarCollections.unmodifiableList(this.playlistCollector.errors));
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
