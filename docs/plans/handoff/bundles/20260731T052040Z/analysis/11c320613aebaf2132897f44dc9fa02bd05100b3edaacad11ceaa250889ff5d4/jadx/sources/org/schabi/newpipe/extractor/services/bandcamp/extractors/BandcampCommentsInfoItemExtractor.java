package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import j$.util.Objects;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampCommentsInfoItemExtractor implements CommentsInfoItemExtractor {
    public final /* synthetic */ int $r8$classId;
    public final JsonObject review;
    public final String url;

    public /* synthetic */ BandcampCommentsInfoItemExtractor(JsonObject jsonObject, String str, int i) {
        this.$r8$classId = i;
        this.review = jsonObject;
        this.url = str;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getCommentId() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            default:
                return Objects.toString(Long.valueOf(this.review.getLong(TtmlNode.ATTR_ID, 0L)), null);
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Description getCommentText() {
        switch (this.$r8$classId) {
            case 0:
                return new Description(this.review.getString("why", null), 3);
            default:
                return new Description(this.review.getString(TtmlNode.TAG_BODY, null), 3);
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getLikeCount() {
        switch (this.$r8$classId) {
        }
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return getCommentText().getContent();
            default:
                return this.review.getObject("user").getString("permalink", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ Page getReplies() {
        switch (this.$r8$classId) {
        }
        return null;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getReplyCount() {
        switch (this.$r8$classId) {
        }
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getStreamPosition() {
        switch (this.$r8$classId) {
            case 0:
                return -1;
            default:
                return this.review.getInt(0, "timestamp") / 1000;
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ String getTextualLikeCount() {
        switch (this.$r8$classId) {
        }
        return "";
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualUploadDate() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            default:
                return this.review.getString("created_at", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        switch (this.$r8$classId) {
            case 0:
                return getUploaderAvatars();
            default:
                return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(this.review.getObject("user").getString("avatar_url", null));
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final DateWrapper getUploadDate() {
        switch (this.$r8$classId) {
            case 0:
                return null;
            default:
                return SoundcloudParsingHelper.parseDate(getTextualUploadDate());
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final List getUploaderAvatars() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampExtractorHelper.getImagesFromImageId(this.review.getLong("image_id", 0L), false);
            default:
                return SoundcloudParsingHelper.getAllImagesFromArtworkOrAvatarUrl(this.review.getObject("user").getString("avatar_url", null));
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderName() {
        switch (this.$r8$classId) {
            case 0:
                return this.review.getString("name", null);
            default:
                return this.review.getObject("user").getString("username", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderUrl() {
        switch (this.$r8$classId) {
            case 0:
                return "";
            default:
                return this.review.getObject("user").getString("permalink_url", null);
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        switch (this.$r8$classId) {
        }
        return this.url;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean hasCreatorReply() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isChannelOwner() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isEdited() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isHeartedByUploader() {
        switch (this.$r8$classId) {
        }
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isPinned() {
        switch (this.$r8$classId) {
        }
        return false;
    }
}
