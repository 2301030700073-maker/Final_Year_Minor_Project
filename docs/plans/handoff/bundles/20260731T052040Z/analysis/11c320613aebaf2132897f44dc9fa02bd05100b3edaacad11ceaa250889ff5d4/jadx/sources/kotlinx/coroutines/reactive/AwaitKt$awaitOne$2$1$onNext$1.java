package kotlinx.coroutines.reactive;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AwaitKt$awaitOne$2$1$onNext$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Subscription $sub;

    public AwaitKt$awaitOne$2$1$onNext$1(Subscription subscription, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.$sub = subscription;
                break;
            default:
                this.$sub = subscription;
                break;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Subscription subscription = this.$sub;
        switch (i) {
            case 0:
                subscription.cancel();
                break;
            default:
                subscription.request(1L);
                break;
        }
        return unit;
    }
}
