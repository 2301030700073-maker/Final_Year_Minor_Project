package androidx.compose.material3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.room.util.SchemaInfoUtilKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ PaddingValues f$7;
    public final /* synthetic */ Function f$9;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, DefaultFlingBehavior defaultFlingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Alignment.Horizontal horizontal, Arrangement$Vertical arrangement$Vertical, Function1 function1, int i, int i2) {
        this.f$1 = modifier;
        this.f$0 = lazyListState;
        this.f$7 = paddingValues;
        this.f$3 = defaultFlingBehavior;
        this.f$2 = z;
        this.f$4 = androidEdgeEffectOverscrollEffect;
        this.f$5 = horizontal;
        this.f$6 = arrangement$Vertical;
        this.f$9 = function1;
        this.f$10 = i;
        this.f$11 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Function function = this.f$9;
        Object obj3 = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.Button((Function0) obj7, this.f$1, this.f$2, (Shape) obj6, (ButtonColors) obj5, (ButtonElevation) obj4, (BorderStroke) obj3, this.f$7, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags, this.f$11);
                break;
            case 1:
                DefaultFlingBehavior defaultFlingBehavior = (DefaultFlingBehavior) obj4;
                AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = (AndroidEdgeEffectOverscrollEffect) obj3;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                int i3 = this.f$11;
                PaddingValues paddingValues = this.f$7;
                ActionBar.LazyColumn(updateChangedFlags2, i3, androidEdgeEffectOverscrollEffect, defaultFlingBehavior, (Arrangement$Vertical) obj6, paddingValues, (LazyListState) obj7, composer, (Alignment.Horizontal) obj5, this.f$1, (Function1) function, this.f$2);
                break;
            default:
                AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = (AndroidEdgeEffectOverscrollEffect) obj5;
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                int updateChangedFlags4 = Updater.updateChangedFlags(this.f$11);
                PaddingValues paddingValues2 = this.f$7;
                SchemaInfoUtilKt.LazyList(updateChangedFlags3, updateChangedFlags4, androidEdgeEffectOverscrollEffect2, (DefaultFlingBehavior) obj6, (Arrangement$Vertical) obj3, paddingValues2, (LazyListState) obj7, (Composer) obj, (Alignment.Horizontal) obj4, this.f$1, (Function1) function, this.f$2);
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, Alignment.Horizontal horizontal, DefaultFlingBehavior defaultFlingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, int i, int i2) {
        this.f$1 = modifier;
        this.f$0 = lazyListState;
        this.f$7 = paddingValues;
        this.f$3 = arrangement$Vertical;
        this.f$4 = horizontal;
        this.f$5 = defaultFlingBehavior;
        this.f$2 = z;
        this.f$6 = androidEdgeEffectOverscrollEffect;
        this.f$9 = function1;
        this.f$10 = i;
        this.f$11 = i2;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, BorderStroke borderStroke, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$5 = buttonElevation;
        this.f$6 = borderStroke;
        this.f$7 = paddingValues;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }
}
