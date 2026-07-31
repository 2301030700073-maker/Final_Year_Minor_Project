package org.schabi.newpipe.extractor.comments;

import java.util.List;
import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface CommentsInfoItemExtractor extends InfoItemExtractor {
    String getCommentId();

    Description getCommentText();

    int getLikeCount();

    Page getReplies();

    int getReplyCount();

    int getStreamPosition();

    String getTextualLikeCount();

    String getTextualUploadDate();

    DateWrapper getUploadDate();

    List getUploaderAvatars();

    String getUploaderName();

    String getUploaderUrl();

    boolean hasCreatorReply();

    boolean isChannelOwner();

    boolean isEdited();

    boolean isHeartedByUploader();

    boolean isPinned();
}
