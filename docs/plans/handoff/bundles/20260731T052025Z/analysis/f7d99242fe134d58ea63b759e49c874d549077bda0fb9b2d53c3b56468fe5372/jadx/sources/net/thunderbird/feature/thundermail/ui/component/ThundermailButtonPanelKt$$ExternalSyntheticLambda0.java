package net.thunderbird.feature.thundermail.ui.component;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.TestTagKt;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonDefaults;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ThundermailButtonPanelKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ ThundermailButtonPanelKt$$ExternalSyntheticLambda0(Function0 function0, Function0 function02, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = function02;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((FlowRowScopeInstance) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String stringResource = Operation$State.stringResource(gapComposer, R.string.feature_thundermail_button_panel_sign_in);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
                    Validate.ButtonOutlined(stringResource, this.f$0, null, false, Icons$Filled.Thundermail, ButtonDefaults.m843outlinedButtonColors5tl4gsc(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, gapComposer, 61), ButtonDefaults.outlinedShape(false, ButtonDefaults.m842outlinedButtonBorderRIQooxk(false, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, gapComposer, 3072, 5), gapComposer, 3072, 3), null, gapComposer, 0, 140);
                    ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 16.0f));
                    Validate.ButtonOutlined(Operation$State.stringResource(gapComposer, R.string.feature_thundermail_button_panel_scan_qr_code), this.f$1, null, false, Icons$Outlined.QrCode, ButtonDefaults.m843outlinedButtonColors5tl4gsc(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, gapComposer, 61), ButtonDefaults.outlinedShape(false, ButtonDefaults.m842outlinedButtonBorderRIQooxk(false, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).primary, gapComposer, 3072, 5), gapComposer, 3072, 3), null, gapComposer, 0, 140);
                    break;
                }
            case 1:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier testTag = TestTagKt.testTag(companion, "thundermail_panel");
                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    CloseableKt.ThundermailButtonPanel(this.f$0, this.f$1, OffsetKt.m222paddingqDBjuR0$default(testTag, 0.0f, 0.0f, 0.0f, 32.0f, 7), null, gapComposer2, 0);
                    break;
                }
            default:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer3, R.string.sent_folder_not_found_dialog_cancel_action), this.f$0, null, false, null, null, gapComposer3, 0, 60);
                    Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer3, R.string.sent_folder_not_found_dialog_send_and_delete_action), this.f$1, null, false, new Color(((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).error), null, gapComposer3, 0, 44);
                    break;
                }
        }
        return unit;
    }
}
