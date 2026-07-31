package org.wikipedia.commons;

import java.util.Map;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilePage {
    public final boolean imageFromCommons;
    public final Map imageTags;
    public final MwQueryPage page;
    public final boolean showEditButton;
    public final boolean showFilename;
    public final int thumbnailHeight;
    public final int thumbnailWidth;

    public FilePage(int i, int i2, boolean z, boolean z2, boolean z3, MwQueryPage mwQueryPage, Map map) {
        mwQueryPage.getClass();
        map.getClass();
        this.thumbnailWidth = i;
        this.thumbnailHeight = i2;
        this.imageFromCommons = z;
        this.showEditButton = z2;
        this.showFilename = z3;
        this.page = mwQueryPage;
        this.imageTags = map;
    }
}
