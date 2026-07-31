package org.schabi.newpipe.extractor.linkhandler;

import java.io.Serializable;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.search.SearchExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReadyChannelTabListLinkHandler extends ListLinkHandler {
    private final ChannelTabExtractorBuilder extractorBuilder;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface ChannelTabExtractorBuilder extends Serializable {
        SearchExtractor build(StreamingService streamingService, ListLinkHandler listLinkHandler);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReadyChannelTabListLinkHandler(java.lang.String r8, java.lang.String r9, java.lang.String r10, org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder r11) {
        /*
            r7 = this;
            r0 = 1
            java.lang.Object[] r1 = new java.lang.Object[r0]
            r2 = 0
            r1[r2] = r10
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>(r0)
            r0 = r1[r2]
            java.util.List r5 = androidx.compose.ui.node.Owner.CC.m(r0, r10, r0, r10)
            java.lang.String r6 = ""
            r3 = r8
            r1 = r7
            r2 = r8
            r4 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            r1.extractorBuilder = r11
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler.<init>(java.lang.String, java.lang.String, java.lang.String, org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder):void");
    }

    public final SearchExtractor getChannelTabExtractor(StreamingService streamingService) {
        return this.extractorBuilder.build(streamingService, new ListLinkHandler((ListLinkHandler) this));
    }
}
