package androidx.compose.foundation.lazy;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyListStateKt {
    public static final LazyListMeasureResult EmptyLazyListMeasureResult = new LazyListMeasureResult(null, 0, false, RecyclerView.DECELERATION_RATE, new LazyListStateKt$EmptyLazyListMeasureResult$1(), RecyclerView.DECELERATION_RATE, false, AwaitKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), UuidKt.Density$default(), ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), EmptyList.INSTANCE, 0, 0, 0, Orientation.Vertical, 0, 0);

    public static final LazyListState rememberLazyListState(GapComposer gapComposer) {
        Object[] objArr = new Object[0];
        CardView.AnonymousClass1 anonymousClass1 = LazyListState.Saver;
        boolean changed = gapComposer.changed(0) | gapComposer.changed(0);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(10);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (LazyListState) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
    }
}
