package org.schabi.newpipe.extractor.channel;

import org.schabi.newpipe.extractor.InfoItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChannelInfoItem extends InfoItem {
    private String description;
    private long streamCount;
    private long subscriberCount;
    private boolean verified;

    public ChannelInfoItem(String str, int i, String str2) {
        super(InfoItem.InfoType.CHANNEL, i, str, str2);
        this.subscriberCount = -1L;
        this.streamCount = -1L;
        this.verified = false;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getStreamCount() {
        return this.streamCount;
    }

    public final long getSubscriberCount() {
        return this.subscriberCount;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setStreamCount(long j) {
        this.streamCount = j;
    }

    public final void setSubscriberCount(long j) {
        this.subscriberCount = j;
    }

    public final void setVerified(boolean z) {
        this.verified = z;
    }
}
