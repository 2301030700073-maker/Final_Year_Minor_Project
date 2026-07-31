package org.wikipedia.readinglist.recommended;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SourceWithOffset {
    public static final Companion Companion = new Companion();
    public final String language;
    public int offset;
    public final String title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SourceWithOffset$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SourceWithOffset(int i, int i2, String str, String str2) {
        if (7 != (i & 7)) {
            TuplesKt.throwMissingFieldException(i, 7, SourceWithOffset$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.title = str;
        this.language = str2;
        this.offset = i2;
    }

    public SourceWithOffset(String str, String str2, int i) {
        str2.getClass();
        this.title = str;
        this.language = str2;
        this.offset = i;
    }
}
