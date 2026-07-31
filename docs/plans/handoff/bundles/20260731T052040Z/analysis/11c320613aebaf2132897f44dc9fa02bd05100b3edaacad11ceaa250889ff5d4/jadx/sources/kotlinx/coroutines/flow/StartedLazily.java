package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartedLazily implements SharingStarted {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        switch (this.$r8$classId) {
            case 0:
                return new StartedLazily$command$$inlined$unsafeFlow$1(subscriptionCountStateFlow);
            default:
                return new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2();
        }
    }

    public final String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "SharingStarted.Lazily";
            default:
                return "SharingStarted.Eagerly";
        }
    }
}
