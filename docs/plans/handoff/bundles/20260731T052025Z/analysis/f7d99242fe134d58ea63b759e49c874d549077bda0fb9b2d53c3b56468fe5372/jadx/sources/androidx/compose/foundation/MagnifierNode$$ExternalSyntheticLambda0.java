package androidx.compose.foundation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MagnifierNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MagnifierNode f$0;

    public /* synthetic */ MagnifierNode$$ExternalSyntheticLambda0(MagnifierNode magnifierNode, int i) {
        this.$r8$classId = i;
        this.f$0 = magnifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        MagnifierNode magnifierNode = this.f$0;
        switch (i) {
            case 0:
                magnifierNode.updateMagnifier();
                return Unit.INSTANCE;
            case 1:
                return new Offset(magnifierNode.sourceCenterInRoot);
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) magnifierNode.layoutCoordinates$delegate.getValue();
                return new Offset(layoutCoordinates != null ? layoutCoordinates.mo579localToRootMKHz9U(0L) : 9205357640488583168L);
        }
    }
}
