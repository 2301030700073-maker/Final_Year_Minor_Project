package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SharingStarted {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final StartedLazily Eagerly = new StartedLazily(1);
        public static final StartedLazily Lazily = new StartedLazily(0);

        public static StartedWhileSubscribed WhileSubscribed$default() {
            return new StartedWhileSubscribed(5000L, Long.MAX_VALUE);
        }
    }

    Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow);
}
