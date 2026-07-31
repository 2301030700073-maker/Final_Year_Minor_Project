package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.AlertDialogKt$$ExternalSyntheticLambda5;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.designsystem.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreTextFieldKt$$ExternalSyntheticLambda17 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda17(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i) {
        this.f$0 = textFieldSelectionManager;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String stringResource;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 2;
        boolean z = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                BasicTextKt.SelectionToolbarAndHandles((TextFieldSelectionManager) obj3, z, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Data.Companion.PredictiveBackHandler(z, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ImageVector imageVector = z ? Icons$Outlined.Visibility : Icons$Outlined.VisibilityOff;
                    if (z) {
                        gapComposer.startReplaceGroup(1670229199);
                        stringResource = CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_atom_password_textfield_hide_password$delegate.getValue(), gapComposer);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(1670343279);
                        stringResource = CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_atom_password_textfield_show_password$delegate.getValue(), gapComposer);
                        gapComposer.end(false);
                    }
                    CardKt.IconButton(function0, null, false, null, null, Expect_jvmKt.rememberComposableLambda(-179632668, new AlertDialogKt$$ExternalSyntheticLambda5(i2, imageVector, stringResource), gapComposer), gapComposer, 1572864, 62);
                    break;
                }
            default:
                Function1 function1 = (Function1) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(1 & intValue2, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.TopAppBar(Operation$State.stringResource(gapComposer2, R.string.account_settings_composition_label), null, Expect_jvmKt.rememberComposableLambda(3793035, new Updater$$ExternalSyntheticLambda0(8, function1), gapComposer2), Expect_jvmKt.rememberComposableLambda(-1694717964, new SegmentedButtonKt$$ExternalSyntheticLambda3(i2, function1, z), gapComposer2), gapComposer2, 3456, 2);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda17(Function1 function1, boolean z) {
        this.f$0 = function1;
        this.f$1 = z;
    }

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda17(boolean z, Function0 function0) {
        this.f$1 = z;
        this.f$0 = function0;
    }

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda17(boolean z, Function2 function2, int i) {
        this.f$1 = z;
        this.f$0 = function2;
    }
}
