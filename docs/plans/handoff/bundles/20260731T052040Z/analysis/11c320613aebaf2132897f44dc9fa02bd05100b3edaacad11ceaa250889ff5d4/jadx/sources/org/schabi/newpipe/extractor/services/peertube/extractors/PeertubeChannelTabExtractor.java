package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;
import androidx.recyclerview.widget.ChildHelper;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.BandcampService;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.MediaCCCConferenceExtractor;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeChannelTabExtractor extends SearchExtractor {
    public final /* synthetic */ int $r8$classId = 2;
    public Serializable baseUrl;

    public PeertubeChannelTabExtractor(BandcampService bandcampService, ListLinkHandler listLinkHandler) {
        super(bandcampService, listLinkHandler, 0);
        this.baseUrl = ((ListLinkHandler) this.linkHandler).getId();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        if (r3.equals("albums") == false) goto L8;
     */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.ListExtractor.InfoItemsPage getInitialPage() {
        /*
            r6 = this;
            int r0 = r6.$r8$classId
            r1 = 1
            switch(r0) {
                case 0: goto Lb8;
                case 1: goto L2f;
                default: goto L6;
            }
        L6:
            org.schabi.newpipe.extractor.MultiInfoItemsCollector r0 = new org.schabi.newpipe.extractor.MultiInfoItemsCollector
            org.schabi.newpipe.extractor.StreamingService r2 = r6.service
            int r2 = r2.serviceId
            r0.<init>(r2)
            java.io.Serializable r6 = r6.baseUrl
            com.grack.nanojson.JsonObject r6 = (com.grack.nanojson.JsonObject) r6
            j$.util.Objects.requireNonNull(r6)
            java.lang.String r2 = "events"
            com.grack.nanojson.JsonArray r6 = r6.getArray(r2)
            j$.util.stream.Stream r6 = r6.streamAsJsonObjects()
            org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper$$ExternalSyntheticLambda1 r2 = new org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper$$ExternalSyntheticLambda1
            r2.<init>(r0, r1)
            r6.forEach(r2)
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r6 = new org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage
            r1 = 0
            r6.<init>(r0, r1)
            return r6
        L2f:
            org.schabi.newpipe.extractor.Page r0 = new org.schabi.newpipe.extractor.Page
            java.io.Serializable r2 = r6.baseUrl
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = r6.getName()
            r3.getClass()
            int r4 = r3.hashCode()
            r5 = -1
            switch(r4) {
                case -1865828127: goto L66;
                case -1415163932: goto L5d;
                case -865716088: goto L51;
                case 102974396: goto L46;
                default: goto L44;
            }
        L44:
            r1 = r5
            goto L70
        L46:
            java.lang.String r1 = "likes"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L4f
            goto L44
        L4f:
            r1 = 3
            goto L70
        L51:
            java.lang.String r1 = "tracks"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L5b
            goto L44
        L5b:
            r1 = 2
            goto L70
        L5d:
            java.lang.String r4 = "albums"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L70
            goto L44
        L66:
            java.lang.String r1 = "playlists"
            boolean r1 = r3.equals(r1)
            if (r1 != 0) goto L6f
            goto L44
        L6f:
            r1 = 0
        L70:
            switch(r1) {
                case 0: goto L8c;
                case 1: goto L89;
                case 2: goto L86;
                case 3: goto L83;
                default: goto L73;
            }
        L73:
            org.schabi.newpipe.extractor.exceptions.ParsingException r0 = new org.schabi.newpipe.extractor.exceptions.ParsingException
            java.lang.String r6 = r6.getName()
            java.lang.String r1 = "Unsupported tab: "
            java.lang.String r6 = androidx.compose.ui.node.Owner.CC.m(r1, r6)
            r0.<init>(r6)
            throw r0
        L83:
            java.lang.String r1 = "/likes"
            goto L8e
        L86:
            java.lang.String r1 = "/tracks"
            goto L8e
        L89:
            java.lang.String r1 = "/albums"
            goto L8e
        L8c:
            java.lang.String r1 = "/playlists_without_albums"
        L8e:
            java.lang.String r3 = org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper.clientId()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "https://api-v2.soundcloud.com/users/"
            r4.<init>(r5)
            r4.append(r2)
            r4.append(r1)
            java.lang.String r1 = "?client_id="
            r4.append(r1)
            r4.append(r3)
            java.lang.String r1 = "&limit=20&linked_partitioning=1"
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            r0.<init>(r1)
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r6 = r6.getPage(r0)
            return r6
        Lb8:
            org.schabi.newpipe.extractor.Page r0 = new org.schabi.newpipe.extractor.Page
            java.io.Serializable r1 = r6.baseUrl
            java.lang.String r1 = (java.lang.String) r1
            org.schabi.newpipe.extractor.linkhandler.LinkHandler r2 = r6.linkHandler
            java.lang.String r2 = r2.getId()
            java.lang.String r3 = r6.getName()
            java.lang.String r3 = org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeChannelLinkHandlerFactory.getUrlSuffix(r3)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r1)
            java.lang.String r1 = "/api/v1/"
            r4.append(r1)
            r4.append(r2)
            r4.append(r3)
            java.lang.String r1 = "?start=0&count=12"
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            r0.<init>(r1)
            org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage r6 = r6.getPage(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeChannelTabExtractor.getInitialPage():org.schabi.newpipe.extractor.ListExtractor$InfoItemsPage");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        String str;
        int i = this.$r8$classId;
        StreamingService streamingService = this.service;
        int i2 = 0;
        JsonObject jsonObject = null;
        switch (i) {
            case 0:
                if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
                    return null;
                }
                String str2 = (String) this.downloader.get(page.getUrl()).mHiddenViews;
                if (!Utils.isBlank(str2)) {
                    try {
                        jsonObject = (JsonObject) JsonParser.object().from(str2);
                    } catch (Exception e) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for account info", e);
                        return null;
                    }
                }
                if (jsonObject == null) {
                    throw new ExtractionException("Unable to get account channel list");
                }
                BundleKt.validate(jsonObject);
                MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(streamingService.serviceId);
                BundleKt.collectItemsFrom(multiInfoItemsCollector, jsonObject, this.linkHandler.getBaseUrl(), false);
                return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, BundleKt.getNextPage(page.getUrl(), jsonObject.getLong("total", 0L)));
            case 1:
                if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
                    return null;
                }
                MultiInfoItemsCollector multiInfoItemsCollector2 = new MultiInfoItemsCollector(streamingService.serviceId);
                HashSet hashSet = new HashSet();
                String url = page.getUrl();
                int i3 = 0;
                while (true) {
                    str = "";
                    if (!Utils.isNullOrEmpty(url) && hashSet.add(url)) {
                        int size = multiInfoItemsCollector2.getItems().size();
                        List list = SoundcloudParsingHelper.ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
                        ChildHelper childHelper = Utility.downloader.get(url, null, ServiceList.SoundCloud.getLocalization());
                        int i4 = childHelper.mRemoveStatus;
                        if (i4 >= 400) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(i4, "Could not get streams from API, HTTP "));
                            return null;
                        }
                        try {
                            JsonObject jsonObject2 = (JsonObject) JsonParser.object().from((String) childHelper.mHiddenViews);
                            jsonObject2.getArray("collection").streamAsJsonObjects().forEach(new SoundcloudParsingHelper$$ExternalSyntheticLambda1(multiInfoItemsCollector2, i2));
                            try {
                                url = jsonObject2.getString("next_href", null);
                                if (!url.contains("client_id=")) {
                                    url = url + "&client_id=" + SoundcloudParsingHelper.clientId();
                                }
                            } catch (Exception unused) {
                                url = "";
                            }
                            if (multiInfoItemsCollector2.getItems().size() > size) {
                                str = url;
                            } else {
                                i3++;
                                if (i3 < 3 && !Utils.isNullOrEmpty(url)) {
                                }
                            }
                        } catch (JsonParserException e2) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json response", e2);
                            return null;
                        }
                    }
                }
                return new ListExtractor.InfoItemsPage(multiInfoItemsCollector2, Utils.isNullOrEmpty(str) ? null : new Page(str));
            default:
                return ListExtractor.InfoItemsPage.EMPTY;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        switch (this.$r8$classId) {
            case 0:
            case 1:
                break;
            default:
                if (((JsonObject) this.baseUrl) == null) {
                    this.baseUrl = MediaCCCConferenceExtractor.fetchConferenceData(closeableKt, this.linkHandler.getId());
                    break;
                }
                break;
        }
    }

    public PeertubeChannelTabExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler, JsonObject jsonObject) {
        super(streamingService, listLinkHandler, 0);
        this.baseUrl = jsonObject;
    }

    public PeertubeChannelTabExtractor(PeertubeService peertubeService, ListLinkHandler listLinkHandler) {
        super(peertubeService, listLinkHandler, 0);
        this.baseUrl = this.linkHandler.getBaseUrl();
    }

    private final void onFetchPage$org$schabi$newpipe$extractor$services$peertube$extractors$PeertubeChannelTabExtractor(CloseableKt closeableKt) {
    }

    private final void onFetchPage$org$schabi$newpipe$extractor$services$soundcloud$extractors$SoundcloudChannelTabExtractor(CloseableKt closeableKt) {
    }
}
