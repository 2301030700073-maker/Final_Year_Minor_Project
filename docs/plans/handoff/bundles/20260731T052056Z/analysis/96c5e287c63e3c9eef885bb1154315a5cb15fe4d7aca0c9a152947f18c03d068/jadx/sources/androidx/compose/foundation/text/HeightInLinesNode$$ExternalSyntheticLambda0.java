package androidx.compose.foundation.text;

import androidx.compose.foundation.lazy.LazyItemScope$CC;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                if (heightInLinesNode.fontResolutionState != null) {
                    return unit;
                }
                throw LazyItemScope$CC.m("Font resolution state is not set.");
            default:
                if (heightInLinesNode.fontResolutionState != null) {
                    return unit;
                }
                throw LazyItemScope$CC.m("Font resolution state is not set.");
        }
    }
}
