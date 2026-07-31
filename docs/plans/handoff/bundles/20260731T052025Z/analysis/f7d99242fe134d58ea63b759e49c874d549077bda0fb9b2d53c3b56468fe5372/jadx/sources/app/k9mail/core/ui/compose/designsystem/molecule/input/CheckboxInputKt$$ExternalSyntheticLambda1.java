package app.k9mail.core.ui.compose.designsystem.molecule.input;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CheckboxInputKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ String f$4;
    public final /* synthetic */ PaddingValuesImpl f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ CheckboxInputKt$$ExternalSyntheticLambda1(String str, boolean z, Function1 function1, Modifier modifier, String str2, PaddingValuesImpl paddingValuesImpl, int i, int i2) {
        this.f$0 = str;
        this.f$1 = z;
        this.f$2 = function1;
        this.f$3 = modifier;
        this.f$4 = str2;
        this.f$5 = paddingValuesImpl;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TextInputKt.CheckboxInput(Updater.updateChangedFlags(i2 | 1), this.f$7, this.f$5, (Composer) obj, this.f$3, this.f$0, this.f$4, this.f$2, this.f$1);
                break;
            default:
                ((Integer) obj2).getClass();
                TextInputKt.PasswordInput(Updater.updateChangedFlags(i2 | 1), this.f$7, this.f$5, (Composer) obj, this.f$3, this.f$0, this.f$4, this.f$2, this.f$1);
                break;
        }
        return unit;
    }

    public /* synthetic */ CheckboxInputKt$$ExternalSyntheticLambda1(Function1 function1, Modifier modifier, String str, boolean z, String str2, PaddingValuesImpl paddingValuesImpl, int i, int i2) {
        this.f$2 = function1;
        this.f$3 = modifier;
        this.f$0 = str;
        this.f$1 = z;
        this.f$4 = str2;
        this.f$5 = paddingValuesImpl;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
