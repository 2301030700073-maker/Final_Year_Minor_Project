package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeChannelInfoItemExtractor implements ChannelInfoItemExtractor {
    public final JsonObject channelInfoItem;
    public final boolean withHandle;

    public YoutubeChannelInfoItemExtractor(JsonObject jsonObject) {
        this.channelInfoItem = jsonObject;
        String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("subscriberCountText"), false);
        this.withHandle = textFromObject != null ? textFromObject.startsWith("@") : false;
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final String getDescription() {
        JsonObject jsonObject = this.channelInfoItem;
        try {
            if (jsonObject.containsKey("descriptionSnippet")) {
                return YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("descriptionSnippet"), false);
            }
            return null;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get description", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        try {
            return YoutubeParsingHelper.getTextFromObject(this.channelInfoItem.getObject("title"), false);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get name", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final long getStreamCount() {
        JsonObject jsonObject = this.channelInfoItem;
        try {
            if (!this.withHandle && jsonObject.containsKey("videoCountText")) {
                return Long.parseLong(Utils.removeNonDigitCharacters(YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("videoCountText"), false)));
            }
            return -1L;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get stream count", e);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final long getSubscriberCount() {
        JsonObject jsonObject = this.channelInfoItem;
        try {
            if (!jsonObject.containsKey("subscriberCountText")) {
                return -1L;
            }
            if (!this.withHandle) {
                return Utils.mixedNumberWordToLong(YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("subscriberCountText"), false));
            }
            if (jsonObject.containsKey("videoCountText")) {
                return Utils.mixedNumberWordToLong(YoutubeParsingHelper.getTextFromObject(jsonObject.getObject("videoCountText"), false));
            }
            return -1L;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get subscriber count", e);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        try {
            return YoutubeParsingHelper.getThumbnailsFromInfoItem(this.channelInfoItem);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get thumbnails", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        try {
            return YoutubeChannelLinkHandlerFactory.INSTANCE.getUrl("channel/" + this.channelInfoItem.getString("channelId", null));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get url", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.channel.ChannelInfoItemExtractor
    public final boolean isVerified() {
        return YoutubeParsingHelper.isVerified(this.channelInfoItem.getArray("ownerBadges"));
    }
}
