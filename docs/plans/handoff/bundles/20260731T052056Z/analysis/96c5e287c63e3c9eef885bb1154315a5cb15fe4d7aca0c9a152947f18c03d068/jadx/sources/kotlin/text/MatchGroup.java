package kotlin.text;

import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MatchGroup {
    public final IntRange range;
    public final String value;

    public MatchGroup(String str, IntRange intRange) {
        this.value = str;
        this.range = intRange;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MatchGroup)) {
            return false;
        }
        MatchGroup matchGroup = (MatchGroup) obj;
        return this.value.equals(matchGroup.value) && this.range.equals(matchGroup.range);
    }

    public final int hashCode() {
        return this.range.hashCode() + (this.value.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.value + ", range=" + this.range + ')';
    }
}
