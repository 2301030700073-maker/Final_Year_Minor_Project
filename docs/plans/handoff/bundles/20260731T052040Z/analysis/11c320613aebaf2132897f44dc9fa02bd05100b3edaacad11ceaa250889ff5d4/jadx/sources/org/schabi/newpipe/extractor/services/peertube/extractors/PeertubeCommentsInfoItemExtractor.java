package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import j$.util.Objects;
import java.nio.charset.StandardCharsets;
import java.util.List;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeCommentsInfoItemExtractor implements CommentsInfoItemExtractor {
    public final String baseUrl;
    public final JsonArray children;
    public final boolean isReply;
    public final JsonObject item;
    public Integer replyCount;
    public final String url;

    public PeertubeCommentsInfoItemExtractor(JsonObject jsonObject, JsonArray jsonArray, String str, String str2, boolean z) {
        this.item = jsonObject;
        this.children = jsonArray;
        this.url = str;
        this.baseUrl = str2;
        this.isReply = z;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getCommentId() {
        return Objects.toString(Long.valueOf(this.item.getLong(TtmlNode.ATTR_ID, 0L)), null);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Description getCommentText() {
        String str = (String) Parser.getInstanceOf(this.item, "text", String.class);
        try {
            return new Description(Jsoup.parse(str).body().text(), 3);
        } catch (Exception unused) {
            return new Description(str.replaceAll("(?s)<[^>]*>(\\s*<[^>]*>)*", ""), 3);
        }
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getLikeCount() {
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return (String) Parser.getInstanceOf(this.item, "account.displayName", String.class);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final Page getReplies() {
        JsonArray jsonArray;
        if (getReplyCount() == 0) {
            return null;
        }
        String obj = ((Number) Parser.getInstanceOf(this.item, "threadId", Number.class)).toString();
        String m = Owner.CC.m(this.url, "/", obj);
        if (!this.isReply || (jsonArray = this.children) == null || jsonArray.isEmpty()) {
            return new Page(m, obj);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.put("children", jsonArray);
        return new Page(Jsoup.string(jsonObject).getBytes(StandardCharsets.UTF_8), m, obj);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final int getReplyCount() {
        if (this.replyCount == null) {
            JsonArray jsonArray = this.children;
            if (jsonArray == null || jsonArray.isEmpty()) {
                this.replyCount = Integer.valueOf(((Number) Parser.getInstanceOf(this.item, "totalReplies", Number.class)).intValue());
            } else {
                this.replyCount = Integer.valueOf(jsonArray.size());
            }
        }
        return this.replyCount.intValue();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ int getStreamPosition() {
        return -1;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ String getTextualLikeCount() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getTextualUploadDate() {
        return (String) Parser.getInstanceOf(this.item, "createdAt", String.class);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return getUploaderAvatars();
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final DateWrapper getUploadDate() {
        return DateWrapper.fromInstant(getTextualUploadDate());
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final List getUploaderAvatars() {
        return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.item.getObject("account"), this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderName() {
        JsonObject jsonObject = this.item;
        return Owner.CC.m((String) Parser.getInstanceOf(jsonObject, "account.name", String.class), "@", (String) Parser.getInstanceOf(jsonObject, "account.host", String.class));
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final String getUploaderUrl() {
        JsonObject jsonObject = this.item;
        String str = (String) Parser.getInstanceOf(jsonObject, "account.name", String.class);
        String str2 = (String) Parser.getInstanceOf(jsonObject, "account.host", String.class);
        ServiceList.PeerTube.getClass();
        return PeertubeChannelLinkHandlerFactory.INSTANCE.fromId(Owner.CC.m("accounts/", str, "@", str2), this.baseUrl).getUrl();
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return Owner.CC.m(this.url, "/", getCommentId());
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final boolean hasCreatorReply() {
        JsonObject jsonObject = this.item;
        return jsonObject.containsKey("totalRepliesFromVideoAuthor") && jsonObject.getInt(0, "totalRepliesFromVideoAuthor") > 0;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isChannelOwner() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isEdited() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isHeartedByUploader() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor
    public final /* synthetic */ boolean isPinned() {
        return false;
    }
}
