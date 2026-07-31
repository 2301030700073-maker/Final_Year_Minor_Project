package org.schabi.newpipe.extractor.services.youtube.extractors;

import java.io.Serializable;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ItagInfo implements Serializable {
    private final String content;
    private boolean isUrl;
    private final ItagItem itagItem;

    public ItagInfo(String str, ItagItem itagItem) {
        this.content = str;
        this.itagItem = itagItem;
    }

    public final String getContent() {
        return this.content;
    }

    public final boolean getIsUrl() {
        return this.isUrl;
    }

    public final ItagItem getItagItem() {
        return this.itagItem;
    }

    public final void setIsUrl(boolean z) {
        this.isUrl = z;
    }
}
