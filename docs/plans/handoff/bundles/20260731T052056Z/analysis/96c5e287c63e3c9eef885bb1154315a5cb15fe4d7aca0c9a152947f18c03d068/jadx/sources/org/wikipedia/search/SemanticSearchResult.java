package org.wikipedia.search;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SemanticSearchResult {
    public static final Companion Companion = new Companion();
    public final String sectionHeader;
    public final int sectionIndex;
    public final String sectionText;
    public final String title;
    public final String url;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SemanticSearchResult$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SemanticSearchResult(int i, int i2, String str, String str2, String str3, String str4) {
        if ((i & 1) == 0) {
            this.title = "";
        } else {
            this.title = str;
        }
        if ((i & 2) == 0) {
            this.sectionHeader = "";
        } else {
            this.sectionHeader = str2;
        }
        this.sectionIndex = (i & 4) == 0 ? 0 : i2;
        if ((i & 8) == 0) {
            this.sectionText = "";
        } else {
            this.sectionText = str3;
        }
        if ((i & 16) == 0) {
            this.url = "";
        } else {
            this.url = str4;
        }
    }
}
