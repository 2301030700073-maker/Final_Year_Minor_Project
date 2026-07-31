package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.navigation3.runtime.NavEntry$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonParser;
import kotlin.jvm.internal.Intrinsics;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListItemProviderImpl implements LazyLayoutItemProvider {
    public final LazyListIntervalContent intervalContent;
    public final LazyItemScopeImpl itemScope;
    public final JsonParser keyIndexMap;
    public final LazyListState state;

    public LazyListItemProviderImpl(LazyListState lazyListState, LazyListIntervalContent lazyListIntervalContent, LazyItemScopeImpl lazyItemScopeImpl, JsonParser jsonParser) {
        this.state = lazyListState;
        this.intervalContent = lazyListIntervalContent;
        this.itemScope = lazyItemScopeImpl;
        this.keyIndexMap = jsonParser;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void Item(int i, int i2, Composer composer, Object obj) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-462424778);
        int i3 = (gapComposer.changed(i) ? 4 : 2) | i2 | (gapComposer.changedInstance(obj) ? 32 : 16) | (gapComposer.changed(this) ? 256 : 128);
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            LazyLayoutKt.LazyLayoutPinnableItem(obj, i, this.state.pinnedItems, Expect_jvmKt.rememberComposableLambda(-824725566, new NavEntry$$ExternalSyntheticLambda0(this, i, i4), gapComposer), gapComposer, ((i3 >> 3) & 14) | 3072 | ((i3 << 3) & Token.ASSIGN_MOD));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Transition$$ExternalSyntheticLambda2(this, i, obj, i2, 1);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyListItemProviderImpl)) {
            return false;
        }
        return Intrinsics.areEqual(this.intervalContent, ((LazyListItemProviderImpl) obj).intervalContent);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object getContentType(int i) {
        IntervalList$Interval intervalList$Interval = this.intervalContent.intervals.get(i);
        return intervalList$Interval.value.getType().invoke(Integer.valueOf(i - intervalList$Interval.startIndex));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int getIndex(Object obj) {
        return this.keyIndexMap.getIndex(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int getItemCount() {
        return this.intervalContent.getIntervals().token;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object getKey(int i) {
        JsonParser jsonParser = this.keyIndexMap;
        Object[] objArr = (Object[]) jsonParser.tokener;
        int i2 = i - jsonParser.token;
        Object obj = (i2 < 0 || i2 >= objArr.length) ? null : objArr[i2];
        return obj == null ? this.intervalContent.getKey(i) : obj;
    }

    public final int hashCode() {
        return this.intervalContent.hashCode();
    }
}
