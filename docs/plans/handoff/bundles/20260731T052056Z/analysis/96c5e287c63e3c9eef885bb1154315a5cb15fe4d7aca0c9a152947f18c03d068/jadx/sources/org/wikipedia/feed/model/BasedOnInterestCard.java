package org.wikipedia.feed.model;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.feed.personalization.db.entity.InterestTopic;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class BasedOnInterestCard extends ForYouCard {
    public static final Companion Companion = new Companion();
    public final InterestArticle interestArticle;
    public final InterestTopic interestTopic;
    public final PageTitle title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return BasedOnInterestCard$$serializer.INSTANCE;
        }
    }

    public BasedOnInterestCard(int i, PageTitle pageTitle, InterestTopic interestTopic, InterestArticle interestArticle) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, BasedOnInterestCard$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.title = pageTitle;
        if ((i & 2) == 0) {
            this.interestTopic = null;
        } else {
            this.interestTopic = interestTopic;
        }
        if ((i & 4) == 0) {
            this.interestArticle = null;
        } else {
            this.interestArticle = interestArticle;
        }
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.title.hashCode();
    }

    public BasedOnInterestCard(PageTitle pageTitle, InterestTopic interestTopic, InterestArticle interestArticle, int i) {
        interestTopic = (i & 2) != 0 ? null : interestTopic;
        interestArticle = (i & 4) != 0 ? null : interestArticle;
        pageTitle.getClass();
        this.title = pageTitle;
        this.interestTopic = interestTopic;
        this.interestArticle = interestArticle;
    }
}
