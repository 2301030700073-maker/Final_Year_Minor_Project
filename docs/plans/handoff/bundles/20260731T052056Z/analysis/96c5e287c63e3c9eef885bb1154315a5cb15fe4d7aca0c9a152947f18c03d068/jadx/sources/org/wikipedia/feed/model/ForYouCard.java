package org.wikipedia.feed.model;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class ForYouCard extends Card {
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(28));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) ForYouCard.$cachedSerializer$delegate.getValue();
        }
    }
}
