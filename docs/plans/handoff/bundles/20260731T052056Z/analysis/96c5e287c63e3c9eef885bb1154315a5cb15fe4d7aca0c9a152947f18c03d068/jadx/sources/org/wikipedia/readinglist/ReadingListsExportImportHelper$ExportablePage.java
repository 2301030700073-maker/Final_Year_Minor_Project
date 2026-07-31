package org.wikipedia.readinglist;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ReadingListsExportImportHelper$ExportablePage {
    public static final Companion Companion = new Companion();
    public final String lang;
    public final int ns;
    public final String title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ReadingListsExportImportHelper$ExportablePage$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListsExportImportHelper$ExportablePage(int i, int i2, String str, String str2) {
        if ((i & 1) == 0) {
            this.title = "";
        } else {
            this.title = str;
        }
        if ((i & 2) == 0) {
            this.lang = "";
        } else {
            this.lang = str2;
        }
        if ((i & 4) == 0) {
            this.ns = 0;
        } else {
            this.ns = i2;
        }
    }

    public ReadingListsExportImportHelper$ExportablePage(String str, String str2, int i) {
        str.getClass();
        str2.getClass();
        this.title = str;
        this.lang = str2;
        this.ns = i;
    }
}
