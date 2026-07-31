package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.soundcloud.linkHandler.SoundcloudChartsLinkHandlerFactory;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeAccountExtractor extends ListExtractor {
    public final /* synthetic */ int $r8$classId;
    public String baseUrl;
    public JsonObject json;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeertubeAccountExtractor(PeertubeService peertubeService, ListLinkHandler listLinkHandler, int i) {
        super(peertubeService, listLinkHandler, 1);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                super(peertubeService, listLinkHandler, 1);
                this.baseUrl = this.linkHandler.getBaseUrl();
                break;
            default:
                this.baseUrl = this.linkHandler.getBaseUrl();
                break;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.json, this.baseUrl);
            case 1:
                return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.json, this.baseUrl);
            default:
                return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(this.json.getString("avatar_url", null));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getBanners() {
        switch (this.$r8$classId) {
            case 0:
                return BundleKt.getImagesFromAvatarsOrBanners(this.json, this.baseUrl, "banners", "banner");
            case 1:
                return BundleKt.getImagesFromAvatarsOrBanners(this.json, this.baseUrl, "banners", "banner");
            default:
                String string = this.json.getObject("visuals").getArray("visuals").getObject(0).getString("visual_url", null);
                List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
                return Utils.isNullOrEmpty(string) ? Collections.EMPTY_LIST : SoundcloudParsingHelper.getAllImagesFromImageUrlReturned(string.replace("-original.", "-%s."), SoundcloudParsingHelper.VISUALS_IMAGE_SUFFIXES);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getDescription() {
        switch (this.$r8$classId) {
            case 0:
                return this.json.getString("description", null);
            case 1:
                return this.json.getString("description", null);
            default:
                return this.json.getString("description", "");
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getFeedUrl() {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        switch (i) {
            case 0:
                return linkHandler.getBaseUrl() + "/feeds/videos.xml?accountId=" + this.json.get(TtmlNode.ATTR_ID);
            case 1:
                return linkHandler.getBaseUrl() + "/feeds/videos.xml?videoChannelId=" + this.json.get(TtmlNode.ATTR_ID);
            default:
                return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public String getId() {
        switch (this.$r8$classId) {
            case 2:
                return this.baseUrl;
            default:
                return super.getId();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return (String) Parser.getInstanceOf(this.json, "displayName", String.class);
            case 1:
                return (String) Parser.getInstanceOf(this.json, "displayName", String.class);
            default:
                return this.json.getString("username", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getParentChannelAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return Collections.EMPTY_LIST;
            case 1:
                return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.json.getObject("ownerAccount"), this.baseUrl);
            default:
                return Collections.EMPTY_LIST;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelName() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            case 1:
                return (String) Parser.getInstanceOf(this.json, "ownerAccount.name", String.class);
            default:
                return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelUrl() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            case 1:
                return (String) Parser.getInstanceOf(this.json, "ownerAccount.url", String.class);
            default:
                return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getSubscriberCount() {
        switch (this.$r8$classId) {
            case 0:
                long j = this.json.getLong("followersCount", 0L);
                String m$1 = Owner.CC.m$1(this.baseUrl, "/api/v1/");
                LinkHandler linkHandler = this.linkHandler;
                try {
                    while (((JsonObject) JsonParser.object().from((String) this.downloader.get((linkHandler.getId().contains("accounts/") ? Owner.CC.m$1(m$1, linkHandler.getId()) : Owner.CC.m(m$1, "accounts/", linkHandler.getId())).concat("/video-channels")).mHiddenViews)).getArray("data").iterator().hasNext()) {
                        j += ((JsonObject) r7.next()).getInt(0, "followersCount");
                    }
                } catch (JsonParserException | IOException | ReCaptchaException unused) {
                }
                return j;
            case 1:
                return this.json.getLong("followersCount", 0L);
            default:
                return this.json.getLong("followers_count", 0L);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTabs() {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        int i2 = 0;
        switch (i) {
            case 0:
                String id = linkHandler.getId();
                ArrayList arrayList = new ArrayList(1);
                Object obj = new Object[]{"videos"}[0];
                List m = Owner.CC.m(obj, arrayList, obj, arrayList);
                String baseUrl = linkHandler.getBaseUrl();
                PeertubeChannelLinkHandlerFactory peertubeChannelLinkHandlerFactory = PeertubeChannelLinkHandlerFactory.INSTANCE;
                String concat = peertubeChannelLinkHandlerFactory.getUrl$1(id, baseUrl, null).concat(PeertubeChannelLinkHandlerFactory.getUrlSuffix((String) m.get(0)));
                ListLinkHandler listLinkHandler = new ListLinkHandler(concat, concat, id, m, "");
                String id2 = linkHandler.getId();
                ArrayList arrayList2 = new ArrayList(1);
                Object obj2 = new Object[]{"channels"}[0];
                List m2 = Owner.CC.m(obj2, arrayList2, obj2, arrayList2);
                String concat2 = peertubeChannelLinkHandlerFactory.getUrl$1(id2, linkHandler.getBaseUrl(), null).concat(PeertubeChannelLinkHandlerFactory.getUrlSuffix((String) m2.get(0)));
                Object[] objArr = {listLinkHandler, new ListLinkHandler(concat2, concat2, id2, m2, "")};
                ArrayList arrayList3 = new ArrayList(2);
                while (i2 < 2) {
                    Object obj3 = objArr[i2];
                    i2 = RecordTag.m(obj3, arrayList3, obj3, i2, 1);
                }
                return DesugarCollections.unmodifiableList(arrayList3);
            case 1:
                String id3 = linkHandler.getId();
                ArrayList arrayList4 = new ArrayList(1);
                Object obj4 = new Object[]{"videos"}[0];
                List m3 = Owner.CC.m(obj4, arrayList4, obj4, arrayList4);
                String baseUrl2 = linkHandler.getBaseUrl();
                PeertubeChannelLinkHandlerFactory peertubeChannelLinkHandlerFactory2 = PeertubeChannelLinkHandlerFactory.INSTANCE;
                String concat3 = peertubeChannelLinkHandlerFactory2.getUrl$1(id3, baseUrl2, null).concat(PeertubeChannelLinkHandlerFactory.getUrlSuffix((String) m3.get(0)));
                ListLinkHandler listLinkHandler2 = new ListLinkHandler(concat3, concat3, id3, m3, "");
                String id4 = linkHandler.getId();
                ArrayList arrayList5 = new ArrayList(1);
                Object obj5 = new Object[]{"playlists"}[0];
                List m4 = Owner.CC.m(obj5, arrayList5, obj5, arrayList5);
                String concat4 = peertubeChannelLinkHandlerFactory2.getUrl$1(id4, linkHandler.getBaseUrl(), null).concat(PeertubeChannelLinkHandlerFactory.getUrlSuffix((String) m4.get(0)));
                Object[] objArr2 = {listLinkHandler2, new ListLinkHandler(concat4, concat4, id4, m4, "")};
                ArrayList arrayList6 = new ArrayList(2);
                while (i2 < 2) {
                    Object obj6 = objArr2[i2];
                    i2 = RecordTag.m(obj6, arrayList6, obj6, i2, 1);
                }
                return DesugarCollections.unmodifiableList(arrayList6);
            default:
                String url = linkHandler.getUrl();
                String m$1 = Owner.CC.m$1(url, SoundcloudChartsLinkHandlerFactory.getUrlSuffix("tracks"));
                String m$12 = Owner.CC.m$1(url, SoundcloudChartsLinkHandlerFactory.getUrlSuffix("playlists"));
                String m$13 = Owner.CC.m$1(url, SoundcloudChartsLinkHandlerFactory.getUrlSuffix("albums"));
                String m$14 = Owner.CC.m$1(url, SoundcloudChartsLinkHandlerFactory.getUrlSuffix("likes"));
                String str = this.baseUrl;
                ArrayList arrayList7 = new ArrayList(1);
                Object obj7 = new Object[]{"tracks"}[0];
                ListLinkHandler listLinkHandler3 = new ListLinkHandler(m$1, m$1, str, Owner.CC.m(obj7, arrayList7, obj7, arrayList7), "");
                ArrayList arrayList8 = new ArrayList(1);
                Object obj8 = new Object[]{"playlists"}[0];
                ListLinkHandler listLinkHandler4 = new ListLinkHandler(m$12, m$12, str, Owner.CC.m(obj8, arrayList8, obj8, arrayList8), "");
                ArrayList arrayList9 = new ArrayList(1);
                Object obj9 = new Object[]{"albums"}[0];
                ListLinkHandler listLinkHandler5 = new ListLinkHandler(m$13, m$13, str, Owner.CC.m(obj9, arrayList9, obj9, arrayList9), "");
                ArrayList arrayList10 = new ArrayList(1);
                Object obj10 = new Object[]{"likes"}[0];
                Object[] objArr3 = {listLinkHandler3, listLinkHandler4, listLinkHandler5, new ListLinkHandler(m$14, m$14, str, Owner.CC.m(obj10, arrayList10, obj10, arrayList10), "")};
                ArrayList arrayList11 = new ArrayList(4);
                while (i2 < 4) {
                    Object obj11 = objArr3[i2];
                    i2 = RecordTag.m(obj11, arrayList11, obj11, i2, 1);
                }
                return DesugarCollections.unmodifiableList(arrayList11);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isVerified() {
        switch (this.$r8$classId) {
            case 0:
                return false;
            case 1:
                return false;
            default:
                return this.json.getBoolean("verified");
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        switch (i) {
            case 0:
                try {
                    JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) closeableKt.get(this.baseUrl + "/api/v1/" + linkHandler.getId()).mHiddenViews);
                    this.json = jsonObject;
                    if (jsonObject == null) {
                        throw new ExtractionException("Unable to extract PeerTube account data");
                    }
                    return;
                } catch (JsonParserException e) {
                    throw new ExtractionException("Unable to extract PeerTube account data", e);
                }
            case 1:
                try {
                    JsonObject jsonObject2 = (JsonObject) JsonParser.object().from((String) closeableKt.get(this.baseUrl + "/api/v1/" + linkHandler.getId()).mHiddenViews);
                    this.json = jsonObject2;
                    if (jsonObject2 == null) {
                        throw new ExtractionException("Unable to extract PeerTube channel data");
                    }
                    return;
                } catch (JsonParserException e2) {
                    throw new ExtractionException("Unable to extract PeerTube channel data", e2);
                }
            default:
                String id = linkHandler.getId();
                this.baseUrl = id;
                try {
                    this.json = (JsonObject) JsonParser.object().from((String) closeableKt.get(Owner.CC.m("https://api-v2.soundcloud.com/users/", id, "?client_id=", SoundcloudParsingHelper.clientId()), null, this.service.getLocalization()).mHiddenViews);
                    return;
                } catch (JsonParserException e3) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e3);
                    return;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PeertubeAccountExtractor(StreamingService streamingService, LinkHandler linkHandler) {
        super(streamingService, linkHandler, 1);
        this.$r8$classId = 2;
    }
}
