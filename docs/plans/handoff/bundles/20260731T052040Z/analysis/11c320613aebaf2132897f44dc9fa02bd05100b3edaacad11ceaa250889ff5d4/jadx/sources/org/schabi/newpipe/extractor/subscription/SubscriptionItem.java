package org.schabi.newpipe.extractor.subscription;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionItem implements Serializable {
    private final String name;
    private final int serviceId;
    private final String url;

    public SubscriptionItem(String str, int i, String str2) {
        this.serviceId = i;
        this.url = str;
        this.name = str2;
    }

    public final String getName() {
        return this.name;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String toString() {
        return "SubscriptionItem@" + Integer.toHexString(hashCode()) + "[name=" + this.name + " > " + this.serviceId + ":" + this.url + "]";
    }
}
