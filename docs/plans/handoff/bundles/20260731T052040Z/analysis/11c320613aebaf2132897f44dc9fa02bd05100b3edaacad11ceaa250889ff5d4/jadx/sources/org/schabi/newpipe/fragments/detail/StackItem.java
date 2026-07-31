package org.schabi.newpipe.fragments.detail;

import java.io.Serializable;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StackItem implements Serializable {
    private PlayQueue playQueue;
    private final int serviceId;
    private String title;
    private String url;

    public StackItem(int i, String str, String str2, PlayQueue playQueue) {
        this.serviceId = i;
        this.url = str;
        this.title = str2;
        this.playQueue = playQueue;
    }

    public final PlayQueue getPlayQueue() {
        return this.playQueue;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setPlayQueue(PlayQueue playQueue) {
        this.playQueue = playQueue;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final String toString() {
        return this.serviceId + ":" + this.url + " > " + this.title;
    }
}
