package org.wikipedia.dataclient.restbase;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class EditCount {
    public static final Companion Companion = new Companion();
    public final int count;
    public final boolean limit;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return EditCount$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EditCount(int i, int i2, boolean z) {
        if ((i & 1) == 0) {
            this.count = 0;
        } else {
            this.count = i2;
        }
        if ((i & 2) == 0) {
            this.limit = false;
        } else {
            this.limit = z;
        }
    }
}
