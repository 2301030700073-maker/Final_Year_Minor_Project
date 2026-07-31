package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.work.OperationKt;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import kotlin.io.CloseableKt;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.fragments.detail.BaseDescriptionFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeChannelExtractor extends ListExtractor {
    public JsonObject channelAgeGateRenderer;
    public YoutubeChannelHelper$ChannelHeader channelHeader;
    public String channelId;
    public JsonObject jsonResponse;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAvatars() {
        assertPageFetched();
        JsonObject jsonObject = this.channelAgeGateRenderer;
        return jsonObject != null ? (List) Optional.ofNullable(jsonObject.getObject("avatar").getArray("thumbnails")).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(4)).orElseThrow(new Entities$$ExternalSyntheticLambda0(14)) : (List) Optional.ofNullable(this.channelHeader).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(1)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(4)).orElseThrow(new Entities$$ExternalSyntheticLambda0(13));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getBanners() {
        assertPageFetched();
        return this.channelAgeGateRenderer != null ? Collections.EMPTY_LIST : (List) Optional.ofNullable(this.channelHeader).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(3)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(4)).orElse(Collections.EMPTY_LIST);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getDescription() {
        assertPageFetched();
        if (this.channelAgeGateRenderer != null) {
            return null;
        }
        try {
            YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader = this.channelHeader;
            return (youtubeChannelHelper$ChannelHeader == null || youtubeChannelHelper$ChannelHeader.headerType != YoutubeChannelHelper$ChannelHeader.HeaderType.INTERACTIVE_TABBED) ? this.jsonResponse.getObject(TtmlNode.TAG_METADATA).getObject("channelMetadataRenderer").getString("description", null) : YoutubeParsingHelper.getTextFromObject(youtubeChannelHelper$ChannelHeader.json.getObject("description"), false);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get channel description", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getFeedUrl() {
        try {
            return YoutubeParsingHelper.getFeedUrlFrom(getId());
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get feed URL", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getId() {
        assertPageFetched();
        return OperationKt.getChannelId(this.channelHeader, this.jsonResponse, this.channelId);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        assertPageFetched();
        return OperationKt.getChannelName(this.channelHeader, this.channelAgeGateRenderer, this.jsonResponse);
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
        YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader;
        YoutubeChannelHelper$ChannelHeader.HeaderType headerType;
        assertPageFetched();
        if (this.channelAgeGateRenderer != null || (youtubeChannelHelper$ChannelHeader = this.channelHeader) == null || (headerType = youtubeChannelHelper$ChannelHeader.headerType) == YoutubeChannelHelper$ChannelHeader.HeaderType.INTERACTIVE_TABBED) {
            return -1L;
        }
        JsonObject jsonObject = youtubeChannelHelper$ChannelHeader.json;
        JsonObject jsonObject2 = null;
        if (headerType != YoutubeChannelHelper$ChannelHeader.HeaderType.PAGE) {
            if (jsonObject.containsKey("subscriberCountText")) {
                jsonObject2 = jsonObject.getObject("subscriberCountText");
            } else if (jsonObject.containsKey("subtitle")) {
                jsonObject2 = jsonObject.getObject("subtitle");
            }
            if (jsonObject2 == null) {
                return -1L;
            }
            try {
                return Utils.mixedNumberWordToLong(YoutubeParsingHelper.getTextFromObject(jsonObject2, false));
            } catch (NumberFormatException e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get subscriber count", e);
                return 0L;
            }
        }
        JsonObject object = jsonObject.getObject("content").getObject("pageHeaderViewModel").getObject(TtmlNode.TAG_METADATA);
        if (!object.containsKey("contentMetadataViewModel")) {
            return -1L;
        }
        JsonArray array = object.getObject("contentMetadataViewModel").getArray("metadataRows").getObject(Math.max(0, r8.size() - 1)).getArray("metadataParts");
        if (array.size() < 2) {
            return -1L;
        }
        try {
            return Utils.mixedNumberWordToLong(array.getObject(0).getObject("text").getString("content", null));
        } catch (NumberFormatException e2) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get subscriber count", e2);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTabs() {
        assertPageFetched();
        if (this.channelAgeGateRenderer != null) {
            ArrayList arrayList = new ArrayList();
            BaseDescriptionFragment$$ExternalSyntheticLambda1 baseDescriptionFragment$$ExternalSyntheticLambda1 = new BaseDescriptionFragment$$ExternalSyntheticLambda1(1, this, arrayList, getUrl());
            baseDescriptionFragment$$ExternalSyntheticLambda1.s("videos");
            baseDescriptionFragment$$ExternalSyntheticLambda1.s("shorts");
            baseDescriptionFragment$$ExternalSyntheticLambda1.s("livestreams");
            return DesugarCollections.unmodifiableList(arrayList);
        }
        JsonArray array = this.jsonResponse.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs");
        final ArrayList arrayList2 = new ArrayList();
        final PrettyTime$$ExternalSyntheticLambda0 prettyTime$$ExternalSyntheticLambda0 = new PrettyTime$$ExternalSyntheticLambda0(this, arrayList2, 5);
        final String name = getName();
        final String url = getUrl();
        final String id = getId();
        array.streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(20)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(2)).forEach(new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor$$ExternalSyntheticLambda3
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
            
                if (r0.equals("playlists") == false) goto L13;
             */
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void s(java.lang.Object r12) {
                /*
                    r11 = this;
                    r1 = r12
                    com.grack.nanojson.JsonObject r1 = (com.grack.nanojson.JsonObject) r1
                    java.lang.String r12 = "endpoint"
                    com.grack.nanojson.JsonObject r12 = r1.getObject(r12)
                    java.lang.String r0 = "commandMetadata"
                    com.grack.nanojson.JsonObject r12 = r12.getObject(r0)
                    java.lang.String r0 = "webCommandMetadata"
                    com.grack.nanojson.JsonObject r12 = r12.getObject(r0)
                    java.lang.String r0 = "url"
                    r2 = 0
                    java.lang.String r12 = r12.getString(r0, r2)
                    if (r12 == 0) goto Lb6
                    java.lang.String r0 = "/"
                    java.lang.String[] r0 = r12.split(r0)
                    int r3 = r0.length
                    if (r3 != 0) goto L2b
                    goto Lb6
                L2b:
                    int r3 = r0.length
                    r4 = 1
                    int r3 = r3 - r4
                    r0 = r0[r3]
                    org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor r3 = org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor.this
                    org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader r5 = r3.channelHeader
                    if (r5 != 0) goto L37
                    goto L40
                L37:
                    org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader r2 = new org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader
                    com.grack.nanojson.JsonObject r6 = r5.json
                    org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$ChannelHeader$HeaderType r5 = r5.headerType
                    r2.<init>(r6, r5)
                L40:
                    r0.getClass()
                    int r5 = r0.hashCode()
                    java.lang.String r6 = "videos"
                    java.lang.String r7 = "shorts"
                    java.lang.String r8 = "playlists"
                    r9 = 0
                    r10 = -1
                    switch(r5) {
                        case -1881890573: goto L7a;
                        case -1865828127: goto L73;
                        case -903148681: goto L6a;
                        case -816678056: goto L61;
                        case -551298740: goto L56;
                        default: goto L54;
                    }
                L54:
                    r4 = r10
                    goto L85
                L56:
                    java.lang.String r4 = "releases"
                    boolean r0 = r0.equals(r4)
                    if (r0 != 0) goto L5f
                    goto L54
                L5f:
                    r4 = 4
                    goto L85
                L61:
                    boolean r0 = r0.equals(r6)
                    if (r0 != 0) goto L68
                    goto L54
                L68:
                    r4 = 3
                    goto L85
                L6a:
                    boolean r0 = r0.equals(r7)
                    if (r0 != 0) goto L71
                    goto L54
                L71:
                    r4 = 2
                    goto L85
                L73:
                    boolean r0 = r0.equals(r8)
                    if (r0 != 0) goto L85
                    goto L54
                L7a:
                    java.lang.String r4 = "streams"
                    boolean r0 = r0.equals(r4)
                    if (r0 != 0) goto L84
                    goto L54
                L84:
                    r4 = r9
                L85:
                    org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0 r0 = r6
                    switch(r4) {
                        case 0: goto Lb1;
                        case 1: goto Lad;
                        case 2: goto La9;
                        case 3: goto L91;
                        case 4: goto L8b;
                        default: goto L8a;
                    }
                L8a:
                    goto Lb6
                L8b:
                    java.lang.String r11 = "albums"
                    r0.s(r11)
                    return
                L91:
                    org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler r7 = new org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler
                    java.lang.String r8 = r3.channelId
                    org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor$$ExternalSyntheticLambda12 r0 = new org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor$$ExternalSyntheticLambda12
                    java.lang.String r3 = r3
                    java.lang.String r4 = r4
                    java.lang.String r5 = r5
                    r0.<init>(r1, r2, r3, r4, r5)
                    r7.<init>(r12, r8, r6, r0)
                    java.util.ArrayList r11 = r2
                    r11.add(r9, r7)
                    return
                La9:
                    r0.s(r7)
                    return
                Lad:
                    r0.s(r8)
                    return
                Lb1:
                    java.lang.String r11 = "livestreams"
                    r0.s(r11)
                Lb6:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelExtractor$$ExternalSyntheticLambda3.s(java.lang.Object):void");
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return DesugarCollections.unmodifiableList(arrayList2);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTags() {
        assertPageFetched();
        return this.channelAgeGateRenderer != null ? Collections.EMPTY_LIST : (List) Collection.EL.stream(this.jsonResponse.getObject("microformat").getObject("microformatDataRenderer").getArray("tags")).filter(new JsonArray$$ExternalSyntheticLambda0(21)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(5)).collect(Collectors.toUnmodifiableList());
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getUrl() {
        try {
            return YoutubeChannelLinkHandlerFactory.INSTANCE.getUrl("channel/" + getId());
        } catch (ParsingException unused) {
            return this.linkHandler.getUrl();
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isVerified() {
        assertPageFetched();
        if (this.channelAgeGateRenderer != null) {
            return false;
        }
        YoutubeChannelHelper$ChannelHeader youtubeChannelHelper$ChannelHeader = this.channelHeader;
        if (youtubeChannelHelper$ChannelHeader != null) {
            return OperationKt.isChannelVerified(youtubeChannelHelper$ChannelHeader);
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get channel verified status, no channel header has been extracted");
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String resolveChannelId = OperationKt.resolveChannelId(this.linkHandler.getId());
        StreamingService streamingService = this.service;
        TokenData channelResponse = OperationKt.getChannelResponse(resolveChannelId, "EgZ2aWRlb3PyBgQKAjoA", streamingService.getContentCountry(), streamingService.getLocalization());
        JsonObject jsonObject = (JsonObject) channelResponse.builder;
        this.jsonResponse = jsonObject;
        this.channelHeader = OperationKt.getChannelHeader(jsonObject);
        this.channelId = (String) channelResponse.value;
        this.channelAgeGateRenderer = OperationKt.getChannelAgeGateRenderer(this.jsonResponse);
    }
}
