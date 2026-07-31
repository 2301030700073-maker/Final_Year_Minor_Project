package coil3.util;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Pair f$0;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda1(Pair pair, int i) {
        this.$r8$classId = i;
        this.f$0 = pair;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List listOf;
        List listOf2;
        int i = this.$r8$classId;
        Pair pair = this.f$0;
        switch (i) {
            case 0:
                listOf = IntOffsetKt.listOf(pair);
                return listOf;
            default:
                listOf2 = IntOffsetKt.listOf(pair);
                return listOf2;
        }
    }
}
