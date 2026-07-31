package androidx.compose.runtime;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Updater$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ Updater$$ExternalSyntheticLambda0(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(obj);
                break;
            case 1:
                ((Integer) obj2).getClass();
                break;
            case 2:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(12, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changed2 = gapComposer.changed(function1);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(13, function1);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    DebugUtils.WizardNavigationBar(function0, (Function0) rememberedValue2, OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda), null, null, null, gapComposer, 0, 56);
                    break;
                }
            case 3:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changed3 = gapComposer2.changed(function1);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(17, function1);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    boolean changed4 = gapComposer2.changed(function1);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(18, function1);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    DebugUtils.WizardNavigationBar(function02, (Function0) rememberedValue4, OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda), null, null, null, gapComposer2, 0, 56);
                    break;
                }
            case 4:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    WizardNavigationBarState wizardNavigationBarState = new WizardNavigationBarState(13, false, false, false);
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer3.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changed5 = gapComposer3.changed(function1);
                    Object rememberedValue6 = gapComposer3.rememberedValue();
                    if (changed5 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(20, function1);
                        gapComposer3.updateRememberedValue(rememberedValue6);
                    }
                    DebugUtils.WizardNavigationBar(function03, (Function0) rememberedValue6, windowInsetsPadding, null, null, wizardNavigationBarState, gapComposer3, 6, 24);
                    break;
                }
            case 5:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    WizardNavigationBarState wizardNavigationBarState2 = new WizardNavigationBarState(13, false, false, false);
                    Modifier windowInsetsPadding2 = OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda);
                    Object rememberedValue7 = gapComposer4.rememberedValue();
                    if (rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer4.updateRememberedValue(rememberedValue7);
                    }
                    Function0 function04 = (Function0) rememberedValue7;
                    boolean changed6 = gapComposer4.changed(function1);
                    Object rememberedValue8 = gapComposer4.rememberedValue();
                    if (changed6 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(24, function1);
                        gapComposer4.updateRememberedValue(rememberedValue8);
                    }
                    DebugUtils.WizardNavigationBar(function04, (Function0) rememberedValue8, windowInsetsPadding2, null, null, wizardNavigationBarState2, gapComposer4, 6, 24);
                    break;
                }
            case 6:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    boolean changed7 = gapComposer5.changed(function1);
                    Object rememberedValue9 = gapComposer5.rememberedValue();
                    if (changed7 || rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new AboutFragment$$ExternalSyntheticLambda2(7, function1);
                        gapComposer5.updateRememberedValue(rememberedValue9);
                    }
                    Function0 function05 = (Function0) rememberedValue9;
                    boolean changed8 = gapComposer5.changed(function1);
                    Object rememberedValue10 = gapComposer5.rememberedValue();
                    if (changed8 || rememberedValue10 == neverEqualPolicy) {
                        rememberedValue10 = new AboutFragment$$ExternalSyntheticLambda2(8, function1);
                        gapComposer5.updateRememberedValue(rememberedValue10);
                    }
                    DebugUtils.WizardNavigationBar(function05, (Function0) rememberedValue10, OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda), null, null, null, gapComposer5, 0, 56);
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    boolean changed9 = gapComposer6.changed(function1);
                    Object rememberedValue11 = gapComposer6.rememberedValue();
                    if (changed9 || rememberedValue11 == neverEqualPolicy) {
                        rememberedValue11 = new AboutFragment$$ExternalSyntheticLambda2(10, function1);
                        gapComposer6.updateRememberedValue(rememberedValue11);
                    }
                    Function0 function06 = (Function0) rememberedValue11;
                    boolean changed10 = gapComposer6.changed(function1);
                    Object rememberedValue12 = gapComposer6.rememberedValue();
                    if (changed10 || rememberedValue12 == neverEqualPolicy) {
                        rememberedValue12 = new AboutFragment$$ExternalSyntheticLambda2(11, function1);
                        gapComposer6.updateRememberedValue(rememberedValue12);
                    }
                    DebugUtils.WizardNavigationBar(function06, (Function0) rememberedValue12, OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda), null, null, null, gapComposer6, 0, 56);
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    boolean changed11 = gapComposer7.changed(function1);
                    Object rememberedValue13 = gapComposer7.rememberedValue();
                    if (changed11 || rememberedValue13 == neverEqualPolicy) {
                        rememberedValue13 = new AboutFragment$$ExternalSyntheticLambda2(25, function1);
                        gapComposer7.updateRememberedValue(rememberedValue13);
                    }
                    IntRectKt.ButtonIcon((Function0) rememberedValue13, Icons$Outlined.ArrowBack, null, false, null, null, gapComposer7, 0, 60);
                    break;
                }
            default:
                Offset offset = (Offset) obj2;
                ((PointerInputChange) obj).getClass();
                if (Float.intBitsToFloat((int) (offset.packedValue & 4294967295L)) != 0.0f) {
                    function1.invoke(Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue & 4294967295L))));
                    break;
                }
                break;
        }
        return unit;
    }
}
