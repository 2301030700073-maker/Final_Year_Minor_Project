package org.wikipedia.dataclient.restbase;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Revision {
    public static final Companion Companion = new Companion();
    public final Integer delta;
    public final long id;
    public final int size;
    public final String source;
    public final String timestamp;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Revision$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Revision(int i, long j, int i2, String str, Integer num, String str2) {
        this.id = (i & 1) == 0 ? 0L : j;
        if ((i & 2) == 0) {
            this.size = 0;
        } else {
            this.size = i2;
        }
        if ((i & 4) == 0) {
            this.timestamp = "";
        } else {
            this.timestamp = str;
        }
        if ((i & 8) == 0) {
            this.delta = null;
        } else {
            this.delta = num;
        }
        if ((i & 16) == 0) {
            this.source = "";
        } else {
            this.source = str2;
        }
    }

    public Revision() {
        this.timestamp = "";
        this.source = "";
    }
}
