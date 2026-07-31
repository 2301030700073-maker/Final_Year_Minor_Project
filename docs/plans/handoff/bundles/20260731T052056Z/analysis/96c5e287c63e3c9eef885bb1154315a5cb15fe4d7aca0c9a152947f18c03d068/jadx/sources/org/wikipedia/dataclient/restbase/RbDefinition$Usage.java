package org.wikipedia.dataclient.restbase;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RbDefinition$Usage {
    public final List definitions;
    public final String partOfSpeech;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(25))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RbDefinition$Usage$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RbDefinition$Usage(int i, String str, List list) {
        if (2 != (i & 2)) {
            TuplesKt.throwMissingFieldException(i, 2, RbDefinition$Usage$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        if ((i & 1) == 0) {
            this.partOfSpeech = "";
        } else {
            this.partOfSpeech = str;
        }
        this.definitions = list;
    }
}
