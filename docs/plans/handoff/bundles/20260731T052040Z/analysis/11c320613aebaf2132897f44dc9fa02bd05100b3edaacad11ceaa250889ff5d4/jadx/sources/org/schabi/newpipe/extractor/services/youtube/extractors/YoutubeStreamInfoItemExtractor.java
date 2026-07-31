package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.format.DateTimeFormatter;
import j$.util.stream.Collectors;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubeStreamInfoItemExtractor implements StreamInfoItemExtractor {
    public static final Pattern ACCESSIBILITY_DATA_VIEW_COUNT_REGEX = Pattern.compile("([\\d,]+) views$");
    public StreamType cachedStreamType;
    public Boolean isPremiere;
    public final TimeAgoParser timeAgoParser;
    public final JsonObject videoInfo;

    public YoutubeStreamInfoItemExtractor(JsonObject jsonObject, TimeAgoParser timeAgoParser) {
        this.videoInfo = jsonObject;
        this.timeAgoParser = timeAgoParser;
    }

    public static long getViewCountFromViewCountText(String str, boolean z) {
        if (str.toLowerCase().contains("no views")) {
            return 0L;
        }
        if (str.toLowerCase().contains("recommended")) {
            return -1L;
        }
        if (z) {
            return Utils.mixedNumberWordToLong(str);
        }
        Pattern pattern = Utils.M_PATTERN;
        return Long.parseLong(str.replaceAll("\\D+", ""));
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final ContentAvailability getContentAvailability() {
        return isPremiere() ? ContentAvailability.UPCOMING : this.videoInfo.getArray("badges").streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(23)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(12)) ? ContentAvailability.MEMBERSHIP : isPremium() ? ContentAvailability.PAID : ContentAvailability.AVAILABLE;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        if (getStreamType() == StreamType.LIVE_STREAM) {
            return -1L;
        }
        JsonObject jsonObject = this.videoInfo;
        String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("lengthText"), false);
        if (Utils.isNullOrEmpty(textFromObject)) {
            textFromObject = jsonObject.getString("lengthSeconds", null);
            if (Utils.isNullOrEmpty(textFromObject)) {
                while (((List) jsonObject.getArray("thumbnailOverlays").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(13)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(24)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(14)).collect(Collectors.toList())).iterator().hasNext()) {
                    try {
                        return YoutubeParsingHelper.parseDurationString((String) r1.next());
                    } catch (ParsingException unused) {
                    }
                }
            }
            if (Utils.isNullOrEmpty(textFromObject)) {
                if (this.isPremiere()) {
                    return -1L;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get duration");
                return 0L;
            }
        }
        return YoutubeParsingHelper.parseDurationString(textFromObject);
    }

    public final Instant getInstantFromPremiere() {
        String string = this.videoInfo.getObject("upcomingEventData").getString("startTime", null);
        try {
            return Instant.ofEpochSecond(Long.parseLong(string));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m(Modifier.CC.m("Could not parse date from premiere: \"", string, "\""), e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        JsonObject object = this.videoInfo.getObject("title");
        String textFromObject = YoutubeParsingHelper.getTextFromObject(object, false);
        if (!Utils.isNullOrEmpty(textFromObject)) {
            return textFromObject;
        }
        if (!Utils.isNullOrEmpty(object) && !object.containsKey("runs")) {
            return "";
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getShortDescription() {
        JsonObject jsonObject = this.videoInfo;
        if (jsonObject.containsKey("detailedMetadataSnippets")) {
            return YoutubeParsingHelper.getTextFromObject(jsonObject.getArray("detailedMetadataSnippets").getObject(0).getObject("snippetText"), false);
        }
        if (jsonObject.containsKey("descriptionSnippet")) {
            return YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("descriptionSnippet"), false);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        r7.cachedStreamType = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        return r3;
     */
    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.stream.StreamType getStreamType() {
        /*
            r7 = this;
            org.schabi.newpipe.extractor.stream.StreamType r0 = r7.cachedStreamType
            if (r0 == 0) goto L5
            return r0
        L5:
            java.lang.String r0 = "badges"
            com.grack.nanojson.JsonObject r1 = r7.videoInfo
            com.grack.nanojson.JsonArray r0 = r1.getArray(r0)
            java.util.Iterator r0 = r0.iterator()
        L11:
            boolean r2 = r0.hasNext()
            org.schabi.newpipe.extractor.stream.StreamType r3 = org.schabi.newpipe.extractor.stream.StreamType.LIVE_STREAM
            java.lang.String r4 = "style"
            java.lang.String r5 = ""
            if (r2 == 0) goto L4c
            java.lang.Object r2 = r0.next()
            boolean r6 = r2 instanceof com.grack.nanojson.JsonObject
            if (r6 != 0) goto L27
            goto L11
        L27:
            com.grack.nanojson.JsonObject r2 = (com.grack.nanojson.JsonObject) r2
            java.lang.String r6 = "metadataBadgeRenderer"
            com.grack.nanojson.JsonObject r2 = r2.getObject(r6)
            java.lang.String r4 = r2.getString(r4, r5)
            java.lang.String r6 = "BADGE_STYLE_TYPE_LIVE_NOW"
            boolean r4 = r4.equals(r6)
            if (r4 != 0) goto L49
            java.lang.String r4 = "label"
            java.lang.String r2 = r2.getString(r4, r5)
            java.lang.String r4 = "LIVE NOW"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L11
        L49:
            r7.cachedStreamType = r3
            return r3
        L4c:
            java.lang.String r0 = "thumbnailOverlays"
            com.grack.nanojson.JsonArray r0 = r1.getArray(r0)
            java.util.Iterator r0 = r0.iterator()
        L57:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L7e
            java.lang.Object r1 = r0.next()
            boolean r2 = r1 instanceof com.grack.nanojson.JsonObject
            if (r2 != 0) goto L66
            goto L57
        L66:
            com.grack.nanojson.JsonObject r1 = (com.grack.nanojson.JsonObject) r1
            java.lang.String r2 = "thumbnailOverlayTimeStatusRenderer"
            com.grack.nanojson.JsonObject r1 = r1.getObject(r2)
            java.lang.String r1 = r1.getString(r4, r5)
            java.lang.String r2 = "LIVE"
            boolean r1 = r1.equalsIgnoreCase(r2)
            if (r1 == 0) goto L57
            r7.cachedStreamType = r3
            return r3
        L7e:
            org.schabi.newpipe.extractor.stream.StreamType r0 = org.schabi.newpipe.extractor.stream.StreamType.VIDEO_STREAM
            r7.cachedStreamType = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamInfoItemExtractor.getStreamType():org.schabi.newpipe.extractor.stream.StreamType");
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        if (getStreamType() != StreamType.LIVE_STREAM) {
            if (isPremiere()) {
                return DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm").format(LocalDateTime.ofInstant(getInstantFromPremiere(), ZoneId.systemDefault()));
            }
            JsonObject jsonObject = this.videoInfo;
            String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("publishedTimeText"), false);
            if (Utils.isNullOrEmpty(textFromObject) && jsonObject.containsKey("videoInfo")) {
                textFromObject = jsonObject.getObject("videoInfo").getArray("runs").getObject(2).getString("text", null);
            }
            if (!Utils.isNullOrEmpty(textFromObject)) {
                return textFromObject;
            }
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return YoutubeParsingHelper.getThumbnailsFromInfoItem(this.videoInfo);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        if (getStreamType() != StreamType.LIVE_STREAM) {
            if (isPremiere()) {
                return new DateWrapper(getInstantFromPremiere(), false);
            }
            String textualUploadDate = getTextualUploadDate();
            TimeAgoParser timeAgoParser = this.timeAgoParser;
            if (timeAgoParser != null && !Utils.isNullOrEmpty(textualUploadDate)) {
                try {
                    return timeAgoParser.parse(textualUploadDate);
                } catch (ParsingException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get upload date", e);
                }
            }
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final List getUploaderAvatars() {
        JsonObject jsonObject = this.videoInfo;
        return jsonObject.containsKey("channelThumbnailSupportedRenderers") ? YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) Parser.getInstanceOf(jsonObject, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails", JsonArray.class)) : jsonObject.containsKey("channelThumbnail") ? YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) Parser.getInstanceOf(jsonObject, "channelThumbnail.thumbnails", JsonArray.class)) : Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderName() {
        JsonObject jsonObject = this.videoInfo;
        String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("longBylineText"), false);
        if (Utils.isNullOrEmpty(textFromObject)) {
            textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("ownerText"), false);
            if (Utils.isNullOrEmpty(textFromObject)) {
                String textFromObject2 = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("shortBylineText"), false);
                if (!Utils.isNullOrEmpty(textFromObject2)) {
                    return textFromObject2;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
                return null;
            }
        }
        return textFromObject;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderUrl() {
        JsonObject jsonObject = this.videoInfo;
        String urlFromNavigationEndpoint = YoutubeParsingHelper.getUrlFromNavigationEndpoint(jsonObject.getObject("longBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
        if (Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
            urlFromNavigationEndpoint = YoutubeParsingHelper.getUrlFromNavigationEndpoint(jsonObject.getObject("ownerText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
            if (Utils.isNullOrEmpty(urlFromNavigationEndpoint)) {
                String urlFromNavigationEndpoint2 = YoutubeParsingHelper.getUrlFromNavigationEndpoint(jsonObject.getObject("shortBylineText").getArray("runs").getObject(0).getObject("navigationEndpoint"));
                if (!Utils.isNullOrEmpty(urlFromNavigationEndpoint2)) {
                    return urlFromNavigationEndpoint2;
                }
                Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader url");
                return null;
            }
        }
        return urlFromNavigationEndpoint;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        try {
            return YoutubeStreamLinkHandlerFactory.INSTANCE.getUrl(this.videoInfo.getString("videoId", null));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get url", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        if (isPremium() || isPremiere()) {
            return -1L;
        }
        JsonObject jsonObject = this.videoInfo;
        String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("viewCountText"), false);
        if (!Utils.isNullOrEmpty(textFromObject)) {
            try {
                return getViewCountFromViewCountText(textFromObject, false);
            } catch (Exception unused) {
            }
        }
        if (getStreamType() != StreamType.LIVE_STREAM) {
            try {
                return getViewCountFromAccessibilityData();
            } catch (Exception unused2) {
            }
        }
        if (jsonObject.containsKey("videoInfo")) {
            try {
                return getViewCountFromViewCountText(jsonObject.getObject("videoInfo").getArray("runs").getObject(0).getString("text", ""), true);
            } catch (Exception unused3) {
            }
        }
        if (!jsonObject.containsKey("shortViewCountText")) {
            return -1L;
        }
        try {
            String textFromObject2 = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("shortViewCountText"), false);
            if (Utils.isNullOrEmpty(textFromObject2)) {
                return -1L;
            }
            return getViewCountFromViewCountText(textFromObject2, true);
        } catch (Exception unused4) {
            return -1L;
        }
    }

    public final long getViewCountFromAccessibilityData() {
        String string = this.videoInfo.getObject("title").getObject("accessibility").getObject("accessibilityData").getString("label", "");
        if (string.toLowerCase().endsWith("no views")) {
            return 0L;
        }
        return Long.parseLong(Utils.removeNonDigitCharacters(Parser.matchGroup(string, ACCESSIBILITY_DATA_VIEW_COUNT_REGEX, 1)));
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isAd() {
        return isPremium() || getName().equals("[Private video]") || getName().equals("[Deleted video]");
    }

    public final boolean isPremiere() {
        if (this.isPremiere == null) {
            this.isPremiere = Boolean.valueOf(this.videoInfo.containsKey("upcomingEventData"));
        }
        return this.isPremiere.booleanValue();
    }

    public final boolean isPremium() {
        Iterator<E> it = this.videoInfo.getArray("badges").iterator();
        while (it.hasNext()) {
            if (((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString("label", "").equals("Premium")) {
                return true;
            }
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isShortFormContent() {
        JsonObject jsonObject = this.videoInfo;
        try {
            String string = jsonObject.getObject("navigationEndpoint").getObject("commandMetadata").getObject("webCommandMetadata").getString("webPageType", null);
            boolean z = !Utils.isNullOrEmpty(string) && string.equals("WEB_PAGE_TYPE_SHORTS");
            if (!z) {
                z = jsonObject.getObject("navigationEndpoint").containsKey("reelWatchEndpoint");
            }
            return (z || !jsonObject.containsKey("thumbnailOverlays")) ? z : jsonObject.getArray("thumbnailOverlays").streamAsJsonObjects().filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(15)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(25)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(16));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not determine if this is short-form content", e);
            return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public boolean isUploaderVerified() {
        return YoutubeParsingHelper.isVerified(this.videoInfo.getArray("ownerBadges"));
    }
}
