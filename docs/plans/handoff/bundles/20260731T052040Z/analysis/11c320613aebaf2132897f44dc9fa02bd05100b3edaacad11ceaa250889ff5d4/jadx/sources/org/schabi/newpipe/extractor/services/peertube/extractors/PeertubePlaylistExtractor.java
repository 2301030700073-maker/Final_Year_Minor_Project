package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonTokener;
import j$.util.Objects;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeReelInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubePlaylistExtractor extends SearchExtractor {
    public final /* synthetic */ int $r8$classId;
    public JsonObject playlistInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PeertubePlaylistExtractor(StreamingService streamingService, LinkHandler linkHandler, int i) {
        super(streamingService, linkHandler);
        this.$r8$classId = i;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        switch (this.$r8$classId) {
            case 0:
                String string = this.playlistInfo.getString("description", null);
                return Utils.isNullOrEmpty(string) ? Description.EMPTY_DESCRIPTION : new Description(string, 3);
            default:
                String string2 = this.playlistInfo.getString("description", null);
                return Utils.isNullOrEmpty(string2) ? Description.EMPTY_DESCRIPTION : new Description(string2, 3);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        switch (this.$r8$classId) {
            case 0:
                return getPage(new Page(Owner.CC.m$1(this.linkHandler.getUrl(), "/videos?start=0&count=12")));
            default:
                StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
                ArrayList arrayList = new ArrayList();
                this.playlistInfo.getArray("tracks").streamAsJsonObjects().forEachOrdered(new PrettyTime$$ExternalSyntheticLambda0(streamInfoItemsCollector, arrayList, 3));
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, new Page(arrayList));
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getString("displayName", null);
            default:
                return this.playlistInfo.getString("title", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        JsonObject jsonObject;
        List subList;
        List list;
        int i = this.$r8$classId;
        StreamingService streamingService = this.service;
        switch (i) {
            case 0:
                if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
                    return null;
                }
                String str = (String) this.downloader.get(page.getUrl()).mHiddenViews;
                if (Utils.isBlank(str)) {
                    jsonObject = null;
                } else {
                    try {
                        jsonObject = (JsonObject) JsonParser.object().from(str);
                    } catch (Exception e) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for playlist info", e);
                        return null;
                    }
                }
                if (jsonObject == null) {
                    throw new ExtractionException("Unable to get PeerTube playlist info");
                }
                BundleKt.validate(jsonObject);
                long j = jsonObject.getLong("total", 0L);
                StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
                BundleKt.collectItemsFrom(streamInfoItemsCollector, jsonObject, this.linkHandler.getBaseUrl(), false);
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, BundleKt.getNextPage(page.getUrl(), j));
            default:
                if (page == null || Utils.isNullOrEmpty(page.getIds())) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain IDs");
                    return null;
                }
                if (page.getIds().size() <= 15) {
                    list = page.getIds();
                    subList = null;
                } else {
                    List subList2 = page.getIds().subList(0, 15);
                    subList = page.getIds().subList(15, page.getIds().size());
                    list = subList2;
                }
                String clientId = SoundcloudParsingHelper.clientId();
                StringBuilder sb = new StringBuilder();
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    while (true) {
                        sb.append((CharSequence) it.next());
                        if (it.hasNext()) {
                            sb.append((CharSequence) ",");
                        }
                    }
                }
                String m = Owner.CC.m("https://api-v2.soundcloud.com/tracks?client_id=", clientId, "&ids=", sb.toString());
                StreamInfoItemsCollector streamInfoItemsCollector2 = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
                try {
                    JsonArray jsonArray = (JsonArray) new JsonParser(new JsonTokener(new StringReader((String) Utility.downloader.get(m, null, streamingService.getLocalization()).mHiddenViews))).parse(JsonArray.class);
                    HashMap hashMap = new HashMap();
                    Iterator<E> it2 = jsonArray.iterator();
                    while (it2.hasNext()) {
                        Object next = it2.next();
                        if (next instanceof JsonObject) {
                            JsonObject jsonObject2 = (JsonObject) next;
                            hashMap.put(Long.valueOf(jsonObject2.getLong(TtmlNode.ATTR_ID, 0L)), jsonObject2);
                        }
                    }
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        long parseLong = Long.parseLong((String) it3.next());
                        try {
                            JsonObject jsonObject3 = (JsonObject) hashMap.get(Long.valueOf(parseLong));
                            Objects.requireNonNull(jsonObject3, "no track with id " + parseLong + " in response");
                            streamInfoItemsCollector2.commit((StreamInfoItemExtractor) new YoutubeReelInfoItemExtractor(jsonObject3, 3));
                        } catch (NullPointerException e2) {
                            throw new ParsingException("Could not parse json response", e2);
                        }
                    }
                    return new ListExtractor.InfoItemsPage(streamInfoItemsCollector2, new Page(subList));
                } catch (JsonParserException e3) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e3);
                    return null;
                }
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final long getStreamCount() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getLong("videosLength", 0L);
            default:
                return this.playlistInfo.getLong("track_count", 0L);
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public List getSubChannelAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.playlistInfo.getObject("videoChannel"), this.linkHandler.getBaseUrl());
            default:
                return super.getSubChannelAvatars();
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public String getSubChannelName() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getObject("videoChannel").getString("displayName", null);
            default:
                return super.getSubChannelName();
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public String getSubChannelUrl() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getObject("videoChannel").getString("url", null);
            default:
                return super.getSubChannelUrl();
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        switch (this.$r8$classId) {
            case 0:
                return BundleKt.getThumbnailsFromPlaylistOrVideoItem(this.playlistInfo, this.linkHandler.getBaseUrl());
            default:
                String string = this.playlistInfo.getString("artwork_url", null);
                if (!Utils.isNullOrEmpty(string)) {
                    return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(string);
                }
                try {
                    Iterator it = getInitialPage().itemsList.iterator();
                    while (it.hasNext()) {
                        List thumbnails = ((StreamInfoItem) it.next()).getThumbnails();
                        if (!Utils.isNullOrEmpty(thumbnails)) {
                            return thumbnails;
                        }
                    }
                } catch (Exception unused) {
                }
                return Collections.EMPTY_LIST;
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.playlistInfo.getObject("ownerAccount"), this.linkHandler.getBaseUrl());
            default:
                JsonObject jsonObject = this.playlistInfo;
                List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
                return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(Utils.replaceHttpWithHttps(jsonObject.getObject("user").getString("avatar_url", "")));
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getObject("ownerAccount").getString("displayName", null);
            default:
                JsonObject jsonObject = this.playlistInfo;
                List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
                return jsonObject.getObject("user").getString("username", "");
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        switch (this.$r8$classId) {
            case 0:
                return this.playlistInfo.getObject("ownerAccount").getString("url", null);
            default:
                JsonObject jsonObject = this.playlistInfo;
                List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
                return Utils.replaceHttpWithHttps(jsonObject.getObject("user").getString("permalink_url", ""));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        switch (i) {
            case 0:
                try {
                    JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) closeableKt.get(linkHandler.getUrl()).mHiddenViews);
                    this.playlistInfo = jsonObject;
                    BundleKt.validate(jsonObject);
                    return;
                } catch (JsonParserException e) {
                    throw new ExtractionException("Could not parse json", e);
                }
            default:
                try {
                    this.playlistInfo = (JsonObject) JsonParser.object().from((String) closeableKt.get(Owner.CC.m("https://api-v2.soundcloud.com/playlists/", ((ListLinkHandler) linkHandler).getId(), "?client_id=", SoundcloudParsingHelper.clientId(), "&representation=compact"), null, this.service.getLocalization()).mHiddenViews);
                    return;
                } catch (JsonParserException e2) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e2);
                    return;
                }
        }
    }
}
