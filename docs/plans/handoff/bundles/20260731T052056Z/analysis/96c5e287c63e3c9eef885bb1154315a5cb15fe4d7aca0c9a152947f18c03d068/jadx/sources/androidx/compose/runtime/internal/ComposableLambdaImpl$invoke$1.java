package androidx.compose.runtime.internal;

import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableNode$onKeyEvent$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableLambdaImpl$invoke$1 extends AdaptedFunctionReference implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ComposableLambdaImpl$invoke$1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.receiver;
        switch (i) {
            case 0:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                composableLambdaImpl.invoke(((Number) obj2).intValue(), (GapComposer) obj);
                break;
            case 1:
                ScrollableNode scrollableNode = (ScrollableNode) obj3;
                AwaitKt.launch$default(scrollableNode.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(scrollableNode, ((Velocity) obj).packedValue, null, 2), 3);
                break;
            default:
                ScrollableNode scrollableNode2 = (ScrollableNode) obj3;
                AwaitKt.launch$default(scrollableNode2.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(scrollableNode2, ((Velocity) obj).packedValue, null, 1), 3);
                break;
        }
        return unit;
    }
}
