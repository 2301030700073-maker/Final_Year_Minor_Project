package org.schabi.newpipe.extractor.linkhandler;

import java.io.Serializable;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LinkHandler implements Serializable {
    protected final String id;
    protected final String originalUrl;
    protected final String url;

    public LinkHandler(String str, String str2, String str3) {
        this.originalUrl = str;
        this.url = str2;
        this.id = str3;
    }

    public final String getBaseUrl() {
        return Utils.getBaseUrl(this.url);
    }

    public final String getId() {
        return this.id;
    }

    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public final String getUrl() {
        return this.url;
    }
}
