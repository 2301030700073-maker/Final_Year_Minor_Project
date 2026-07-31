package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.grack.nanojson.JsonObject;
import j$.util.Objects;
import java.util.List;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeChannelLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Parser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PeertubeStreamInfoItemExtractor implements StreamInfoItemExtractor {
    public String baseUrl;
    public final JsonObject item;

    public PeertubeStreamInfoItemExtractor(JsonObject jsonObject, String str) {
        this.item = jsonObject;
        this.baseUrl = str;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ ContentAvailability getContentAvailability() {
        return ContentAvailability.UNKNOWN;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        return this.item.getLong("duration", 0L);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return (String) Parser.getInstanceOf(this.item, "name", String.class);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ String getShortDescription() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final StreamType getStreamType() {
        return this.item.getBoolean("isLive") ? StreamType.LIVE_STREAM : StreamType.VIDEO_STREAM;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        return (String) Parser.getInstanceOf(this.item, "publishedAt", String.class);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return BundleKt.getThumbnailsFromPlaylistOrVideoItem(this.item, this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        return DateWrapper.fromInstant(getTextualUploadDate());
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final List getUploaderAvatars() {
        return BundleKt.getAvatarsFromOwnerAccountOrVideoChannelObject(this.item.getObject("account"), this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        return (String) Parser.getInstanceOf(this.item, "account.displayName", String.class);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderUrl() {
        JsonObject jsonObject = this.item;
        String str = (String) Parser.getInstanceOf(jsonObject, "account.name", String.class);
        String str2 = (String) Parser.getInstanceOf(jsonObject, "account.host", String.class);
        ServiceList.PeerTube.getClass();
        return PeertubeChannelLinkHandlerFactory.INSTANCE.fromId(Owner.CC.m("accounts/", str, "@", str2), this.baseUrl).getUrl();
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        String str = (String) Parser.getInstanceOf(this.item, "uuid", String.class);
        ServiceList.PeerTube.getClass();
        String str2 = this.baseUrl;
        Objects.requireNonNull(str, "ID cannot be null");
        String str3 = str2 + "/videos/watch/" + str;
        return new LinkHandler(str3, str3, str).getUrl();
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        return this.item.getLong("views", 0L);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isAd() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ boolean isShortFormContent() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final boolean isUploaderVerified() {
        return false;
    }
}
