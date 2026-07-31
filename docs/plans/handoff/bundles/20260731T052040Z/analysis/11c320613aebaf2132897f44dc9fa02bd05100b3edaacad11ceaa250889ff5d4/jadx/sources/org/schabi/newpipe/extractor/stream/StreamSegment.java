package org.schabi.newpipe.extractor.stream;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamSegment implements Serializable {
    private String channelName;
    private String previewUrl = null;
    private int startTimeSeconds;
    private String title;
    public String url;

    public StreamSegment(String str, int i) {
        this.title = str;
        this.startTimeSeconds = i;
    }

    public final String getChannelName() {
        return this.channelName;
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final int getStartTimeSeconds() {
        return this.startTimeSeconds;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setChannelName(String str) {
        this.channelName = str;
    }

    public final void setPreviewUrl(String str) {
        this.previewUrl = str;
    }
}
