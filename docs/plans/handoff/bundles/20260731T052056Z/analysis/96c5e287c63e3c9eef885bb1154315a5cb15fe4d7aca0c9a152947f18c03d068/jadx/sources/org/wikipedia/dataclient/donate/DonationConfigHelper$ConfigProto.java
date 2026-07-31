package org.wikipedia.dataclient.donate;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DonationConfigHelper$ConfigProto {
    public static final Companion Companion = new Companion();
    public final int version;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DonationConfigHelper$ConfigProto$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DonationConfigHelper$ConfigProto(int i, int i2) {
        if ((i & 1) == 0) {
            this.version = 0;
        } else {
            this.version = i2;
        }
    }
}
