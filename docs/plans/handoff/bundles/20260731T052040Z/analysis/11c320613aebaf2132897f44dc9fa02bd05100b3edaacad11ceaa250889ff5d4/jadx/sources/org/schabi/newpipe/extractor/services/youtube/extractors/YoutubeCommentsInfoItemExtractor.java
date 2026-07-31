package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeCommentsInfoItemExtractor implements CommentsInfoItemExtractor {
    public final JsonObject commentRenderer;
    public final JsonObject commentRepliesRenderer;
    public final TimeAgoParser timeAgoParser;
    public final String url;

    public YoutubeCommentsInfoItemExtractor(JsonObject jsonObject, JsonObject jsonObject2, String str, TimeAgoParser timeAgoParser) {
        this.commentRenderer = jsonObject;
        this.commentRepliesRenderer = jsonObject2;
        this.url = str;
        this.timeAgoParser = timeAgoParser;
    }

    public final List getAuthorThumbnails() {
        try {
            return YoutubeParsingHelper.getImagesFromThumbnailsArray((JsonArray) Parser.getInstanceOf(this.commentRenderer, "authorThumbnail.thumbnails", JsonArray.class));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get author thumbnails", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getCommentId() {
        try {
            return (String) Parser.getInstanceOf(this.commentRenderer, "commentId", String.class);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get comment id", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Description getCommentText() {
        try {
            JsonObject jsonObject = (JsonObject) Parser.getInstanceOf(this.commentRenderer, "contentText", JsonObject.class);
            if (jsonObject.isEmpty()) {
                return Description.EMPTY_DESCRIPTION;
            }
            String textFromObject = YoutubeParsingHelper.getTextFromObject(jsonObject, true);
            if (textFromObject.startsWith("\ufeff")) {
                textFromObject = textFromObject.substring(1);
            }
            if (textFromObject.endsWith("\ufeff")) {
                textFromObject = textFromObject.substring(0, textFromObject.length() - 1);
            }
            return new Description(textFromObject, 1);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get comment text", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getLikeCount() {
        try {
            String removeNonDigitCharacters = Utils.removeNonDigitCharacters((String) Parser.getInstanceOf(this.commentRenderer, "actionButtons.commentActionButtonsRenderer.likeButton.toggleButtonRenderer.accessibilityData.accessibilityData.label", String.class));
            try {
                if (Utils.isBlank(removeNonDigitCharacters)) {
                    return 0;
                }
                return Integer.parseInt(removeNonDigitCharacters);
            } catch (Exception e) {
                Utils$$ExternalSyntheticBUOutline0.m("Unexpected error while parsing like count as Integer", e);
                return 0;
            }
        } catch (Exception unused) {
            String textualLikeCount = this.getTextualLikeCount();
            try {
                if (Utils.isBlank(textualLikeCount)) {
                    return 0;
                }
                return (int) Utils.mixedNumberWordToLong(textualLikeCount);
            } catch (Exception e2) {
                Utils$$ExternalSyntheticBUOutline0.m("Unexpected error while converting textual like count to like count", e2);
                return 0;
            }
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        try {
            return YoutubeParsingHelper.getTextFromObject((JsonObject) Parser.getInstanceOf(this.commentRenderer, "authorText", JsonObject.class), false);
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Page getReplies() {
        JsonObject jsonObject = this.commentRepliesRenderer;
        if (jsonObject == null) {
            return null;
        }
        try {
            return new Page(this.url, (String) Parser.getInstanceOf(((JsonArray) Parser.getInstanceOf(jsonObject, "contents", JsonArray.class)).getObject(0), "continuationItemRenderer.continuationEndpoint.continuationCommand.token", String.class));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getReplyCount() {
        JsonObject jsonObject = this.commentRenderer;
        if (jsonObject.containsKey("replyCount")) {
            return jsonObject.getInt(0, "replyCount");
        }
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getStreamPosition() {
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualLikeCount() {
        JsonObject jsonObject = this.commentRenderer;
        try {
            if (!jsonObject.containsKey("voteCount")) {
                return "";
            }
            JsonObject jsonObject2 = (JsonObject) Parser.getInstanceOf(jsonObject, "voteCount", JsonObject.class);
            return jsonObject2.isEmpty() ? "" : YoutubeParsingHelper.getTextFromObject(jsonObject2, false);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get the vote count", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualUploadDate() {
        try {
            return YoutubeParsingHelper.getTextFromObject((JsonObject) Parser.getInstanceOf(this.commentRenderer, "publishedTimeText", JsonObject.class), false);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get publishedTimeText", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return getAuthorThumbnails();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final DateWrapper getUploadDate() {
        String textualUploadDate = getTextualUploadDate();
        if (textualUploadDate == null || textualUploadDate.isEmpty()) {
            return null;
        }
        return this.timeAgoParser.parse(textualUploadDate);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final List getUploaderAvatars() {
        return getAuthorThumbnails();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderName() {
        try {
            return YoutubeParsingHelper.getTextFromObject((JsonObject) Parser.getInstanceOf(this.commentRenderer, "authorText", JsonObject.class), false);
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderUrl() {
        try {
            return "https://www.youtube.com/channel/" + ((String) Parser.getInstanceOf(this.commentRenderer, "authorEndpoint.browseEndpoint.browseId", String.class));
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.url;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean hasCreatorReply() {
        JsonObject jsonObject = this.commentRepliesRenderer;
        if (jsonObject == null) {
            return false;
        }
        return jsonObject.containsKey("viewRepliesCreatorThumbnail");
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isChannelOwner() {
        return this.commentRenderer.getBoolean("authorIsChannelOwner");
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isEdited() {
        JsonObject jsonObject = this.commentRenderer;
        try {
            if (jsonObject.containsKey("publishedTimeText")) {
                JsonObject jsonObject2 = (JsonObject) Parser.getInstanceOf(jsonObject, "publishedTimeText", JsonObject.class);
                if (jsonObject2.containsKey("runs")) {
                    if (jsonObject2.getArray("runs").size() > 1) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not check whether the comment is edited", e);
            return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isHeartedByUploader() {
        return this.commentRenderer.getObject("actionButtons").getObject("commentActionButtonsRenderer").containsKey("creatorHeart");
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isPinned() {
        return this.commentRenderer.containsKey("pinnedCommentBadge");
    }
}
