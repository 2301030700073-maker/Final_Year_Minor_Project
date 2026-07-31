package net.thunderbird.feature.mail.message.list.ui.component.molecule;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function3 f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2(Function3 function3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = function3;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        Function3 function3 = this.f$1;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                MessageBodyContentKt.HeaderRowSmall(function3, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                MessageBodyContentKt.HeaderRow(function3, composer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
