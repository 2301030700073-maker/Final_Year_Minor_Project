package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.recyclerview.widget.ChildHelper;
import java.util.Iterator;
import kotlin.io.CloseableKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeFeedExtractor extends ListExtractor {
    public Document document;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getId() {
        return getUrl().replace("https://www.youtube.com/channel/", "");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        Elements select = this.document.select("feed > entry");
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        Iterator<E> it = select.iterator();
        while (it.hasNext()) {
            streamInfoItemsCollector.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor((Element) it.next(), 5));
        }
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        Element element = (Element) this.document.select("feed > author > name").first$org$jsoup$select$Nodes();
        return element == null ? "" : element.text();
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUrl() {
        Element element = (Element) this.document.select("feed > author > uri").first$org$jsoup$select$Nodes();
        if (element != null) {
            String text = element.text();
            if (!text.equals("")) {
                return text;
            }
        }
        Element element2 = (Element) this.document.select("feed > link[rel*=alternate]").first$org$jsoup$select$Nodes();
        return element2 != null ? element2.attr("href") : "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        ChildHelper childHelper = closeableKt.get(YoutubeParsingHelper.getFeedUrlFrom(((ListLinkHandler) this.linkHandler).getId()));
        if (childHelper.mRemoveStatus == 404) {
            throw new ContentNotAvailableException("Could not get feed: 404 - not found");
        }
        this.document = Jsoup.parse((String) childHelper.mHiddenViews);
    }
}
