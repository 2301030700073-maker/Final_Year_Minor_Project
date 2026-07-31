package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.Modifier;
import androidx.core.util.DebugUtils;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CreateAccountScreenKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ CreateAccountScreenKt$$ExternalSyntheticLambda2(Function1 function1, MutableState mutableState) {
        this.$r8$classId = 1;
        this.f$1 = function1;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Function1 function1 = this.f$1;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    WizardNavigationBarState wizardNavigationBarState = new WizardNavigationBarState(9, false, ((CreateAccountContract$State) mutableState.getValue()).error != null, false);
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new AboutFragment$$ExternalSyntheticLambda2(5, function1);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    DebugUtils.WizardNavigationBar(function0, (Function0) rememberedValue2, windowInsetsPadding, null, null, wizardNavigationBarState, gapComposer, 6, 24);
                    break;
                }
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function02 = (Function0) rememberedValue3;
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(3, function1);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    DebugUtils.WizardNavigationBar(function02, (Function0) rememberedValue4, null, null, null, new WizardNavigationBarState(9, false, ((SaveServerSettingsContract$State) mutableState.getValue()).error != null, false), gapComposer2, 6, 28);
                    break;
                }
            default:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    WizardNavigationBarState wizardNavigationBarState2 = new WizardNavigationBarState(13, ((SpecialFoldersContract$State) mutableState.getValue()).isManualSetup && !((SpecialFoldersContract$State) mutableState.getValue()).isLoading, false, false);
                    Modifier windowInsetsPadding2 = OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new AboutFragment$$ExternalSyntheticLambda2(14, function1);
                        gapComposer3.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changed4 = gapComposer3.changed(function1);
                    Object rememberedValue6 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new AboutFragment$$ExternalSyntheticLambda2(15, function1);
                        gapComposer3.updateRememberedValue(rememberedValue6);
                    }
                    DebugUtils.WizardNavigationBar(function03, (Function0) rememberedValue6, windowInsetsPadding2, null, null, wizardNavigationBarState2, gapComposer3, 0, 24);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ CreateAccountScreenKt$$ExternalSyntheticLambda2(int i, MutableState mutableState, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = function1;
    }
}
