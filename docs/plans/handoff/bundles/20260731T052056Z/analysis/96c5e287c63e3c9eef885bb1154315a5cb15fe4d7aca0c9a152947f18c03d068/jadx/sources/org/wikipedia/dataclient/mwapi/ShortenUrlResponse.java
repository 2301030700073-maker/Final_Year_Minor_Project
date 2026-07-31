package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ShortenUrlResponse extends MwResponse {
    public final ShortenUrl shortenUrl;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(6)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ShortenUrlResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ShortenUrl {
        public static final Companion Companion = new Companion();
        public final String shortUrl;
        public final String shortUrlAlt;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ShortenUrlResponse$ShortenUrl$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ShortenUrl(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.shortUrl = null;
            } else {
                this.shortUrl = str;
            }
            if ((i & 2) == 0) {
                this.shortUrlAlt = null;
            } else {
                this.shortUrlAlt = str2;
            }
        }
    }

    public /* synthetic */ ShortenUrlResponse(int i, List list, String str, ShortenUrl shortenUrl) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.shortenUrl = null;
        } else {
            this.shortenUrl = shortenUrl;
        }
    }
}
