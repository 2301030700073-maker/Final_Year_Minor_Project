package org.wikipedia.dataclient.liftwing;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DescriptionSuggestion$Request {
    public static final Companion Companion = new Companion();
    public final int count;
    public final String lang;
    public final String title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DescriptionSuggestion$Request$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DescriptionSuggestion$Request(int i, int i2, String str, String str2) {
        if (3 != (i & 3)) {
            TuplesKt.throwMissingFieldException(i, 3, DescriptionSuggestion$Request$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.lang = str;
        this.title = str2;
        if ((i & 4) == 0) {
            this.count = 1;
        } else {
            this.count = i2;
        }
    }

    public DescriptionSuggestion$Request(String str, String str2) {
        str.getClass();
        this.lang = str;
        this.title = str2;
        this.count = 2;
    }
}
