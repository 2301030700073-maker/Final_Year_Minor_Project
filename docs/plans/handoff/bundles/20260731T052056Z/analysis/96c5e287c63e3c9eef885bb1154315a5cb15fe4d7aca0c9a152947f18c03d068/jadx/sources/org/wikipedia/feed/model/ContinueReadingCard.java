package org.wikipedia.feed.model;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ContinueReadingCard extends ForYouCard {
    public static final Companion Companion = new Companion();
    public final int source;
    public final PageTitle title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ContinueReadingCard$$serializer.INSTANCE;
        }
    }

    public ContinueReadingCard(int i, PageTitle pageTitle, int i2) {
        if (3 != (i & 3)) {
            TuplesKt.throwMissingFieldException(i, 3, ContinueReadingCard$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.title = pageTitle;
        this.source = i2;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.title.hashCode();
    }

    public ContinueReadingCard(int i, PageTitle pageTitle) {
        this.title = pageTitle;
        this.source = i;
    }
}
