package org.schabi.newpipe.database.stream.model;

import androidx.compose.ui.Modifier;
import j$.time.OffsetDateTime;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamEntity implements Serializable {
    public static final Companion Companion = new Companion();
    private long duration;
    private Boolean isUploadDateApproximation;
    private int serviceId;
    private StreamType streamType;
    private String textualUploadDate;
    private String thumbnailUrl;
    private String title;
    private long uid;
    private OffsetDateTime uploadDate;
    private String uploader;
    private String uploaderUrl;
    private String url;
    private Long viewCount;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StreamEntity(org.schabi.newpipe.extractor.stream.StreamInfoItem r16) {
        /*
            r15 = this;
            r16.getClass()
            int r1 = r16.getServiceId()
            java.lang.String r2 = r16.getUrl()
            r2.getClass()
            java.lang.String r3 = r16.getName()
            r3.getClass()
            org.schabi.newpipe.extractor.stream.StreamType r4 = r16.getStreamType()
            r4.getClass()
            long r5 = r16.getDuration()
            java.lang.String r7 = r16.getUploaderName()
            r7.getClass()
            java.lang.String r8 = r16.getUploaderUrl()
            java.util.List r0 = r16.getThumbnails()
            r0.getClass()
            java.lang.String r9 = org.schabi.newpipe.util.image.ImageStrategy.imageListToDbUrl(r0)
            long r10 = r16.getViewCount()
            java.lang.Long r10 = java.lang.Long.valueOf(r10)
            java.lang.String r11 = r16.getTextualUploadDate()
            org.schabi.newpipe.extractor.localization.DateWrapper r0 = r16.getUploadDate()
            r12 = 0
            if (r0 == 0) goto L4e
            j$.time.OffsetDateTime r0 = r0.offsetDateTime()
            goto L4f
        L4e:
            r0 = r12
        L4f:
            org.schabi.newpipe.extractor.localization.DateWrapper r13 = r16.getUploadDate()
            if (r13 == 0) goto L5d
            boolean r12 = r13.isApproximation()
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r12)
        L5d:
            r13 = r12
            r14 = 1
            r12 = r0
            r0 = r15
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.database.stream.model.StreamEntity.<init>(org.schabi.newpipe.extractor.stream.StreamInfoItem):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamEntity)) {
            return false;
        }
        StreamEntity streamEntity = (StreamEntity) obj;
        return this.uid == streamEntity.uid && this.serviceId == streamEntity.serviceId && Intrinsics.areEqual(this.url, streamEntity.url) && Intrinsics.areEqual(this.title, streamEntity.title) && this.streamType == streamEntity.streamType && this.duration == streamEntity.duration && Intrinsics.areEqual(this.uploader, streamEntity.uploader) && Intrinsics.areEqual(this.uploaderUrl, streamEntity.uploaderUrl) && Intrinsics.areEqual(this.thumbnailUrl, streamEntity.thumbnailUrl) && Intrinsics.areEqual(this.viewCount, streamEntity.viewCount) && Intrinsics.areEqual(this.textualUploadDate, streamEntity.textualUploadDate) && Intrinsics.areEqual(this.uploadDate, streamEntity.uploadDate) && Intrinsics.areEqual(this.isUploadDateApproximation, streamEntity.isUploadDateApproximation);
    }

    public final long getDuration() {
        return this.duration;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final StreamType getStreamType() {
        return this.streamType;
    }

    public final String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final long getUid() {
        return this.uid;
    }

    public final OffsetDateTime getUploadDate() {
        return this.uploadDate;
    }

    public final String getUploader() {
        return this.uploader;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Long getViewCount() {
        return this.viewCount;
    }

    public final int hashCode() {
        long j = this.uid;
        int hashCode = (this.streamType.hashCode() + Modifier.CC.m(Modifier.CC.m(((((int) (j ^ (j >>> 32))) * 31) + this.serviceId) * 31, 31, this.url), 31, this.title)) * 31;
        long j2 = this.duration;
        int m = Modifier.CC.m((hashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31, 31, this.uploader);
        String str = this.uploaderUrl;
        int hashCode2 = (m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.thumbnailUrl;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.viewCount;
        int hashCode4 = (hashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        String str3 = this.textualUploadDate;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        OffsetDateTime offsetDateTime = this.uploadDate;
        int hashCode6 = (hashCode5 + (offsetDateTime == null ? 0 : offsetDateTime.hashCode())) * 31;
        Boolean bool = this.isUploadDateApproximation;
        return hashCode6 + (bool != null ? bool.hashCode() : 0);
    }

    public final Boolean isUploadDateApproximation() {
        return this.isUploadDateApproximation;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setTextualUploadDate(String str) {
        this.textualUploadDate = str;
    }

    public final void setUid(long j) {
        this.uid = j;
    }

    public final void setUploadDate(OffsetDateTime offsetDateTime) {
        this.uploadDate = offsetDateTime;
    }

    public final void setUploadDateApproximation(Boolean bool) {
        this.isUploadDateApproximation = bool;
    }

    public final StreamInfoItem toStreamInfoItem() {
        DateWrapper dateWrapper;
        StreamInfoItem streamInfoItem = new StreamInfoItem(this.serviceId, this.url, this.title, this.streamType);
        streamInfoItem.setDuration(this.duration);
        streamInfoItem.setUploaderName(this.uploader);
        streamInfoItem.setUploaderUrl(this.uploaderUrl);
        streamInfoItem.setThumbnails(ImageStrategy.dbUrlToImageList(this.thumbnailUrl));
        Long l = this.viewCount;
        if (l != null) {
            l.getClass();
            streamInfoItem.setViewCount(l.longValue());
        }
        streamInfoItem.setTextualUploadDate(this.textualUploadDate);
        OffsetDateTime offsetDateTime = this.uploadDate;
        if (offsetDateTime != null) {
            Boolean bool = this.isUploadDateApproximation;
            dateWrapper = new DateWrapper(offsetDateTime.toInstant(), bool != null ? bool.booleanValue() : false);
        } else {
            dateWrapper = null;
        }
        streamInfoItem.setUploadDate(dateWrapper);
        return streamInfoItem;
    }

    public final String toString() {
        return "StreamEntity(uid=" + this.uid + ", serviceId=" + this.serviceId + ", url=" + this.url + ", title=" + this.title + ", streamType=" + this.streamType + ", duration=" + this.duration + ", uploader=" + this.uploader + ", uploaderUrl=" + this.uploaderUrl + ", thumbnailUrl=" + this.thumbnailUrl + ", viewCount=" + this.viewCount + ", textualUploadDate=" + this.textualUploadDate + ", uploadDate=" + this.uploadDate + ", isUploadDateApproximation=" + this.isUploadDateApproximation + ")";
    }

    public /* synthetic */ StreamEntity(int i, String str, String str2, StreamType streamType, long j, String str3, String str4, String str5, Long l, String str6, OffsetDateTime offsetDateTime, Boolean bool, int i2) {
        this(0L, i, str, str2, streamType, j, str3, str4, str5, (i2 & 512) != 0 ? null : l, (i2 & 1024) != 0 ? null : str6, (i2 & 2048) != 0 ? null : offsetDateTime, (i2 & 4096) != 0 ? null : bool);
    }

    public StreamEntity(long j, int i, String str, String str2, StreamType streamType, long j2, String str3, String str4, String str5, Long l, String str6, OffsetDateTime offsetDateTime, Boolean bool) {
        str.getClass();
        str2.getClass();
        streamType.getClass();
        str3.getClass();
        this.uid = j;
        this.serviceId = i;
        this.url = str;
        this.title = str2;
        this.streamType = streamType;
        this.duration = j2;
        this.uploader = str3;
        this.uploaderUrl = str4;
        this.thumbnailUrl = str5;
        this.viewCount = l;
        this.textualUploadDate = str6;
        this.uploadDate = offsetDateTime;
        this.isUploadDateApproximation = bool;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StreamEntity(org.schabi.newpipe.extractor.stream.StreamInfo r16) {
        /*
            r15 = this;
            r16.getClass()
            int r1 = r16.getServiceId()
            java.lang.String r2 = r16.getUrl()
            r2.getClass()
            java.lang.String r3 = r16.getName()
            r3.getClass()
            org.schabi.newpipe.extractor.stream.StreamType r4 = r16.getStreamType()
            r4.getClass()
            long r5 = r16.getDuration()
            java.lang.String r7 = r16.getUploaderName()
            r7.getClass()
            java.lang.String r8 = r16.getUploaderUrl()
            java.util.List r0 = r16.getThumbnails()
            r0.getClass()
            java.lang.String r9 = org.schabi.newpipe.util.image.ImageStrategy.imageListToDbUrl(r0)
            long r10 = r16.getViewCount()
            java.lang.Long r10 = java.lang.Long.valueOf(r10)
            java.lang.String r11 = r16.getTextualUploadDate()
            org.schabi.newpipe.extractor.localization.DateWrapper r0 = r16.getUploadDate()
            r12 = 0
            if (r0 == 0) goto L4e
            j$.time.OffsetDateTime r0 = r0.offsetDateTime()
            goto L4f
        L4e:
            r0 = r12
        L4f:
            org.schabi.newpipe.extractor.localization.DateWrapper r13 = r16.getUploadDate()
            if (r13 == 0) goto L5d
            boolean r12 = r13.isApproximation()
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r12)
        L5d:
            r13 = r12
            r14 = 1
            r12 = r0
            r0 = r15
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.database.stream.model.StreamEntity.<init>(org.schabi.newpipe.extractor.stream.StreamInfo):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StreamEntity(org.schabi.newpipe.player.playqueue.PlayQueueItem r16) {
        /*
            r15 = this;
            r16.getClass()
            int r1 = r16.getServiceId()
            java.lang.String r2 = r16.getUrl()
            r2.getClass()
            java.lang.String r3 = r16.getTitle()
            r3.getClass()
            org.schabi.newpipe.extractor.stream.StreamType r4 = r16.getStreamType()
            r4.getClass()
            long r5 = r16.getDuration()
            java.lang.String r7 = r16.getUploader()
            r7.getClass()
            java.lang.String r8 = r16.getUploaderUrl()
            java.util.List r0 = r16.getThumbnails()
            r0.getClass()
            java.lang.String r9 = org.schabi.newpipe.util.image.ImageStrategy.imageListToDbUrl(r0)
            r13 = 0
            r14 = 7681(0x1e01, float:1.0763E-41)
            r10 = 0
            r11 = 0
            r12 = 0
            r0 = r15
            r0.<init>(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.database.stream.model.StreamEntity.<init>(org.schabi.newpipe.player.playqueue.PlayQueueItem):void");
    }
}
