package org.wikipedia.dataclient.restbase;

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
public final class RbDefinition$Definition {
    public final String definition;
    public final List examples;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(24))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RbDefinition$Definition$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RbDefinition$Definition(int i, String str, List list) {
        this.definition = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.examples = null;
        } else {
            this.examples = list;
        }
    }
}
