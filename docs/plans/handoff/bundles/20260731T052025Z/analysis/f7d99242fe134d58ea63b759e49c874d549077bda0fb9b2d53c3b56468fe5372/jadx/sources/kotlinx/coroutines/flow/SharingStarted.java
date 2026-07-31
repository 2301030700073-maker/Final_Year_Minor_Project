package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SharingStarted {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final StartedLazily Eagerly = new StartedLazily(1);
        public static final StartedLazily Lazily = new StartedLazily(0);
    }

    Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow);
}
