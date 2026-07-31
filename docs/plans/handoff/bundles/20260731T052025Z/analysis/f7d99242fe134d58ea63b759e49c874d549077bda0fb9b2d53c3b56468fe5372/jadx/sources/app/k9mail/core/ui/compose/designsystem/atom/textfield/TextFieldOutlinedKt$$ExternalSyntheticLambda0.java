package app.k9mail.core.ui.compose.designsystem.atom.textfield;

import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldOutlinedKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$10;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ boolean f$8;
    public final /* synthetic */ boolean f$9;

    public /* synthetic */ TextFieldOutlinedKt$$ExternalSyntheticLambda0(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, boolean z2, boolean z3, KeyboardOptions keyboardOptions, int i) {
        this.$r8$classId = 0;
        this.f$0 = textFieldValue;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$8 = z2;
        this.f$9 = z3;
        this.f$10 = keyboardOptions;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$10;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(385);
                TextFieldLabelKt.TextFieldOutlined((TextFieldValue) obj4, this.f$1, this.f$2, this.f$5, this.f$8, this.f$9, (KeyboardOptions) obj3, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(385);
                TextFieldLabelKt.TextFieldOutlinedNumber((Long) obj4, this.f$1, this.f$2, (String) obj3, this.f$5, this.f$8, this.f$9, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(385);
                TextFieldLabelKt.TextFieldOutlinedPassword((String) obj4, this.f$1, this.f$2, (String) obj3, this.f$5, this.f$8, this.f$9, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ TextFieldOutlinedKt$$ExternalSyntheticLambda0(Object obj, Function1 function1, Modifier modifier, String str, boolean z, boolean z2, boolean z3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$10 = str;
        this.f$5 = z;
        this.f$8 = z2;
        this.f$9 = z3;
    }
}
