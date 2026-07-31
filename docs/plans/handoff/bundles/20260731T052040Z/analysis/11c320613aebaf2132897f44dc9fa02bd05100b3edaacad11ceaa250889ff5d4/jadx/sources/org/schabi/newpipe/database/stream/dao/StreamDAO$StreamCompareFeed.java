package org.schabi.newpipe.database.stream.dao;

import androidx.compose.ui.Modifier;
import j$.time.OffsetDateTime;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamDAO$StreamCompareFeed {
    public long duration;
    public Boolean isUploadDateApproximation;
    public StreamType streamType;
    public String textualUploadDate;
    public long uid;
    public OffsetDateTime uploadDate;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamDAO$StreamCompareFeed)) {
            return false;
        }
        StreamDAO$StreamCompareFeed streamDAO$StreamCompareFeed = (StreamDAO$StreamCompareFeed) obj;
        return this.uid == streamDAO$StreamCompareFeed.uid && this.streamType == streamDAO$StreamCompareFeed.streamType && Intrinsics.areEqual(this.textualUploadDate, streamDAO$StreamCompareFeed.textualUploadDate) && Intrinsics.areEqual(this.uploadDate, streamDAO$StreamCompareFeed.uploadDate) && Intrinsics.areEqual(this.isUploadDateApproximation, streamDAO$StreamCompareFeed.isUploadDateApproximation) && this.duration == streamDAO$StreamCompareFeed.duration;
    }

    public final int hashCode() {
        long j = this.uid;
        int hashCode = (this.streamType.hashCode() + (((int) (j ^ (j >>> 32))) * 31)) * 31;
        String str = this.textualUploadDate;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        OffsetDateTime offsetDateTime = this.uploadDate;
        int hashCode3 = (hashCode2 + (offsetDateTime == null ? 0 : offsetDateTime.hashCode())) * 31;
        Boolean bool = this.isUploadDateApproximation;
        int hashCode4 = (hashCode3 + (bool != null ? bool.hashCode() : 0)) * 31;
        long j2 = this.duration;
        return hashCode4 + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        long j = this.uid;
        StreamType streamType = this.streamType;
        String str = this.textualUploadDate;
        OffsetDateTime offsetDateTime = this.uploadDate;
        Boolean bool = this.isUploadDateApproximation;
        long j2 = this.duration;
        StringBuilder sb = new StringBuilder("StreamCompareFeed(uid=");
        sb.append(j);
        sb.append(", streamType=");
        sb.append(streamType);
        sb.append(", textualUploadDate=");
        sb.append(str);
        sb.append(", uploadDate=");
        sb.append(offsetDateTime);
        sb.append(", isUploadDateApproximation=");
        sb.append(bool);
        sb.append(", duration=");
        return Modifier.CC.m(j2, ")", sb);
    }
}
