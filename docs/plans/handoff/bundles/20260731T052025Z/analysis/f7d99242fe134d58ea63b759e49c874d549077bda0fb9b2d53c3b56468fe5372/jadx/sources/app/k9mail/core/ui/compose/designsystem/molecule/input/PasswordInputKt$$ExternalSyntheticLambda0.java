package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.core.ui.designsystem.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PasswordInputKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ boolean f$3;

    public /* synthetic */ PasswordInputKt$$ExternalSyntheticLambda0(String str, String str2, Function1 function1, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = function1;
        this.f$3 = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextFieldLabelKt.TextFieldOutlinedPassword(this.f$1, this.f$2, SizeKt.FillWholeMaxWidth, CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_molecule_password_input_label$delegate.getValue(), gapComposer), false, this.f$3, str != null, gapComposer, 384);
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
                    TextFieldLabelKt.TextFieldOutlinedEmailAddress(this.f$1, this.f$2, SizeKt.FillWholeMaxWidth, CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_molecule_email_address_input_label$delegate.getValue(), gapComposer2), this.f$3, str != null, gapComposer2, 384, 96);
                    break;
                }
        }
        return unit;
    }
}
