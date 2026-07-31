package org.schabi.newpipe.extractor.stream;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.localization.DateWrapper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamInfoItem extends InfoItem {
    private ContentAvailability contentAvailability;
    private long duration;
    private String shortDescription;
    private boolean shortFormContent;
    private final StreamType streamType;
    private String textualUploadDate;
    private DateWrapper uploadDate;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private long viewCount;

    public StreamInfoItem(int i, String str, String str2, StreamType streamType) {
        super(InfoItem.InfoType.STREAM, i, str, str2);
        this.viewCount = -1L;
        this.duration = -1L;
        this.uploaderUrl = null;
        this.uploaderAvatars = Collections.EMPTY_LIST;
        this.uploaderVerified = false;
        this.shortFormContent = false;
        this.contentAvailability = ContentAvailability.AVAILABLE;
        this.streamType = streamType;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final StreamType getStreamType() {
        return this.streamType;
    }

    public final String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public final DateWrapper getUploadDate() {
        return this.uploadDate;
    }

    public final String getUploaderName() {
        return this.uploaderName;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public final long getViewCount() {
        return this.viewCount;
    }

    public final void setContentAvailability(ContentAvailability contentAvailability) {
        this.contentAvailability = contentAvailability;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setShortDescription(String str) {
        this.shortDescription = str;
    }

    public final void setShortFormContent(boolean z) {
        this.shortFormContent = z;
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

    public final void setUploaderVerified(boolean z) {
        this.uploaderVerified = z;
    }

    public final void setViewCount(long j) {
        this.viewCount = j;
    }

    @Override // org.schabi.newpipe.extractor.InfoItem
    public final String toString() {
        return "StreamInfoItem{streamType=" + this.streamType + ", uploaderName='" + this.uploaderName + "', textualUploadDate='" + this.textualUploadDate + "', viewCount=" + this.viewCount + ", duration=" + this.duration + ", uploaderUrl='" + this.uploaderUrl + "', infoType=" + getInfoType() + ", serviceId=" + getServiceId() + ", url='" + getUrl() + "', name='" + getName() + "', thumbnails='" + getThumbnails() + "', uploaderVerified='" + this.uploaderVerified + "'}";
    }
}
