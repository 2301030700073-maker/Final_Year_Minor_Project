package org.wikipedia.dataclient.liftwing;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DescriptionSuggestion$Response {
    public final boolean blp;
    public final List prediction;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(23)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DescriptionSuggestion$Response$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DescriptionSuggestion$Response(int i, List list, boolean z) {
        this.prediction = (i & 1) == 0 ? EmptyList.INSTANCE : list;
        if ((i & 2) == 0) {
            this.blp = false;
        } else {
            this.blp = z;
        }
    }
}
