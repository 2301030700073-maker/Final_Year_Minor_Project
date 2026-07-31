package app.k9mail.core.ui.compose.designsystem.atom.textfield;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldLabelKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ TextFieldLabelKt$$ExternalSyntheticLambda0(int i, String str, boolean z) {
        this.f$0 = str;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.f$1;
        String str = this.f$0;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                TextFieldLabelKt.TextFieldLabel(str, z, composer, Updater.updateChangedFlags(1));
                break;
            default:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    if (str == null) {
                        str = "";
                    }
                    TextFieldLabelKt.TextFieldLabel(str, z, gapComposer, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ TextFieldLabelKt$$ExternalSyntheticLambda0(String str, boolean z) {
        this.f$0 = str;
        this.f$1 = z;
    }
}
