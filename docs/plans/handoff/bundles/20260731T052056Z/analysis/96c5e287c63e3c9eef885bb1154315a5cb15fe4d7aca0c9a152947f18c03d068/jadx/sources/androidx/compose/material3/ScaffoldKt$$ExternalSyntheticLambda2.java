package androidx.compose.material3;

import androidx.compose.foundation.layout.InsetsPaddingValues;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.NavOptions;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ Function f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Function f$7;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(WindowInsets windowInsets, Function2 function2, Function2 function22, Function2 function23, int i, Function2 function24, ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1, Function2 function25) {
        this.f$0 = windowInsets;
        this.f$1 = function2;
        this.f$2 = function22;
        this.f$3 = function23;
        this.f$4 = i;
        this.f$5 = function24;
        this.f$6 = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
        this.f$7 = function25;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Placeable placeable;
        int mo81roundToPx0680j_4;
        int mo81roundToPx0680j_42;
        int i;
        NavOptions.Builder builder;
        Integer num;
        int intValue;
        int mo81roundToPx0680j_43;
        int bottom;
        int i2 = this.$r8$classId;
        int i3 = this.f$4;
        Object obj3 = this.f$6;
        Function function = this.f$7;
        Function function2 = this.f$5;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i2) {
            case 0:
                final WindowInsets windowInsets = (WindowInsets) obj7;
                Function2 function22 = (Function2) function2;
                ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj3;
                Function2 function23 = (Function2) function;
                final SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                final int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(constraints.value);
                final int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(constraints.value);
                long m674copyZbe2FdA$default = Constraints.m674copyZbe2FdA$default(constraints.value, 0, 0, 0, 0, 10);
                int left = windowInsets.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int right = windowInsets.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int bottom2 = windowInsets.getBottom(subcomposeMeasureScope);
                final Placeable mo512measureBRTryo0 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.TopBar, (Function2) obj6))).mo512measureBRTryo0(m674copyZbe2FdA$default);
                int i4 = (-left) - right;
                int i5 = -bottom2;
                final Placeable mo512measureBRTryo02 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Snackbar, (Function2) obj5))).mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(i4, i5, m674copyZbe2FdA$default));
                Placeable mo512measureBRTryo03 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Fab, (Function2) obj4))).mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(i4, i5, m674copyZbe2FdA$default));
                int i6 = mo512measureBRTryo03.width;
                if (i6 == 0 && mo512measureBRTryo03.height == 0) {
                    placeable = mo512measureBRTryo03;
                    builder = null;
                } else {
                    int i7 = mo512measureBRTryo03.height;
                    if (i3 == 0) {
                        placeable = mo512measureBRTryo03;
                        if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                            mo81roundToPx0680j_4 = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f);
                            i = mo81roundToPx0680j_4 + left;
                        } else {
                            mo81roundToPx0680j_42 = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f);
                            i = ((m681getMaxWidthimpl - mo81roundToPx0680j_42) - i6) - right;
                        }
                    } else {
                        placeable = mo512measureBRTryo03;
                        if (i3 != 2 && i3 != 3) {
                            i = (((m681getMaxWidthimpl - i6) + left) - right) / 2;
                        } else if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                            mo81roundToPx0680j_42 = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f);
                            i = ((m681getMaxWidthimpl - mo81roundToPx0680j_42) - i6) - right;
                        } else {
                            mo81roundToPx0680j_4 = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f);
                            i = mo81roundToPx0680j_4 + left;
                        }
                    }
                    builder = new NavOptions.Builder(i, i7);
                }
                final Placeable mo512measureBRTryo04 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.BottomBar, function22))).mo512measureBRTryo0(m674copyZbe2FdA$default);
                int i8 = 0;
                boolean z = mo512measureBRTryo04.width == 0 && mo512measureBRTryo04.height == 0;
                if (builder != null) {
                    int i9 = builder.exitAnim;
                    if (z || i3 == 3) {
                        mo81roundToPx0680j_43 = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f) + i9;
                        bottom = windowInsets.getBottom(subcomposeMeasureScope);
                    } else {
                        mo81roundToPx0680j_43 = mo512measureBRTryo04.height + i9;
                        bottom = subcomposeMeasureScope.mo81roundToPx0680j_4(16.0f);
                    }
                    num = Integer.valueOf(bottom + mo81roundToPx0680j_43);
                } else {
                    num = null;
                }
                int i10 = mo512measureBRTryo02.height;
                if (i10 != 0) {
                    if (num != null) {
                        intValue = num.intValue();
                    } else {
                        Integer valueOf = !z ? Integer.valueOf(mo512measureBRTryo04.height) : null;
                        intValue = valueOf != null ? valueOf.intValue() : windowInsets.getBottom(subcomposeMeasureScope);
                    }
                    i8 = intValue + i10;
                }
                InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(windowInsets, subcomposeMeasureScope);
                scaffoldKt$ScaffoldLayout$contentPadding$1$1.paddingHolder$delegate.setValue(new PaddingValuesImpl(OffsetKt.calculateStartPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), (mo512measureBRTryo0.width == 0 && mo512measureBRTryo0.height == 0) ? insetsPaddingValues.mo123calculateTopPaddingD9Ej5fM() : subcomposeMeasureScope.mo84toDpu2uoSUM(mo512measureBRTryo0.height), OffsetKt.calculateEndPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), z ? insetsPaddingValues.mo120calculateBottomPaddingD9Ej5fM() : subcomposeMeasureScope.mo84toDpu2uoSUM(mo512measureBRTryo04.height)));
                final Placeable mo512measureBRTryo05 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.MainContent, function23))).mo512measureBRTryo0(m674copyZbe2FdA$default);
                final Integer num2 = num;
                final NavOptions.Builder builder2 = builder;
                final Placeable placeable2 = placeable;
                final int i11 = i8;
                return subcomposeMeasureScope.layout(m681getMaxWidthimpl, m680getMaxHeightimpl, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj8;
                        Placeable.PlacementScope.place$default(placementScope, Placeable.this, 0, 0);
                        Placeable.PlacementScope.place$default(placementScope, mo512measureBRTryo0, 0, 0);
                        Placeable placeable3 = mo512measureBRTryo02;
                        int i12 = m681getMaxWidthimpl - placeable3.width;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                        LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                        WindowInsets windowInsets2 = windowInsets;
                        int left2 = ((windowInsets2.getLeft(subcomposeMeasureScope2, layoutDirection) + i12) - windowInsets2.getRight(subcomposeMeasureScope2, subcomposeMeasureScope2.getLayoutDirection())) / 2;
                        int i13 = m680getMaxHeightimpl;
                        Placeable.PlacementScope.place$default(placementScope, placeable3, left2, i13 - i11);
                        Placeable placeable4 = mo512measureBRTryo04;
                        Placeable.PlacementScope.place$default(placementScope, placeable4, 0, i13 - placeable4.height);
                        NavOptions.Builder builder3 = builder2;
                        if (builder3 != null) {
                            int i14 = builder3.enterAnim;
                            Integer num3 = num2;
                            num3.getClass();
                            Placeable.PlacementScope.place$default(placementScope, placeable2, i14, i13 - num3.intValue());
                        }
                        return Unit.INSTANCE;
                    }
                });
            default:
                ((Integer) obj2).getClass();
                InitialOnboardingScreenKt.InitialOnboardingScreen((Modifier) obj7, (List) obj6, (AppLanguageState) obj5, (List) obj4, (Function0) function2, (Function0) function, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1));
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda2(Modifier modifier, List list, AppLanguageState appLanguageState, List list2, Function0 function0, Function0 function02, Function0 function03, int i) {
        this.f$0 = modifier;
        this.f$1 = list;
        this.f$2 = appLanguageState;
        this.f$3 = list2;
        this.f$5 = function0;
        this.f$7 = function02;
        this.f$6 = function03;
        this.f$4 = i;
    }
}
