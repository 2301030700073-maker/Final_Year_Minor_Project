package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.Modifier;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeParseException;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeChannelTabExtractor;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubeStreamInfoItemLockupExtractor implements StreamInfoItemExtractor {
    public static final DateTimeFormatter PREMIERES_DATE_FORMATTER = DateTimeFormatter.ofPattern("dd/MM/yyyy, HH:mm");
    public Logger cachedChannelImageViewModel;
    public String cachedDateText;
    public final JsonArray cachedMetadataRows;
    public String cachedName;
    public StreamType cachedStreamType;
    public final JsonObject lockupViewModel;
    public final TimeAgoParser timeAgoParser;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MultiChannelImageViewModel extends Logger {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MultiChannelImageViewModel(JsonObject jsonObject, int i) {
            super(jsonObject);
            this.$r8$classId = i;
        }

        @Override // org.koin.core.logger.Logger
        public final JsonObject forAvatarExtraction() {
            switch (this.$r8$classId) {
                case 0:
                    return ((JsonObject) this.level).getArray("avatars").getObject(0);
                default:
                    return ((JsonObject) this.level).getObject("avatar");
            }
        }

        @Override // org.koin.core.logger.Logger
        public final JsonObject forUploaderUrlExtraction() {
            switch (this.$r8$classId) {
                case 0:
                    return (JsonObject) RecordTag.m(RecordTag.m((JsonObject) this.level, "rendererContext", "commandContext", "onTap", "innertubeCommand"), "showDialogCommand", "panelLoadingStrategy", "inlineContent", "dialogViewModel").getObject("customContent").getObject("listViewModel").getArray("listItems").streamAsJsonObjects().map(new Utils$$ExternalSyntheticLambda1(6)).findFirst().orElse(null);
                default:
                    return (JsonObject) this.level;
            }
        }
    }

    public YoutubeStreamInfoItemLockupExtractor(JsonObject jsonObject, TimeAgoParser timeAgoParser) {
        this.lockupViewModel = jsonObject;
        this.timeAgoParser = timeAgoParser;
        this.cachedMetadataRows = RecordTag.m(jsonObject, TtmlNode.TAG_METADATA, "lockupMetadataViewModel", TtmlNode.TAG_METADATA, "contentMetadataViewModel").getArray("metadataRows");
    }

    public final Logger channelImageViewModel() {
        MultiChannelImageViewModel multiChannelImageViewModel;
        if (this.cachedChannelImageViewModel == null) {
            JsonObject object = this.lockupViewModel.getObject(TtmlNode.TAG_METADATA).getObject("lockupMetadataViewModel").getObject("image");
            JsonObject object2 = object.getObject(null, "decoratedAvatarViewModel");
            if (object2 != null) {
                multiChannelImageViewModel = new MultiChannelImageViewModel(object2, 1);
            } else {
                JsonObject object3 = object.getObject(null, "avatarStackViewModel");
                if (object3 == null) {
                    Utils$$ExternalSyntheticBUOutline0.m("Failed to determine channel image view model");
                    return null;
                }
                multiChannelImageViewModel = new MultiChannelImageViewModel(object3, 0);
            }
            this.cachedChannelImageViewModel = multiChannelImageViewModel;
        }
        return this.cachedChannelImageViewModel;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final ContentAvailability getContentAvailability() {
        if (isChannelsMembersOnlyOrFirst()) {
            return ContentAvailability.MEMBERSHIP;
        }
        boolean isLive = isLive();
        ContentAvailability contentAvailability = ContentAvailability.AVAILABLE;
        return isLive ? contentAvailability : isPremiere$1() ? ContentAvailability.UPCOMING : contentAvailability;
    }

    public final String getDateText() {
        String str = this.cachedDateText;
        if (str != null) {
            return str;
        }
        ArrayList metadataPartsFromMetadataRows = getMetadataPartsFromMetadataRows();
        if (metadataPartsFromMetadataRows.isEmpty()) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get date text: no metadata part from metadata rows");
            return null;
        }
        JsonArray jsonArray = (JsonArray) Modifier.CC.m(1, metadataPartsFromMetadataRows);
        if (jsonArray.isEmpty()) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get date text: no metadata part in the metadata parts array");
            return null;
        }
        String string = jsonArray.getObject(jsonArray.size() - 1).getObject("text").getString("content", null);
        this.cachedDateText = string;
        return string;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        if (isLive() || isPremiere$1()) {
            return -1L;
        }
        List list = (List) ((JsonArray) Parser.getInstanceOf(this.lockupViewModel, "contentImage.thumbnailViewModel.overlays", JsonArray.class)).streamAsJsonObjects().flatMap(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(29)).map(new Utils$$ExternalSyntheticLambda1(1)).collect(Collectors.toList());
        if (list.isEmpty()) {
            return -1L;
        }
        Iterator it = list.iterator();
        ParsingException e = null;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.matches(".*\\d.*")) {
                try {
                    return YoutubeParsingHelper.parseDurationString(str);
                } catch (ParsingException e2) {
                    e = e2;
                }
            }
        }
        if (e == null) {
            return -1L;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get duration", e);
        return 0L;
    }

    public final ArrayList getMetadataPartsFromMetadataRows() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            JsonArray jsonArray = this.cachedMetadataRows;
            if (i >= jsonArray.size()) {
                return arrayList;
            }
            JsonObject object = jsonArray.getObject(i);
            if (object.containsKey("metadataParts")) {
                arrayList.add(object.getArray("metadataParts"));
            }
            i++;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        String str = this.cachedName;
        if (str != null) {
            return str;
        }
        String str2 = (String) Parser.getInstanceOf(this.lockupViewModel, "metadata.lockupMetadataViewModel.title.content", String.class);
        if (Utils.isNullOrEmpty(str2)) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get name");
            return null;
        }
        this.cachedName = str2;
        return str2;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ String getShortDescription() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final StreamType getStreamType() {
        if (this.cachedStreamType == null) {
            JsonArray jsonArray = (JsonArray) Parser.getInstanceOf(this.lockupViewModel, "contentImage.thumbnailViewModel.overlays", JsonArray.class);
            boolean anyMatch = jsonArray.streamAsJsonObjects().flatMap(new Utils$$ExternalSyntheticLambda1(2)).map(new Utils$$ExternalSyntheticLambda1(3)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(20));
            StreamType streamType = StreamType.LIVE_STREAM;
            if (!anyMatch && !jsonArray.streamAsJsonObjects().flatMap(new Utils$$ExternalSyntheticLambda1(4)).map(new Utils$$ExternalSyntheticLambda1(5)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(17))) {
                streamType = StreamType.VIDEO_STREAM;
            }
            this.cachedStreamType = streamType;
        }
        return this.cachedStreamType;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        if (isLive()) {
            return null;
        }
        String dateText = getDateText();
        return isPremiere$1() ? dateText.replace("Premieres ", "").replace("Scheduled for ", "") : dateText;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) Parser.getInstanceOf(this.lockupViewModel, "contentImage.thumbnailViewModel.image.sources", JsonArray.class));
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        String textualUploadDate = getTextualUploadDate();
        if (textualUploadDate == null) {
            return null;
        }
        if (!isPremiere$1()) {
            return this.timeAgoParser.parse(textualUploadDate);
        }
        try {
            return new DateWrapper(LocalDateTime.parse(getDateText().replace("Premieres ", "").replace("Scheduled for ", ""), PREMIERES_DATE_FORMATTER).I(ZoneOffset.UTC).toInstant(), false);
        } catch (DateTimeParseException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse premiere upload date", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public List getUploaderAvatars() {
        return YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) Parser.getInstanceOf(channelImageViewModel().forAvatarExtraction(), "avatarViewModel.image.sources", JsonArray.class));
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderName() {
        ArrayList metadataPartsFromMetadataRows = getMetadataPartsFromMetadataRows();
        if (metadataPartsFromMetadataRows.isEmpty()) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name: no metadata row");
            return null;
        }
        String string = ((JsonArray) metadataPartsFromMetadataRows.get(0)).getObject(0).getObject("text").getString("content", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public String getUploaderUrl() {
        JsonObject object = channelImageViewModel().forUploaderUrlExtraction().getObject("rendererContext").getObject("commandContext").getObject("onTap").getObject("innertubeCommand");
        JsonObject object2 = object.getObject("browseEndpoint");
        String string = object2.getString("browseId", null);
        if (string != null && string.startsWith("UC")) {
            return YoutubeChannelLinkHandlerFactory.INSTANCE.getUrl("channel/".concat(string));
        }
        String string2 = object2.getString("canonicalBaseUrl", null);
        if (!Utils.isNullOrEmpty(string2)) {
            YoutubeChannelLinkHandlerFactory youtubeChannelLinkHandlerFactory = YoutubeChannelLinkHandlerFactory.INSTANCE;
            if (string2.startsWith("/")) {
                string2 = string2.substring(1);
            }
            return youtubeChannelLinkHandlerFactory.getUrl(string2);
        }
        String m480m = RecordTag.m480m(object, "commandMetadata", "webCommandMetadata", "url", (String) null);
        if (Utils.isNullOrEmpty(m480m)) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader url");
            return null;
        }
        YoutubeChannelLinkHandlerFactory youtubeChannelLinkHandlerFactory2 = YoutubeChannelLinkHandlerFactory.INSTANCE;
        if (m480m.startsWith("/")) {
            m480m = m480m.substring(1);
        }
        return youtubeChannelLinkHandlerFactory2.getUrl(m480m);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        JsonObject jsonObject = this.lockupViewModel;
        try {
            String string = jsonObject.getString("contentId", null);
            if (Utils.isNullOrEmpty(string)) {
                string = (String) Parser.getInstanceOf(jsonObject, "rendererContext.commandContext.onTap.innertubeCommand.watchEndpoint.videoId", String.class);
            }
            return YoutubeStreamLinkHandlerFactory.INSTANCE.getUrl(string);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get url", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        if (isChannelsMembersOnlyOrFirst()) {
            return -1L;
        }
        ArrayList metadataPartsFromMetadataRows = getMetadataPartsFromMetadataRows();
        if (metadataPartsFromMetadataRows.isEmpty()) {
            if (!isLive() || !isChannelOrCoursePlaylistLockupItem()) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not get view count: no metadata part from metadata rows");
                return 0L;
            }
        } else {
            if (isPremiere$1()) {
                return -1L;
            }
            if (!isLive() || metadataPartsFromMetadataRows.size() != 1 || isChannelOrCoursePlaylistLockupItem()) {
                JsonArray jsonArray = (JsonArray) Modifier.CC.m(1, metadataPartsFromMetadataRows);
                if (jsonArray.isEmpty()) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get view count: no metadata part in the metadata parts array");
                    return 0L;
                }
                String string = jsonArray.getObject(0).getObject("text").getString("content", null);
                if (Utils.isNullOrEmpty(string)) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get view count");
                    return 0L;
                }
                if (!string.toLowerCase().contains("no views")) {
                    if (string.toLowerCase().contains("recommended")) {
                        return -1L;
                    }
                    return Utils.mixedNumberWordToLong(string);
                }
            }
        }
        return 0L;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isAd() {
        String name = getName();
        return "[Private video]".equals(name) || "[Deleted video]".equals(name);
    }

    public boolean isChannelOrCoursePlaylistLockupItem() {
        return this instanceof YoutubeChannelTabExtractor.AnonymousClass3;
    }

    public final boolean isChannelsMembersOnlyOrFirst() {
        return this.cachedMetadataRows.streamAsJsonObjects().flatMap(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(26)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(28)).anyMatch(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(19));
    }

    public final boolean isLive() {
        return getStreamType() != StreamType.VIDEO_STREAM;
    }

    public final boolean isPremiere$1() {
        String dateText = getDateText();
        return dateText.contains("Premieres ") || dateText.contains("Scheduled for ");
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ boolean isShortFormContent() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public boolean isUploaderVerified() {
        ArrayList metadataPartsFromMetadataRows = getMetadataPartsFromMetadataRows();
        if (metadataPartsFromMetadataRows.isEmpty()) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader verified status: no metadata row");
            return false;
        }
        JsonArray array = ((JsonArray) metadataPartsFromMetadataRows.get(0)).getObject(0).getObject("text").getArray("attachmentRuns");
        String str = YoutubeParsingHelper.clientVersion;
        return array.streamAsJsonObjects().anyMatch(new JsonArray$$ExternalSyntheticLambda0(17));
    }
}
