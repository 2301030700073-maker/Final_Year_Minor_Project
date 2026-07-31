package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StartedLazily implements SharingStarted {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        switch (this.$r8$classId) {
            case 0:
                return new SafeFlow(8, subscriptionCountStateFlow);
            default:
                return new SafeFlow(6, SharingCommand.START);
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
