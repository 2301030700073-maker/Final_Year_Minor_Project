package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeCommentsExtractor extends SearchExtractor {
    public JsonObject ajaxJson;
    public boolean commentsDisabled;

    public static JsonObject getMutationPayloadFromEntityKey(JsonArray jsonArray, String str) {
        return ((JsonObject) jsonArray.streamAsJsonObjects().filter(new NewPipe$$ExternalSyntheticLambda2(str, 10)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(16))).getObject("payload");
    }

    public final ListExtractor.InfoItemsPage extractComments(JsonObject jsonObject) {
        String str;
        String str2;
        String str3;
        TimeAgoParser timeAgoParser;
        Page page;
        JsonArray array;
        Page page2;
        Page page3 = null;
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 2);
        JsonArray array2 = jsonObject.getArray("onResponseReceivedEndpoints");
        boolean isEmpty = array2.isEmpty();
        LinkHandler linkHandler = this.linkHandler;
        String str4 = "continuationItemRenderer";
        if (!isEmpty) {
            JsonObject object = array2.getObject(array2.size() - 1);
            if (!object.containsKey("reloadContinuationItemsCommand")) {
                str = object.containsKey("appendContinuationItemsAction") ? "appendContinuationItemsAction.continuationItems" : "reloadContinuationItemsCommand.continuationItems";
            }
            try {
                JsonArray jsonArray = new JsonArray((JsonArray) Parser.getInstanceOf(object, str, JsonArray.class));
                int size = jsonArray.size() - 1;
                if (!jsonArray.isEmpty() && jsonArray.getObject(size).containsKey("continuationItemRenderer")) {
                    jsonArray.remove(size);
                }
                JsonArray array3 = jsonObject.getObject("frameworkUpdates").getObject("entityBatchUpdate").getArray("mutations");
                String url = linkHandler.getUrl();
                TimeAgoParser timeAgoParser2 = getTimeAgoParser();
                Iterator it = jsonArray.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof JsonObject) {
                        JsonObject jsonObject2 = (JsonObject) next;
                        Iterator it2 = it;
                        LinkHandler linkHandler2 = linkHandler;
                        if (jsonObject2.containsKey("commentThreadRenderer")) {
                            JsonObject object2 = jsonObject2.getObject("commentThreadRenderer");
                            str2 = str4;
                            if (object2.containsKey("commentViewModel")) {
                                JsonObject object3 = object2.getObject("commentViewModel").getObject("commentViewModel");
                                str3 = url;
                                timeAgoParser = timeAgoParser2;
                                streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new YoutubeCommentsEUVMInfoItemExtractor(object3, object2.getObject("replies").getObject("commentRepliesRenderer"), getMutationPayloadFromEntityKey(array3, object3.getString("commentKey", "")).getObject("commentEntityPayload"), getMutationPayloadFromEntityKey(array3, object3.getString("toolbarStateKey", "")).getObject("engagementToolbarStateEntityPayload"), url, timeAgoParser2));
                            } else {
                                str3 = url;
                                timeAgoParser = timeAgoParser2;
                                if (object2.containsKey("comment")) {
                                    streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new YoutubeCommentsInfoItemExtractor(object2.getObject("comment").getObject("commentRenderer"), object2.getObject("replies").getObject("commentRepliesRenderer"), str3, timeAgoParser));
                                }
                            }
                        } else {
                            str2 = str4;
                            if (jsonObject2.containsKey("commentViewModel")) {
                                JsonObject object4 = jsonObject2.getObject("commentViewModel");
                                str3 = url;
                                timeAgoParser = timeAgoParser2;
                                streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new YoutubeCommentsEUVMInfoItemExtractor(object4, null, getMutationPayloadFromEntityKey(array3, object4.getString("commentKey", "")).getObject("commentEntityPayload"), getMutationPayloadFromEntityKey(array3, object4.getString("toolbarStateKey", "")).getObject("engagementToolbarStateEntityPayload"), url, timeAgoParser2));
                            } else {
                                str3 = url;
                                timeAgoParser = timeAgoParser2;
                                if (jsonObject2.containsKey("commentRenderer")) {
                                    JsonObject object5 = jsonObject2.getObject("commentRenderer");
                                    page = null;
                                    streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new YoutubeCommentsInfoItemExtractor(object5, null, str3, timeAgoParser));
                                    it = it2;
                                    url = str3;
                                    page3 = page;
                                    timeAgoParser2 = timeAgoParser;
                                    linkHandler = linkHandler2;
                                    str4 = str2;
                                }
                            }
                        }
                        page = null;
                        it = it2;
                        url = str3;
                        page3 = page;
                        timeAgoParser2 = timeAgoParser;
                        linkHandler = linkHandler2;
                        str4 = str2;
                    }
                }
            } catch (Exception unused) {
            }
        }
        Page page4 = page3;
        LinkHandler linkHandler3 = linkHandler;
        String str5 = str4;
        JsonArray array4 = jsonObject.getArray("onResponseReceivedEndpoints");
        if (!array4.isEmpty()) {
            try {
                JsonObject object6 = array4.getObject(array4.size() - 1);
                array = object6.getObject(object6.getObject("appendContinuationItemsAction"), "reloadContinuationItemsCommand").getArray("continuationItems");
            } catch (Exception unused2) {
            }
            if (!array.isEmpty()) {
                JsonObject object7 = array.getObject(array.size() - 1).getObject(str5);
                page2 = new Page(linkHandler3.getUrl(), (String) Parser.getInstanceOf(object7, object7.containsKey("button") ? "button.buttonRenderer.command.continuationCommand.token" : "continuationEndpoint.continuationCommand.token", String.class));
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, page2);
            }
        }
        page2 = page4;
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, page2);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final int getCommentsCount() {
        assertPageFetched();
        if (this.commentsDisabled) {
            return -1;
        }
        try {
            return Integer.parseInt(Utils.removeNonDigitCharacters(YoutubeParsingHelper.getTextFromObject(this.ajaxJson.getArray("onResponseReceivedEndpoints").getObject(0).getObject("reloadContinuationItemsCommand").getArray("continuationItems").getObject(0).getObject("commentsHeaderRenderer").getObject("countText"), false)));
        } catch (Exception e) {
            throw new ExtractionException("Unable to get comments count", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        if (!this.commentsDisabled) {
            return extractComments(this.ajaxJson);
        }
        List list = Collections.EMPTY_LIST;
        return new ListExtractor.InfoItemsPage(list, null, list);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (this.commentsDisabled) {
            List list = Collections.EMPTY_LIST;
            return new ListExtractor.InfoItemsPage(list, null, list);
        }
        if (page == null || Utils.isNullOrEmpty(page.getId())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't have the continuation.");
            return null;
        }
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(page.getId(), "continuation");
        return extractComments(YoutubeParsingHelper.getJsonPostResponse(ES6Iterator.NEXT_METHOD, Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCommentsDisabled() {
        return this.commentsDisabled;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        JsonArray jsonArray;
        StreamingService streamingService = this.service;
        Localization localization = streamingService.getLocalization();
        JsonBuilder prepareDesktopJsonBuilder = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder.value(this.linkHandler.getId(), "videoId");
        String str = null;
        try {
            jsonArray = (JsonArray) Parser.getInstanceOf(YoutubeParsingHelper.getJsonPostResponse(ES6Iterator.NEXT_METHOD, Jsoup.string((JsonObject) prepareDesktopJsonBuilder.root).getBytes(StandardCharsets.UTF_8), localization), "contents.twoColumnWatchNextResults.results.results.contents", JsonArray.class);
        } catch (ParsingException unused) {
            jsonArray = null;
        }
        if (jsonArray != null) {
            str = (String) jsonArray.streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(26)).findFirst().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(10)).orElse(null);
            this.commentsDisabled = str == null;
        }
        if (str == null) {
            return;
        }
        JsonBuilder prepareDesktopJsonBuilder2 = YoutubeParsingHelper.prepareDesktopJsonBuilder(localization, streamingService.getContentCountry());
        prepareDesktopJsonBuilder2.value(str, "continuation");
        this.ajaxJson = YoutubeParsingHelper.getJsonPostResponse(ES6Iterator.NEXT_METHOD, Jsoup.string((JsonObject) prepareDesktopJsonBuilder2.root).getBytes(StandardCharsets.UTF_8), localization);
    }
}
