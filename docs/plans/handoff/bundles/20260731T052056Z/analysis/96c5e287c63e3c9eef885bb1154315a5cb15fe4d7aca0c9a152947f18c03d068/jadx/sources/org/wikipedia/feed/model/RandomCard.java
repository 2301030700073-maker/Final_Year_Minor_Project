package org.wikipedia.feed.model;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RandomCard extends ForYouCard {
    public static final Companion Companion = new Companion();
    public final PageTitle title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RandomCard$$serializer.INSTANCE;
        }
    }

    public RandomCard(int i, PageTitle pageTitle) {
        if (1 == (i & 1)) {
            this.title = pageTitle;
        } else {
            TuplesKt.throwMissingFieldException(i, 1, RandomCard$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.title.hashCode();
    }

    public RandomCard(PageTitle pageTitle) {
        this.title = pageTitle;
    }
}
