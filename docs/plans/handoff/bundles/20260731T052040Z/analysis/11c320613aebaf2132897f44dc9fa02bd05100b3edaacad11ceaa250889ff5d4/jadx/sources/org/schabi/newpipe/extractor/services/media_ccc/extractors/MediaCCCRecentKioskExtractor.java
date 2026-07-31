package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonObject;
import j$.time.ZonedDateTime;
import j$.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.services.media_ccc.linkHandler.MediaCCCLiveListLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.ContentAvailability;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCRecentKioskExtractor implements StreamInfoItemExtractor {
    public final JsonObject event;

    public MediaCCCRecentKioskExtractor(JsonObject jsonObject) {
        this.event = jsonObject;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ ContentAvailability getContentAvailability() {
        return ContentAvailability.UNKNOWN;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getDuration() {
        return this.event.getInt(0, "duration");
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.event.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final /* synthetic */ String getShortDescription() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final StreamType getStreamType() {
        return StreamType.VIDEO_STREAM;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getTextualUploadDate() {
        return this.event.getString("date", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return MediaCCCParsingHelper.getImageListFromLogoImageUrl(this.event.getString("poster_url", null));
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final DateWrapper getUploadDate() {
        return new DateWrapper(ZonedDateTime.parse(this.event.getString("date", null), DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSzzzz")).toInstant(), false);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final List getUploaderAvatars() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderName() {
        return this.event.getString("conference_title", null);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final String getUploaderUrl() {
        return MediaCCCLiveListLinkHandlerFactory.INSTANCE$1.fromUrl(this.event.getString("conference_url", null)).getUrl();
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.event.getString("frontend_link", null);
    }

    @Override // org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor
    public final long getViewCount() {
        return this.event.getInt(0, "view_count");
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
