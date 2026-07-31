package coil3.util;

import androidx.compose.ui.unit.IntOffsetKt;
import coil3.decode.Decoder;
import java.util.List;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Decoder.Factory f$0;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda2(Decoder.Factory factory, int i) {
        this.$r8$classId = i;
        this.f$0 = factory;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List listOf;
        List listOf2;
        List listOf3;
        int i = this.$r8$classId;
        Decoder.Factory factory = this.f$0;
        switch (i) {
            case 0:
                listOf = IntOffsetKt.listOf(factory);
                return listOf;
            case 1:
                listOf2 = IntOffsetKt.listOf(factory);
                return listOf2;
            default:
                listOf3 = IntOffsetKt.listOf(factory);
                return listOf3;
        }
    }
}
