package org.wikipedia.feed;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TabsState {
    public final int count;
    public final boolean pulse;

    public TabsState(int i, boolean z) {
        this.count = i;
        this.pulse = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabsState)) {
            return false;
        }
        TabsState tabsState = (TabsState) obj;
        return this.count == tabsState.count && this.pulse == tabsState.pulse;
    }

    public final int hashCode() {
        return (this.count * 31) + (this.pulse ? 1231 : 1237);
    }

    public final String toString() {
        return "TabsState(count=" + this.count + ", pulse=" + this.pulse + ")";
    }
}
