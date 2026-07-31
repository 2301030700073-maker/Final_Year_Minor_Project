package org.wikipedia.dataclient.restbase;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PreviewRequest {
    public static final Companion Companion = new Companion();
    public final String wikitext;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PreviewRequest$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PreviewRequest(int i, String str) {
        if (1 == (i & 1)) {
            this.wikitext = str;
        } else {
            TuplesKt.throwMissingFieldException(i, 1, PreviewRequest$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
    }

    public PreviewRequest(String str) {
        str.getClass();
        this.wikitext = str;
    }
}
