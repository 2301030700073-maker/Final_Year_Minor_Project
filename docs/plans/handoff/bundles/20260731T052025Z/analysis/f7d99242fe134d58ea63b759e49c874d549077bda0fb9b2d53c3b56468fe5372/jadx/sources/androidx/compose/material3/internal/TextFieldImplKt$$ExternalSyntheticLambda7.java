package androidx.compose.material3.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$$ExternalSyntheticLambda7 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ TextStyle f$1;
    public final /* synthetic */ Function2 f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ TextFieldImplKt$$ExternalSyntheticLambda7(long j, TextStyle textStyle, Function2 function2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = j;
        this.f$1 = textStyle;
        this.f$2 = function2;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Icons$Filled.m368Decoration3JVO9M(this.f$0, this.f$1, this.f$2, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).intValue();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Icons$Filled.m370ProvideContentColorTextStyle3JVO9M(this.f$0, this.f$1, this.f$2, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }
}
