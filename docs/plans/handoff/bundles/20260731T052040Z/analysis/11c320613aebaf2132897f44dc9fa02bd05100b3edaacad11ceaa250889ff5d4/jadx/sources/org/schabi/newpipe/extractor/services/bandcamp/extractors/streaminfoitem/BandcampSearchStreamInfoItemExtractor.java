package org.schabi.newpipe.extractor.services.bandcamp.extractors.streaminfoitem;

import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampExtractorHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampSearchStreamInfoItemExtractor extends BandcampStreamInfoItemExtractor {
    public final Element resultInfo;
    public final Element searchResult;

    public BandcampSearchStreamInfoItemExtractor(Element element) {
        super(null);
        this.searchResult = element;
        this.resultInfo = (Element) element.getElementsByClass("result-info").first$org$jsoup$select$Nodes();
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.resultInfo.getElementsByClass("heading").text();
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return BandcampExtractorHelper.getImagesFromSearchResult(this.searchResult);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        String[] split = this.resultInfo.getElementsByClass("subhead").text().split("by ");
        return split.length > 1 ? split[1] : split[0];
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.resultInfo.getElementsByClass("itemurl").text();
    }
}
