package org.wikipedia.feed.model;

import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.games.WikiGames;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikiGameCard extends ForYouCard {
    public final String date;
    public final WikiGame$OnThisDayGame wikiGame;

    public WikiGameCard(WikiGame$OnThisDayGame wikiGame$OnThisDayGame, String str) {
        this.wikiGame = wikiGame$OnThisDayGame;
        this.date = str;
    }

    @Override // org.wikipedia.feed.model.Card
    public final int dismissHashCode() {
        return this.date.hashCode() + WikiGames.WHICH_CAME_FIRST.name().hashCode();
    }
}
