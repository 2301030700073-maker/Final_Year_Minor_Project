package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.core.os.BundleKt;
import com.grack.nanojson.JsonObject;
import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampChannelInfoItemExtractor implements ChannelInfoItemExtractor {
    public final /* synthetic */ int $r8$classId = 1;
    public final Cloneable resultInfo;
    public final Object searchResult;

    public BandcampChannelInfoItemExtractor(Element element) {
        this.searchResult = element;
        this.resultInfo = (Element) element.getElementsByClass("result-info").first$org$jsoup$select$Nodes();
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final String getDescription() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.resultInfo;
        switch (i) {
            case 0:
                return ((Element) cloneable).getElementsByClass("subhead").text();
            default:
                return ((JsonObject) cloneable).getString("description", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.resultInfo;
        switch (i) {
            case 0:
                return ((Element) cloneable).getElementsByClass("heading").text();
            default:
                return ((JsonObject) cloneable).getString("displayName", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final long getStreamCount() {
        switch (this.$r8$classId) {
        }
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final long getSubscriberCount() {
        switch (this.$r8$classId) {
            case 0:
                return -1L;
            default:
                return ((JsonObject) this.resultInfo).getInt(0, "followersCount");
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        int i = this.$r8$classId;
        Object obj = this.searchResult;
        switch (i) {
            case 0:
                return BandcampExtractorHelper.getImagesFromSearchResult((Element) obj);
            default:
                return BundleKt.getImagesFromAvatarsOrBanners((JsonObject) this.resultInfo, (String) obj, "avatars", "avatar");
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        int i = this.$r8$classId;
        Cloneable cloneable = this.resultInfo;
        switch (i) {
            case 0:
                return ((Element) cloneable).getElementsByClass("itemurl").text();
            default:
                return ((JsonObject) cloneable).getString("url", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final boolean isVerified() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    public BandcampChannelInfoItemExtractor(JsonObject jsonObject, String str) {
        this.resultInfo = jsonObject;
        this.searchResult = str;
    }
}
