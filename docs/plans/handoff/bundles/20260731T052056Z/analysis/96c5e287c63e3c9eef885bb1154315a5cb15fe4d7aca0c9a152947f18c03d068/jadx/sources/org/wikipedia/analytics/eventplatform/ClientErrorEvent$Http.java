package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ClientErrorEvent$Http {
    public static final Companion Companion = new Companion();
    public final String method;
    public final String protocol;
    public final Integer statusCode;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ClientErrorEvent$Http$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ClientErrorEvent$Http(int i, String str, String str2, Integer num) {
        if ((i & 1) == 0) {
            this.method = null;
        } else {
            this.method = str;
        }
        if ((i & 2) == 0) {
            this.protocol = null;
        } else {
            this.protocol = str2;
        }
        if ((i & 4) == 0) {
            this.statusCode = null;
        } else {
            this.statusCode = num;
        }
    }

    public ClientErrorEvent$Http(String str, String str2, Integer num) {
        this.method = str;
        this.protocol = str2;
        this.statusCode = num;
    }
}
