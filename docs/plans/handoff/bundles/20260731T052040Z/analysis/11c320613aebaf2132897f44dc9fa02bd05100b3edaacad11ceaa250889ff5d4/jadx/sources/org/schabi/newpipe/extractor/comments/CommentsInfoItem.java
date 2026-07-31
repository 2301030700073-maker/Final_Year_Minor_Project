package org.schabi.newpipe.extractor.comments;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CommentsInfoItem extends InfoItem {
    private String commentId;
    private Description commentText;
    private boolean creatorReply;
    private boolean heartedByUploader;
    private boolean isChannelOwner;
    private boolean isEdited;
    private int likeCount;
    private boolean pinned;
    private Page replies;
    private int replyCount;
    private int streamPosition;
    private String textualLikeCount;
    private String textualUploadDate;
    private DateWrapper uploadDate;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;

    public CommentsInfoItem(String str, int i, String str2) {
        super(InfoItem.InfoType.COMMENT, i, str, str2);
        this.commentText = Description.EMPTY_DESCRIPTION;
        this.uploaderAvatars = Collections.EMPTY_LIST;
    }

    public final Description getCommentText() {
        return this.commentText;
    }

    public final int getLikeCount() {
        return this.likeCount;
    }

    public final Page getReplies() {
        return this.replies;
    }

    public final int getReplyCount() {
        return this.replyCount;
    }

    public final String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public final DateWrapper getUploadDate() {
        return this.uploadDate;
    }

    public final List getUploaderAvatars() {
        return this.uploaderAvatars;
    }

    public final String getUploaderName() {
        return this.uploaderName;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public final boolean isHeartedByUploader() {
        return this.heartedByUploader;
    }

    public final boolean isPinned() {
        return this.pinned;
    }

    public final void setChannelOwner(boolean z) {
        this.isChannelOwner = z;
    }

    public final void setCommentId(String str) {
        this.commentId = str;
    }

    public final void setCommentText(Description description) {
        this.commentText = description;
    }

    public final void setCreatorReply(boolean z) {
        this.creatorReply = z;
    }

    public final void setEdited(boolean z) {
        this.isEdited = z;
    }

    public final void setHeartedByUploader(boolean z) {
        this.heartedByUploader = z;
    }

    public final void setLikeCount(int i) {
        this.likeCount = i;
    }

    public final void setPinned(boolean z) {
        this.pinned = z;
    }

    public final void setReplies(Page page) {
        this.replies = page;
    }

    public final void setReplyCount(int i) {
        this.replyCount = i;
    }

    public final void setStreamPosition(int i) {
        this.streamPosition = i;
    }

    public final void setTextualLikeCount(String str) {
        this.textualLikeCount = str;
    }

    public final void setTextualUploadDate(String str) {
        this.textualUploadDate = str;
    }

    public final void setUploadDate(DateWrapper dateWrapper) {
        this.uploadDate = dateWrapper;
    }

    public final void setUploaderAvatars(List list) {
        this.uploaderAvatars = list;
    }

    public final void setUploaderName(String str) {
        this.uploaderName = str;
    }

    public final void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }
}
