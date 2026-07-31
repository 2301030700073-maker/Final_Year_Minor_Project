package androidx.compose.material3;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.sqlite.SQLite;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda11 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$10;
    public final /* synthetic */ Object f$14;
    public final /* synthetic */ Object f$15;
    public final /* synthetic */ Object f$16;
    public final /* synthetic */ PaddingValues f$17;
    public final /* synthetic */ int f$18;
    public final /* synthetic */ int f$19;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ boolean f$7;
    public final /* synthetic */ Function1 f$9;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda11(ComposableLambdaImpl composableLambdaImpl, Alignment.Vertical vertical, boolean z, Function1 function1, Function0 function0, ListItemColors listItemColors, ListItemShapes listItemShapes, ListItemElevation listItemElevation, PaddingValues paddingValues, int i, int i2) {
        this.f$1 = composableLambdaImpl;
        this.f$6 = vertical;
        this.f$7 = z;
        this.f$9 = function1;
        this.f$10 = function0;
        this.f$14 = listItemColors;
        this.f$15 = listItemShapes;
        this.f$16 = listItemElevation;
        this.f$17 = paddingValues;
        this.f$18 = i;
        this.f$19 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$19;
        Unit unit = Unit.INSTANCE;
        int i3 = this.f$18;
        Object obj3 = this.f$16;
        Object obj4 = this.f$15;
        Object obj5 = this.f$14;
        Object obj6 = this.f$10;
        Object obj7 = this.f$6;
        Object obj8 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i3 | 1);
                int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                ListItemKt.InteractiveListItem((ComposableLambdaImpl) obj8, (Alignment.Vertical) obj7, this.f$7, this.f$9, (Function0) obj6, (ListItemColors) obj5, (ListItemShapes) obj4, (ListItemElevation) obj3, this.f$17, (Composer) obj, updateChangedFlags, updateChangedFlags2);
                break;
            case 1:
                Arrangement$Vertical arrangement$Vertical = (Arrangement$Vertical) obj6;
                FlingBehavior flingBehavior = (FlingBehavior) obj4;
                AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = (AndroidEdgeEffectOverscrollEffect) obj3;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i3 | 1);
                int i4 = this.f$19;
                PaddingValues paddingValues = this.f$17;
                SQLite.LazyColumn(updateChangedFlags3, i4, androidEdgeEffectOverscrollEffect, flingBehavior, arrangement$Vertical, paddingValues, (LazyListState) obj7, composer, (BiasAlignment.Horizontal) obj5, (Modifier) obj8, this.f$9, this.f$7);
                break;
            default:
                FlingBehavior flingBehavior2 = (FlingBehavior) obj6;
                AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = (AndroidEdgeEffectOverscrollEffect) obj5;
                Arrangement$Vertical arrangement$Vertical2 = (Arrangement$Vertical) obj3;
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i3 | 1);
                int updateChangedFlags5 = Updater.updateChangedFlags(i2);
                PaddingValues paddingValues2 = this.f$17;
                CharsKt.LazyList(updateChangedFlags4, updateChangedFlags5, androidEdgeEffectOverscrollEffect2, flingBehavior2, arrangement$Vertical2, paddingValues2, (LazyListState) obj7, composer2, (BiasAlignment.Horizontal) obj4, (Modifier) obj8, this.f$9, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda11(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, FlingBehavior flingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, BiasAlignment.Horizontal horizontal, Arrangement$Vertical arrangement$Vertical, Function1 function1, int i, int i2) {
        this.f$1 = modifier;
        this.f$6 = lazyListState;
        this.f$17 = paddingValues;
        this.f$10 = flingBehavior;
        this.f$7 = z;
        this.f$14 = androidEdgeEffectOverscrollEffect;
        this.f$15 = horizontal;
        this.f$16 = arrangement$Vertical;
        this.f$9 = function1;
        this.f$18 = i;
        this.f$19 = i2;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda11(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, BiasAlignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, int i, int i2) {
        this.f$1 = modifier;
        this.f$6 = lazyListState;
        this.f$17 = paddingValues;
        this.f$10 = arrangement$Vertical;
        this.f$14 = horizontal;
        this.f$15 = flingBehavior;
        this.f$7 = z;
        this.f$16 = androidEdgeEffectOverscrollEffect;
        this.f$9 = function1;
        this.f$18 = i;
        this.f$19 = i2;
    }
}
