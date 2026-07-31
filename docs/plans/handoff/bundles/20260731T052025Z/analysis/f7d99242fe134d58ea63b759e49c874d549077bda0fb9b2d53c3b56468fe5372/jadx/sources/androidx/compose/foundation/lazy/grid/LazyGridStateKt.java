package androidx.compose.foundation.lazy.grid;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.work.Operation$State;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LazyGridStateKt {
    public static final LazyGridMeasureResult EmptyLazyGridLayoutInfo = new LazyGridMeasureResult(null, 0, false, 0.0f, new LazyGridStateKt$EmptyLazyGridLayoutInfo$1(), 0.0f, false, JobKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), Operation$State.Density$default(), 0, new ScrollState$$ExternalSyntheticLambda4(14), new ScrollState$$ExternalSyntheticLambda4(15), EmptyList.INSTANCE, 0, 0, 0, Orientation.Vertical, 0, 0);

    public static final LazyGridState rememberLazyGridState(Composer composer) {
        Object[] objArr = new Object[0];
        WeakCache weakCache = LazyGridState.Saver;
        boolean changed = ((GapComposer) composer).changed(0) | ((GapComposer) composer).changed(0);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(15);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (LazyGridState) SaverKt.rememberSaveable(objArr, weakCache, (Function0) rememberedValue, gapComposer, 0);
    }
}
