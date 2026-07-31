package androidx.paging;

import androidx.paging.LoadState;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoadStates {
    public static final LoadStates IDLE;
    public final LoadState append;
    public final LoadState prepend;
    public final LoadState refresh;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.APPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        LoadState.NotLoading notLoading = LoadState.NotLoading.Incomplete;
        IDLE = new LoadStates(notLoading, notLoading, notLoading);
    }

    public LoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3) {
        this.refresh = loadState;
        this.prepend = loadState2;
        this.append = loadState3;
    }

    public static LoadStates copy$default(LoadStates loadStates, int i) {
        int i2 = i & 1;
        LoadState loadState = LoadState.NotLoading.Incomplete;
        LoadState loadState2 = i2 != 0 ? loadStates.refresh : loadState;
        LoadState loadState3 = (i & 2) != 0 ? loadStates.prepend : loadState;
        if ((i & 4) != 0) {
            loadState = loadStates.append;
        }
        return new LoadStates(loadState2, loadState3, loadState);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadStates)) {
            return false;
        }
        LoadStates loadStates = (LoadStates) obj;
        return this.refresh.equals(loadStates.refresh) && this.prepend.equals(loadStates.prepend) && this.append.equals(loadStates.append);
    }

    public final int hashCode() {
        return this.append.hashCode() + ((this.prepend.hashCode() + (this.refresh.hashCode() * 31)) * 31);
    }

    public final LoadStates modifyState$paging_common(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return copy$default(this, 3);
        }
        if (i == 2) {
            return copy$default(this, 5);
        }
        if (i == 3) {
            return copy$default(this, 6);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public final String toString() {
        return "LoadStates(refresh=" + this.refresh + ", prepend=" + this.prepend + ", append=" + this.append + ')';
    }
}
