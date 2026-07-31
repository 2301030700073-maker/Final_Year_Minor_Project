package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class HeightInLinesNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HeightInLinesNode f$0;

    public /* synthetic */ HeightInLinesNode$$ExternalSyntheticLambda0(HeightInLinesNode heightInLinesNode, int i) {
        this.$r8$classId = i;
        this.f$0 = heightInLinesNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        HeightInLinesNode heightInLinesNode = this.f$0;
        switch (i) {
            case 0:
                if (heightInLinesNode.fontResolutionState == null) {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Font resolution state is not set.");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    break;
                }
            default:
                if (heightInLinesNode.fontResolutionState == null) {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Font resolution state is not set.");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    break;
                }
        }
        return null;
    }
}
