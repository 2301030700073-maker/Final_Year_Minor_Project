package org.wikipedia.feed.wikigames;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikiGame$OnThisDayGame {
    public final OnThisDayCardGameState state;

    public WikiGame$OnThisDayGame(OnThisDayCardGameState onThisDayCardGameState) {
        onThisDayCardGameState.getClass();
        this.state = onThisDayCardGameState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WikiGame$OnThisDayGame) && Intrinsics.areEqual(this.state, ((WikiGame$OnThisDayGame) obj).state);
    }

    public final int hashCode() {
        return this.state.hashCode();
    }

    public final String toString() {
        return "OnThisDayGame(state=" + this.state + ")";
    }
}
