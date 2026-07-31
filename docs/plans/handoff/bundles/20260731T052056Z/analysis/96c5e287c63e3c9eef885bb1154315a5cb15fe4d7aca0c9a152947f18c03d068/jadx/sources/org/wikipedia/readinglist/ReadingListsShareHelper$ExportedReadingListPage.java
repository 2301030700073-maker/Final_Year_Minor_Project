package org.wikipedia.readinglist;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ReadingListsShareHelper$ExportedReadingListPage {
    public static final Companion Companion = new Companion();
    public final String description;
    public final String lang;
    public final int ns;
    public final String thumbUrl;
    public final String title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ReadingListsShareHelper$ExportedReadingListPage$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListsShareHelper$ExportedReadingListPage(int i, int i2, String str, String str2, String str3, String str4) {
        if (7 != (i & 7)) {
            TuplesKt.throwMissingFieldException(i, 7, ReadingListsShareHelper$ExportedReadingListPage$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.lang = str;
        this.title = str2;
        this.ns = i2;
        if ((i & 8) == 0) {
            this.description = null;
        } else {
            this.description = str3;
        }
        if ((i & 16) == 0) {
            this.thumbUrl = null;
        } else {
            this.thumbUrl = str4;
        }
    }
}
