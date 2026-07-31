package androidx.compose.foundation;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.HitTestResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AbstractClickableNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AbstractClickableNode f$0;

    public /* synthetic */ AbstractClickableNode$$ExternalSyntheticLambda0(AbstractClickableNode abstractClickableNode, int i) {
        this.$r8$classId = i;
        this.f$0 = abstractClickableNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        DelegatableNode delegatableNode;
        int i = this.$r8$classId;
        AbstractClickableNode abstractClickableNode = this.f$0;
        switch (i) {
            case 0:
                IndicationNodeFactory indicationNodeFactory = (IndicationNodeFactory) HitTestResultKt.currentValueOf(abstractClickableNode, IndicationKt.LocalIndication);
                if (!(indicationNodeFactory instanceof IndicationNodeFactory)) {
                    InlineClassHelperKt.throwIllegalArgumentException("clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: " + indicationNodeFactory);
                }
                IndicationNodeFactory indicationNodeFactory2 = abstractClickableNode.localIndicationNodeFactory;
                IndicationNodeFactory indicationNodeFactory3 = indicationNodeFactory;
                abstractClickableNode.localIndicationNodeFactory = indicationNodeFactory3;
                if (indicationNodeFactory2 != null && !Intrinsics.areEqual(indicationNodeFactory3, indicationNodeFactory2) && ((delegatableNode = abstractClickableNode.indicationNode) != null || !abstractClickableNode.lazilyCreateIndication)) {
                    if (delegatableNode != null) {
                        abstractClickableNode.undelegate(delegatableNode);
                    }
                    abstractClickableNode.indicationNode = null;
                    abstractClickableNode.initializeIndicationAndInteractionSourceIfNeeded();
                }
                return Unit.INSTANCE;
            default:
                abstractClickableNode.onClick.invoke();
                return Boolean.TRUE;
        }
    }
}
