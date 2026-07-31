package org.wikipedia.feed.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Card {
    public int dismissHashCode() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Card) && Intrinsics.areEqual(getHideKey(), ((Card) obj).getHideKey());
    }

    public final String getHideKey() {
        return String.valueOf(dismissHashCode());
    }

    public final int hashCode() {
        return 0;
    }

    public String moduleKey() {
        return "";
    }
}
