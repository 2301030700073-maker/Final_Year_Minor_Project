package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SharingStarted {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static final StartedLazily Eagerly = new StartedLazily(1);
        public static final StartedLazily Lazily = new StartedLazily(0);
    }

    Flow command(SubscriptionCountStateFlow subscriptionCountStateFlow);
}
