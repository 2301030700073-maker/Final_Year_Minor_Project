package androidx.paging;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CombinedLoadStates {
    public final LoadState append;
    public final LoadStates mediator;
    public final LoadState prepend;
    public final LoadState refresh;
    public final LoadStates source;

    public CombinedLoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadStates loadStates, LoadStates loadStates2) {
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        loadStates.getClass();
        this.refresh = loadState;
        this.prepend = loadState2;
        this.append = loadState3;
        this.source = loadStates;
        this.mediator = loadStates2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedLoadStates.class != obj.getClass()) {
            return false;
        }
        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
        return Intrinsics.areEqual(this.refresh, combinedLoadStates.refresh) && Intrinsics.areEqual(this.prepend, combinedLoadStates.prepend) && Intrinsics.areEqual(this.append, combinedLoadStates.append) && Intrinsics.areEqual(this.source, combinedLoadStates.source) && Intrinsics.areEqual(this.mediator, combinedLoadStates.mediator);
    }

    public final int hashCode() {
        int hashCode = (this.source.hashCode() + ((this.append.hashCode() + ((this.prepend.hashCode() + (this.refresh.hashCode() * 31)) * 31)) * 31)) * 31;
        LoadStates loadStates = this.mediator;
        return hashCode + (loadStates != null ? loadStates.hashCode() : 0);
    }

    public final String toString() {
        return "CombinedLoadStates(refresh=" + this.refresh + ", prepend=" + this.prepend + ", append=" + this.append + ", source=" + this.source + ", mediator=" + this.mediator + ')';
    }
}
