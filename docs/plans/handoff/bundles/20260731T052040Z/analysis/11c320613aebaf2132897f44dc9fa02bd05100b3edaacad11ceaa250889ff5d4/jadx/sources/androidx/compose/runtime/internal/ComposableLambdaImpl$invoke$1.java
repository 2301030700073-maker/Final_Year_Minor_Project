package androidx.compose.runtime.internal;

import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableNode$onTrackpadScrollStopped$1;
import androidx.compose.foundation.gestures.ScrollableNode$onWheelScrollStopped$1;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        switch (i) {
            case 0:
                int intValue = ((Number) obj2).intValue();
                ((ComposableLambdaImpl) this.receiver).invoke((Composer) obj, intValue);
                break;
            case 1:
                long j = ((Velocity) obj).packedValue;
                ScrollableNode scrollableNode = (ScrollableNode) this.receiver;
                JobKt.launch$default(scrollableNode.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onWheelScrollStopped$1(scrollableNode, j, null), 3);
                break;
            default:
                long j2 = ((Velocity) obj).packedValue;
                ScrollableNode scrollableNode2 = (ScrollableNode) this.receiver;
                JobKt.launch$default(scrollableNode2.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onTrackpadScrollStopped$1(scrollableNode2, j2, null), 3);
                break;
        }
        return unit;
    }
}
