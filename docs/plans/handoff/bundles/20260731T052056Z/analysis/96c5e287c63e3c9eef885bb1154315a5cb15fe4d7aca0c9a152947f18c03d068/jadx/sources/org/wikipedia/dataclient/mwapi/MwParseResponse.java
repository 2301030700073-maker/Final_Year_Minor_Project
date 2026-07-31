package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwParseResponse extends MwResponse {
    public final Parse parse;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(28)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwParseResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Parse {
        public static final Companion Companion = new Companion();
        public final String text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwParseResponse$Parse$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Parse(int i, String str) {
            if ((i & 1) == 0) {
                this.text = null;
            } else {
                this.text = str;
            }
        }
    }

    public /* synthetic */ MwParseResponse(int i, List list, String str, Parse parse) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.parse = null;
        } else {
            this.parse = parse;
        }
    }

    public final String getText() {
        Parse parse = this.parse;
        String str = parse != null ? parse.text : null;
        return str == null ? "" : str;
    }
}
