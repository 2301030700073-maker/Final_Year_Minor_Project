package androidx.compose.material3;

import androidx.compose.foundation.layout.InsetsPaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation3.scene.SceneState;
import androidx.navigationevent.compose.NavigationEventState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function2 f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Function f$7;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda5(WindowInsets windowInsets, Function2 function2, Function2 function22, Function2 function23, int i, Function2 function24, ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1, Function2 function25) {
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
        int mo58roundToPx0680j_4;
        int mo58roundToPx0680j_42;
        int i;
        FabPlacement fabPlacement;
        Integer num;
        int intValue;
        int mo58roundToPx0680j_43;
        int bottom;
        int i2 = this.$r8$classId;
        int i3 = this.f$4;
        Object obj3 = this.f$6;
        Function function = this.f$7;
        Object obj4 = this.f$5;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$0;
        switch (i2) {
            case 0:
                final WindowInsets windowInsets = (WindowInsets) obj7;
                Function2 function2 = (Function2) obj4;
                ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj3;
                Function2 function22 = (Function2) function;
                final SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                final int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(constraints.value);
                final int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(constraints.value);
                long m427copyZbe2FdA$default = Constraints.m427copyZbe2FdA$default(0, 0, 0, constraints.value, 10);
                int left = windowInsets.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int right = windowInsets.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection());
                int bottom2 = windowInsets.getBottom(subcomposeMeasureScope);
                final Placeable mo292measureBRTryo0 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.TopBar, this.f$1))).mo292measureBRTryo0(m427copyZbe2FdA$default);
                int i4 = (-left) - right;
                int i5 = -bottom2;
                final Placeable mo292measureBRTryo02 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Snackbar, (Function2) obj6))).mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(i4, m427copyZbe2FdA$default, i5));
                Placeable mo292measureBRTryo03 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Fab, (Function2) obj5))).mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(i4, m427copyZbe2FdA$default, i5));
                int i6 = mo292measureBRTryo03.width;
                if (i6 == 0 && mo292measureBRTryo03.height == 0) {
                    placeable = mo292measureBRTryo03;
                    fabPlacement = null;
                } else {
                    int i7 = mo292measureBRTryo03.height;
                    LayoutDirection layoutDirection = LayoutDirection.Ltr;
                    if (i3 == 0) {
                        placeable = mo292measureBRTryo03;
                        if (subcomposeMeasureScope.getLayoutDirection() == layoutDirection) {
                            mo58roundToPx0680j_4 = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f);
                            i = mo58roundToPx0680j_4 + left;
                        } else {
                            mo58roundToPx0680j_42 = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f);
                            i = ((m434getMaxWidthimpl - mo58roundToPx0680j_42) - i6) - right;
                        }
                    } else {
                        placeable = mo292measureBRTryo03;
                        if (i3 != 2 && i3 != 3) {
                            i = (((m434getMaxWidthimpl - i6) + left) - right) / 2;
                        } else if (subcomposeMeasureScope.getLayoutDirection() == layoutDirection) {
                            mo58roundToPx0680j_42 = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f);
                            i = ((m434getMaxWidthimpl - mo58roundToPx0680j_42) - i6) - right;
                        } else {
                            mo58roundToPx0680j_4 = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f);
                            i = mo58roundToPx0680j_4 + left;
                        }
                    }
                    fabPlacement = new FabPlacement();
                    fabPlacement.left = i;
                    fabPlacement.height = i7;
                }
                final Placeable mo292measureBRTryo04 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.BottomBar, function2))).mo292measureBRTryo0(m427copyZbe2FdA$default);
                int i8 = 0;
                boolean z = mo292measureBRTryo04.width == 0 && mo292measureBRTryo04.height == 0;
                if (fabPlacement != null) {
                    int i9 = fabPlacement.height;
                    if (z || i3 == 3) {
                        mo58roundToPx0680j_43 = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f) + i9;
                        bottom = windowInsets.getBottom(subcomposeMeasureScope);
                    } else {
                        mo58roundToPx0680j_43 = mo292measureBRTryo04.height + i9;
                        bottom = subcomposeMeasureScope.mo58roundToPx0680j_4(16.0f);
                    }
                    num = Integer.valueOf(bottom + mo58roundToPx0680j_43);
                } else {
                    num = null;
                }
                int i10 = mo292measureBRTryo02.height;
                if (i10 != 0) {
                    if (num != null) {
                        intValue = num.intValue();
                    } else {
                        Integer valueOf = !z ? Integer.valueOf(mo292measureBRTryo04.height) : null;
                        intValue = valueOf != null ? valueOf.intValue() : windowInsets.getBottom(subcomposeMeasureScope);
                    }
                    i8 = intValue + i10;
                }
                InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(windowInsets, subcomposeMeasureScope);
                scaffoldKt$ScaffoldLayout$contentPadding$1$1.paddingHolder$delegate.setValue(new PaddingValuesImpl(SpacerKt.calculateStartPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), (mo292measureBRTryo0.width == 0 && mo292measureBRTryo0.height == 0) ? insetsPaddingValues.mo86calculateTopPaddingD9Ej5fM() : subcomposeMeasureScope.mo61toDpu2uoSUM(mo292measureBRTryo0.height), SpacerKt.calculateEndPadding(insetsPaddingValues, subcomposeMeasureScope.getLayoutDirection()), z ? insetsPaddingValues.mo83calculateBottomPaddingD9Ej5fM() : subcomposeMeasureScope.mo61toDpu2uoSUM(mo292measureBRTryo04.height)));
                final Placeable mo292measureBRTryo05 = ((Measurable) CollectionsKt.first(subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.MainContent, function22))).mo292measureBRTryo0(m427copyZbe2FdA$default);
                final int i11 = i8;
                final Integer num2 = num;
                final FabPlacement fabPlacement2 = fabPlacement;
                final Placeable placeable2 = placeable;
                return subcomposeMeasureScope.layout(m434getMaxWidthimpl, m433getMaxHeightimpl, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj8;
                        placementScope.place(Placeable.this, 0, 0, 0.0f);
                        placementScope.place(mo292measureBRTryo0, 0, 0, 0.0f);
                        Placeable placeable3 = mo292measureBRTryo02;
                        int i12 = m434getMaxWidthimpl - placeable3.width;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                        LayoutDirection layoutDirection2 = subcomposeMeasureScope2.getLayoutDirection();
                        WindowInsets windowInsets2 = windowInsets;
                        int left2 = ((windowInsets2.getLeft(subcomposeMeasureScope2, layoutDirection2) + i12) - windowInsets2.getRight(subcomposeMeasureScope2, subcomposeMeasureScope2.getLayoutDirection())) / 2;
                        int i13 = m433getMaxHeightimpl;
                        placementScope.place(placeable3, left2, i13 - i11, 0.0f);
                        Placeable placeable4 = mo292measureBRTryo04;
                        placementScope.place(placeable4, 0, i13 - placeable4.height, 0.0f);
                        FabPlacement fabPlacement3 = fabPlacement2;
                        if (fabPlacement3 != null) {
                            int i14 = fabPlacement3.left;
                            Integer num3 = num2;
                            num3.getClass();
                            placementScope.place(placeable2, i14, i13 - num3.intValue(), 0.0f);
                        }
                        return Unit.INSTANCE;
                    }
                });
            default:
                ((Integer) obj2).getClass();
                Jsoup.NavDisplay((SceneState) obj7, (NavigationEventState) obj6, (Modifier) obj5, (Alignment) obj4, (Function1) function, (Function1) obj3, this.f$1, (Composer) obj, Updater.updateChangedFlags(i3 | 1));
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda5(SceneState sceneState, NavigationEventState navigationEventState, Modifier modifier, Alignment alignment, Function1 function1, Function1 function12, Function2 function2, int i) {
        this.f$0 = sceneState;
        this.f$2 = navigationEventState;
        this.f$3 = modifier;
        this.f$5 = alignment;
        this.f$7 = function1;
        this.f$6 = function12;
        this.f$1 = function2;
        this.f$4 = i;
    }
}
