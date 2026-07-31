package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import java.util.List;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.services.youtube.YoutubeDescriptionHelper;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeCommentsEUVMInfoItemExtractor implements CommentsInfoItemExtractor {
    public final JsonObject commentEntityPayload;
    public final JsonObject commentRepliesRenderer;
    public final JsonObject commentViewModel;
    public final JsonObject engagementToolbarStateEntityPayload;
    public final TimeAgoParser timeAgoParser;
    public final String videoUrl;

    public YoutubeCommentsEUVMInfoItemExtractor(JsonObject jsonObject, JsonObject jsonObject2, JsonObject jsonObject3, JsonObject jsonObject4, String str, TimeAgoParser timeAgoParser) {
        this.commentViewModel = jsonObject;
        this.commentRepliesRenderer = jsonObject2;
        this.commentEntityPayload = jsonObject3;
        this.engagementToolbarStateEntityPayload = jsonObject4;
        this.videoUrl = str;
        this.timeAgoParser = timeAgoParser;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getCommentId() {
        String string = this.commentEntityPayload.getObject("properties").getString("commentId", null);
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        String string2 = this.commentViewModel.getString("commentId", null);
        if (!Utils.isNullOrEmpty(string2)) {
            return string2;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get comment ID");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Description getCommentText() {
        return new Description(YoutubeDescriptionHelper.attributedDescriptionToHtml(this.commentEntityPayload.getObject("properties").getObject("content")), 1);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getLikeCount() {
        String textualLikeCount = getTextualLikeCount();
        try {
            if (Utils.isBlank(textualLikeCount)) {
                return 0;
            }
            return (int) Utils.mixedNumberWordToLong(textualLikeCount);
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Unexpected error while converting textual like count to like count", e);
            return 0;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return getUploaderName();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Page getReplies() {
        JsonObject jsonObject = this.commentRepliesRenderer;
        if (Utils.isNullOrEmpty(jsonObject)) {
            return null;
        }
        return new Page(this.videoUrl, (String) jsonObject.getArray("contents").streamAsJsonObjects().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(8)).filter(new JsonArray$$ExternalSyntheticLambda0(25)).findFirst().map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(9)).orElseThrow(new Entities$$ExternalSyntheticLambda0(15)));
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getReplyCount() {
        String string = this.commentEntityPayload.getObject("toolbar").getString("replyCount", null);
        if (Utils.isNullOrEmpty(string)) {
            return 0;
        }
        return (int) Utils.mixedNumberWordToLong(string);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getStreamPosition() {
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualLikeCount() {
        return this.commentEntityPayload.getObject("toolbar").getString("likeCountNotliked", null);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualUploadDate() {
        return this.commentEntityPayload.getObject("properties").getString("publishedTime", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return getUploaderAvatars();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final DateWrapper getUploadDate() {
        String textualUploadDate = getTextualUploadDate();
        if (Utils.isNullOrEmpty(textualUploadDate)) {
            return null;
        }
        return this.timeAgoParser.parse(textualUploadDate);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final List getUploaderAvatars() {
        return YoutubeParsingHelper.getImagesFromThumbnailsArray(this.commentEntityPayload.getObject("avatar").getObject("image").getArray("sources"));
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderName() {
        return this.commentEntityPayload.getObject("author").getString("displayName", null);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderUrl() {
        JsonObject object = this.commentEntityPayload.getObject("author");
        String string = object.getString("channelId", null);
        if (Utils.isNullOrEmpty(string)) {
            string = object.getObject("channelCommand").getObject("innertubeCommand").getObject("browseEndpoint").getString("browseId", null);
            if (Utils.isNullOrEmpty(string)) {
                string = RecordTag.m(object, "avatar", "endpoint", "innertubeCommand", "browseEndpoint").getString("browseId", null);
                if (Utils.isNullOrEmpty(string)) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not get channel ID");
                    return null;
                }
            }
        }
        return Owner.CC.m("https://www.youtube.com/channel/", string);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.videoUrl;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean hasCreatorReply() {
        JsonObject jsonObject = this.commentRepliesRenderer;
        return jsonObject != null && jsonObject.containsKey("viewRepliesCreatorThumbnail");
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isChannelOwner() {
        return this.commentEntityPayload.getObject("author").getBoolean("isCreator");
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isEdited() {
        try {
            JsonObject object = this.commentEntityPayload.getObject("properties");
            if (object != null && object.containsKey("publishedTime")) {
                String string = object.getString("publishedTime", "");
                if (string.contains("(")) {
                    if (string.contains(")")) {
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
        return "TOOLBAR_HEART_STATE_HEARTED".equals(this.engagementToolbarStateEntityPayload.getString("heartState", null));
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean isPinned() {
        return this.commentViewModel.containsKey("pinnedText");
    }
}
