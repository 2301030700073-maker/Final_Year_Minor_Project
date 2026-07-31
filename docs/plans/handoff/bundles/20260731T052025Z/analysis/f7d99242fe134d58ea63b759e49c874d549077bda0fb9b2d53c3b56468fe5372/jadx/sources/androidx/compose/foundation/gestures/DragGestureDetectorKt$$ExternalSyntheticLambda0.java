package androidx.compose.foundation.gestures;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Failure$LoadFoldersFailed;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DragGestureDetectorKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ DragGestureDetectorKt$$ExternalSyntheticLambda0(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(new Offset(((PointerInputChange) obj2).position));
                break;
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(booleanValue) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else if (!booleanValue) {
                    gapComposer.startReplaceGroup(-1468392593);
                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_certificate_button_advanced);
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(8, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Validate.ButtonOutlined(stringResource, (Function0) rememberedValue, SizeKt.FillWholeMaxWidth, false, null, null, null, null, gapComposer, 384, 248);
                    gapComposer.end(false);
                    break;
                } else {
                    gapComposer.startReplaceGroup(-1468740568);
                    String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_server_certificate_button_continue);
                    boolean changed2 = gapComposer.changed(function1);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(10, function1);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Validate.ButtonOutlined(stringResource2, (Function0) rememberedValue2, SizeKt.FillWholeMaxWidth, false, null, null, null, null, gapComposer, 384, 248);
                    gapComposer.end(false);
                    break;
                }
            case 2:
                SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed = (SpecialFoldersContract$Failure$LoadFoldersFailed) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                specialFoldersContract$Failure$LoadFoldersFailed.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(specialFoldersContract$Failure$LoadFoldersFailed) : ((GapComposer) composer2).changedInstance(specialFoldersContract$Failure$LoadFoldersFailed) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changed3 = gapComposer2.changed(function1);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(12, function1);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    SpecialFoldersScreenKt.SpecialFoldersErrorView(specialFoldersContract$Failure$LoadFoldersFailed, (Function0) rememberedValue3, gapComposer2, intValue2 & 14);
                    break;
                }
            case 3:
                SpecialFoldersContract$State specialFoldersContract$State = (SpecialFoldersContract$State) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                specialFoldersContract$State.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= (intValue3 & 8) == 0 ? ((GapComposer) composer3).changed(specialFoldersContract$State) : ((GapComposer) composer3).changedInstance(specialFoldersContract$State) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else if (!specialFoldersContract$State.isSuccess) {
                    gapComposer3.startReplaceGroup(357566829);
                    SpecialFoldersScreenKt.SpecialFoldersFormContent(specialFoldersContract$State.formState, function1, SizeKt.FillWholeMaxSize, gapComposer3, 384);
                    gapComposer3.end(false);
                    break;
                } else {
                    gapComposer3.startReplaceGroup(357306894);
                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_success_message);
                    ((ThemeSpacings) gapComposer3.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    SchemaInfoUtilKt.LoadingView(OffsetKt.m220paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, 16.0f, 0.0f, 2), stringResource3, null, gapComposer3, 0, 4);
                    gapComposer3.end(false);
                    break;
                }
            default:
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= ((GapComposer) composer4).changed(booleanValue2) ? 4 : 2;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    String stringResource4 = Operation$State.stringResource(gapComposer4, R.string.account_common_button_next);
                    boolean changed4 = gapComposer4.changed(function1);
                    Object rememberedValue4 = gapComposer4.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new AboutFragment$$ExternalSyntheticLambda2(19, function1);
                        gapComposer4.updateRememberedValue(rememberedValue4);
                    }
                    IntOffsetKt.ButtonFilled(stringResource4, (Function0) rememberedValue4, TestTagKt.testTag(SchemaInfoUtilKt.hide(!booleanValue2), "onboarding_permissions_next_button"), false, null, null, null, gapComposer4, 0, 248);
                    String stringResource5 = Operation$State.stringResource(gapComposer4, R.string.onboarding_permissions_skip_button);
                    boolean changed5 = gapComposer4.changed(function1);
                    Object rememberedValue5 = gapComposer4.rememberedValue();
                    if (changed5 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new AboutFragment$$ExternalSyntheticLambda2(20, function1);
                        gapComposer4.updateRememberedValue(rememberedValue5);
                    }
                    Util.m1089ButtonTextjM_yU8I(stringResource5, (Function0) rememberedValue5, TestTagKt.testTag(SchemaInfoUtilKt.hide(booleanValue2), "onboarding_permissions_skip_button"), false, null, null, gapComposer4, 0, 56);
                    break;
                }
        }
        return unit;
    }
}
