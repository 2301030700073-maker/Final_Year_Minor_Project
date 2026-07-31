package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.work.Data;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyGridKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ LazyGridState f$1;
    public final /* synthetic */ Arrangement$Horizontal f$10;
    public final /* synthetic */ Function1 f$11;
    public final /* synthetic */ int f$12;
    public final /* synthetic */ int f$13;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ PaddingValues f$3;
    public final /* synthetic */ DefaultFlingBehavior f$6;
    public final /* synthetic */ boolean f$7;
    public final /* synthetic */ AndroidEdgeEffectOverscrollEffect f$8;
    public final /* synthetic */ Arrangement$Vertical f$9;

    public /* synthetic */ LazyGridKt$$ExternalSyntheticLambda0(GridCells$Adaptive gridCells$Adaptive, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, Arrangement$Horizontal arrangement$Horizontal, DefaultFlingBehavior defaultFlingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, int i, int i2) {
        this.f$2 = gridCells$Adaptive;
        this.f$0 = modifier;
        this.f$1 = lazyGridState;
        this.f$3 = paddingValues;
        this.f$9 = arrangement$Vertical;
        this.f$10 = arrangement$Horizontal;
        this.f$6 = defaultFlingBehavior;
        this.f$7 = z;
        this.f$8 = androidEdgeEffectOverscrollEffect;
        this.f$11 = function1;
        this.f$12 = i;
        this.f$13 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$12;
        Object obj3 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$13);
                MathKt.LazyGrid(this.f$0, this.f$1, (GridSlotCache) obj3, this.f$3, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, (Composer) obj, updateChangedFlags, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Data.Companion.LazyVerticalGrid((GridCells$Adaptive) obj3, this.f$0, this.f$1, this.f$3, this.f$9, this.f$10, this.f$6, this.f$7, this.f$8, this.f$11, (Composer) obj, updateChangedFlags3, this.f$13);
                break;
        }
        return unit;
    }

    public /* synthetic */ LazyGridKt$$ExternalSyntheticLambda0(Modifier modifier, LazyGridState lazyGridState, GridSlotCache gridSlotCache, PaddingValues paddingValues, DefaultFlingBehavior defaultFlingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Arrangement$Vertical arrangement$Vertical, Arrangement$Horizontal arrangement$Horizontal, Function1 function1, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = lazyGridState;
        this.f$2 = gridSlotCache;
        this.f$3 = paddingValues;
        this.f$6 = defaultFlingBehavior;
        this.f$7 = z;
        this.f$8 = androidEdgeEffectOverscrollEffect;
        this.f$9 = arrangement$Vertical;
        this.f$10 = arrangement$Horizontal;
        this.f$11 = function1;
        this.f$12 = i;
        this.f$13 = i2;
    }
}
