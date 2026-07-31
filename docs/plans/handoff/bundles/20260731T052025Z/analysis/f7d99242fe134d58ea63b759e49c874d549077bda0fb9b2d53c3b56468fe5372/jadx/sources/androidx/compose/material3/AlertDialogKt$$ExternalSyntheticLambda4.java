package androidx.compose.material3;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposableLambdaImpl f$2;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = i;
        this.f$2 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComposableLambdaImpl composableLambdaImpl = this.f$2;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                AlertDialogKt.m318AlertDialogFlowRowixp7dh8(composableLambdaImpl, composer, Updater.updateChangedFlags(439));
                break;
            case 1:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) FlowRowScopeInstance.INSTANCE, (Object) gapComposer, (Object) 6);
                    break;
                }
            case 2:
                num.getClass();
                LazyLayoutKt.LazySaveableStateHolderProvider(composableLambdaImpl, composer, Updater.updateChangedFlags(7));
                break;
            case 3:
                num.getClass();
                SheetDefaultsKt.DragHandleWithTooltip(composableLambdaImpl, composer, Updater.updateChangedFlags(55));
                break;
            case 4:
                int intValue2 = num.intValue();
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                    break;
                }
            case 5:
                int intValue3 = num.intValue();
                GapComposer gapComposer3 = (GapComposer) composer;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) RowScopeInstance.INSTANCE, (Object) gapComposer3, (Object) 0);
                    break;
                }
            case 6:
                int intValue4 = num.intValue();
                GapComposer gapComposer4 = (GapComposer) composer;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) StringsKt__IndentKt.calculateResponsiveWidthPadding(gapComposer4), (Object) gapComposer4, (Object) 0);
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int intValue5 = num.intValue();
                GapComposer gapComposer5 = (GapComposer) composer;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) StringsKt__IndentKt.calculateResponsiveWidthPadding(gapComposer5), (Object) gapComposer5, (Object) 0);
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int intValue6 = num.intValue();
                GapComposer gapComposer6 = (GapComposer) composer;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer6, (Object) 0);
                    break;
                }
            case 9:
                int intValue7 = num.intValue();
                GapComposer gapComposer7 = (GapComposer) composer;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer7, (Object) 0);
                    break;
                }
            case 10:
                int intValue8 = num.intValue();
                GapComposer gapComposer8 = (GapComposer) composer;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer8, (Object) 0);
                    break;
                }
            default:
                int intValue9 = num.intValue();
                GapComposer gapComposer9 = (GapComposer) composer;
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSpacings) gapComposer9.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    then = SizeKt.FillWholeMaxWidth.then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, r1, r1.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(ImageKt.rememberScrollState(gapComposer9)));
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, Alignment.Companion.Start, gapComposer9, 0);
                    long j = gapComposer9.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer9.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer9, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer9.startReusableNode();
                    if (gapComposer9.inserting) {
                        gapComposer9.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer9.useNode();
                    }
                    Updater.m380setimpl(gapComposer9, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer9, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer9, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer9, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer9, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) ColumnScopeInstance.INSTANCE, (Object) gapComposer9, (Object) 6);
                    gapComposer9.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = composableLambdaImpl;
    }
}
