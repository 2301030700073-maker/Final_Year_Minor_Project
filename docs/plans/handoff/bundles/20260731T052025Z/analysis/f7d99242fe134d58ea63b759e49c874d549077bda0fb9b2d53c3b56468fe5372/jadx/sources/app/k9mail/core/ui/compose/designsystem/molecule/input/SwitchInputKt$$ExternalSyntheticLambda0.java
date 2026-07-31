package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableElement;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.Role;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwitchInputKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ SwitchInputKt$$ExternalSyntheticLambda0(Function1 function1, boolean z, String str) {
        this.f$0 = function1;
        this.f$1 = z;
        this.f$2 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    Function1 function1 = this.f$0;
                    boolean changed = gapComposer.changed(function1);
                    boolean z = this.f$1;
                    boolean changed2 = changed | gapComposer.changed(z);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new CheckboxKt$$ExternalSyntheticLambda2(function1, z, 2);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(fillElement, false, null, (Function0) rememberedValue, 15);
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical, gapComposer, 48);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m136clickableoSLSa3U$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Operation$State.Switch(z, function1, null, false, gapComposer, 0);
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(this.f$2, null, 0L, null, 0, 0, gapComposer, 0, 62);
                    gapComposer.end(true);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
                    Role role = new Role(1);
                    Function1 function12 = this.f$0;
                    boolean changed3 = gapComposer2.changed(function12);
                    boolean z2 = this.f$1;
                    boolean changed4 = changed3 | gapComposer2.changed(z2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new DropdownMenuBoxKt$$ExternalSyntheticLambda1(function12, z2, 1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    then = fillElement2.then(new ToggleableElement(z2, null, true, role, (Function1) rememberedValue2));
                    BiasAlignment.Vertical vertical2 = Alignment.Companion.CenterVertically;
                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical2, gapComposer2, 48);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    RelationUtil.Checkbox(z2, null, null, false, gapComposer2, 48);
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(this.f$2, null, 0L, null, 0, 0, gapComposer2, 0, 62);
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ SwitchInputKt$$ExternalSyntheticLambda0(boolean z, Function1 function1, String str) {
        this.f$1 = z;
        this.f$0 = function1;
        this.f$2 = str;
    }
}
