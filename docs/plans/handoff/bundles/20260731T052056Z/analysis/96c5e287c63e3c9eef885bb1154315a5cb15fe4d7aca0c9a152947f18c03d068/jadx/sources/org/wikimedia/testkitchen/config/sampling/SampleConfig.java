package org.wikimedia.testkitchen.config.sampling;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SampleConfig {
    public static final Companion Companion = new Companion();
    public final double rate;
    public final String unit;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SampleConfig$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SampleConfig(int i, double d, String str) {
        this.rate = (i & 1) == 0 ? 1.0d : d;
        if ((i & 2) == 0) {
            this.unit = "session";
        } else {
            this.unit = str;
        }
    }
}
