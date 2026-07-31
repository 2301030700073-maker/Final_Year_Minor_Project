package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridItemProviderImpl implements LazyLayoutItemProvider {
    public final LazyGridIntervalContent intervalContent;
    public final StatusLine keyIndexMap;
    public final LazyGridState state;

    public LazyGridItemProviderImpl(LazyGridState lazyGridState, LazyGridIntervalContent lazyGridIntervalContent, StatusLine statusLine) {
        this.state = lazyGridState;
        this.intervalContent = lazyGridIntervalContent;
        this.keyIndexMap = statusLine;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void Item(int i, Object obj, GapComposer gapComposer, int i2) {
        gapComposer.startRestartGroup(1493551140);
        int i3 = 2;
        int i4 = (gapComposer.changed(i) ? 4 : 2) | i2 | (gapComposer.changedInstance(obj) ? 32 : 16) | (gapComposer.changed(this) ? 256 : 128);
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
            LazyLayoutKt.LazyLayoutPinnableItem(obj, i, this.state.pinnedItems, Expect_jvmKt.rememberComposableLambda(726189336, new ImpactModuleKt$$ExternalSyntheticLambda3(i, i3, this), gapComposer), gapComposer, ((i4 >> 3) & 14) | 3072 | ((i4 << 3) & 112));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(this, i, obj, i2, 4);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyGridItemProviderImpl)) {
            return false;
        }
        return Intrinsics.areEqual(this.intervalContent, ((LazyGridItemProviderImpl) obj).intervalContent);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object getContentType(int i) {
        return this.intervalContent.getContentType(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int getIndex(Object obj) {
        return this.keyIndexMap.getIndex(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int getItemCount() {
        return this.intervalContent.getIntervals().code;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object getKey(int i) {
        Object key = this.keyIndexMap.getKey(i);
        return key == null ? this.intervalContent.getKey(i) : key;
    }

    public final int hashCode() {
        return this.intervalContent.hashCode();
    }
}
