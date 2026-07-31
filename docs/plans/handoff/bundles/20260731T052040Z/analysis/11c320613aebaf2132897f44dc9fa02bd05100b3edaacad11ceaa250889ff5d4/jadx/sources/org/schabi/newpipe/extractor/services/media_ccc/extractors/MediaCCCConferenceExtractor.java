package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCConferenceExtractor extends ListExtractor {
    public JsonObject conferenceData;

    public static JsonObject fetchConferenceData(CloseableKt closeableKt, String str) {
        String m = Owner.CC.m("https://api.media.ccc.de/public/conferences/", str);
        try {
            return (JsonObject) JsonParser.object().from((String) closeableKt.get(m).mHiddenViews);
        } catch (JsonParserException unused) {
            throw new ExtractionException("Could not parse json returned by URL: ".concat(m));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAvatars() {
        return MediaCCCParsingHelper.getImageListFromLogoImageUrl(this.conferenceData.getString("logo_url", null));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getBanners() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getDescription() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getFeedUrl() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.conferenceData.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getParentChannelAvatars() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelName() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelUrl() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getSubscriberCount() {
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTabs() {
        JsonObject jsonObject = this.conferenceData;
        LinkHandler linkHandler = this.linkHandler;
        Object[] objArr = {new ReadyChannelTabListLinkHandler(linkHandler.getUrl(), linkHandler.getId(), "videos", new MediaCCCConferenceExtractor$$ExternalSyntheticLambda0(jsonObject))};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        return Owner.CC.m(obj, arrayList, obj, arrayList);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isVerified() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        this.conferenceData = fetchConferenceData(closeableKt, this.linkHandler.getId());
    }
}
