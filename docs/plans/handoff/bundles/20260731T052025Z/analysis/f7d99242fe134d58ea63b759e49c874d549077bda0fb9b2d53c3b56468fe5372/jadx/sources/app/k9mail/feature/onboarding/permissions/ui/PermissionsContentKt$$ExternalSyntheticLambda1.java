package app.k9mail.feature.onboarding.permissions.ui;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PermissionsContentKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrollState f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ PermissionsContract$State f$2;
    public final /* synthetic */ Function1 f$3;

    public /* synthetic */ PermissionsContentKt$$ExternalSyntheticLambda1(ScrollState scrollState, String str, PermissionsContract$State permissionsContract$State, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = scrollState;
        this.f$1 = str;
        this.f$2 = permissionsContract$State;
        this.f$3 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(SizeKt.FillWholeMaxWidth, paddingValues), Expect_jvmKt.rememberComposableLambda(1856135181, new PermissionsContentKt$$ExternalSyntheticLambda1(this.f$0, this.f$1, this.f$2, this.f$3, 1), gapComposer), gapComposer, 48, 0);
                    break;
                }
            default:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.SpaceBetween;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
                    then = SizeKt.FillWholeMaxHeight.then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, r8, r8.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(this.f$0));
                    Modifier padding = OffsetKt.padding(then, paddingValues2);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 54);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    SchemaInfoUtilKt.HeaderArea(this.f$1, gapComposer2, 0);
                    SchemaInfoUtilKt.ContentArea(this.f$2, this.f$3, gapComposer2, 0);
                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    OffsetKt.Spacer(gapComposer2, SizeKt.m226height3ABfNKs(Modifier.Companion.$$INSTANCE, 16.0f));
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }
}
