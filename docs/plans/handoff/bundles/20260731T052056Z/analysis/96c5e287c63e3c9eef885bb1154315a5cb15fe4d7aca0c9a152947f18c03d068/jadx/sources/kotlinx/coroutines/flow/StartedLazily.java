package kotlinx.coroutines.flow;

import androidx.paging.PageFetcher$flow$1;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StartedLazily implements SharingStarted {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        switch (this.$r8$classId) {
            case 0:
                return new SafeFlow(0, new PageFetcher$flow$1(23, subscriptionCountStateFlow, (Continuation) null));
            default:
                return new SafeFlow(5, SharingCommand.START);
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
