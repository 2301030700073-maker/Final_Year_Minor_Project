package org.wikipedia.settings;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$TopReadPercentage {
    public static final Companion Companion = new Companion();
    public final String identifier;
    public final int max;
    public final int min;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$TopReadPercentage$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RemoteConfig$TopReadPercentage(int i, int i2, int i3, String str) {
        this.identifier = (i & 1) == 0 ? "" : str;
        this.min = (i & 2) == 0 ? 0 : i2;
        if ((i & 4) == 0) {
            this.max = Integer.MAX_VALUE;
        } else {
            this.max = i3;
        }
    }
}
