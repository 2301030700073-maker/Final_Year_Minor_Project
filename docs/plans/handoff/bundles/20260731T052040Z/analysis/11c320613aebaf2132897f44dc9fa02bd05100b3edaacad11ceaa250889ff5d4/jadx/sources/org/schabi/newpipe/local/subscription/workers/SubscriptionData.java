package org.schabi.newpipe.local.subscription.workers;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionData {
    public final String appVersion;
    public final int appVersionInt;
    public final List subscriptions;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new KoinApplicationKt$$ExternalSyntheticLambda0(11)), null, null};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Companion {
        public final KSerializer serializer() {
            return SubscriptionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SubscriptionData(int i, List list, String str, int i2) {
        if (1 != (i & 1)) {
            Platform_commonKt.throwMissingFieldException(i, 1, SubscriptionData$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.subscriptions = list;
        if ((i & 2) == 0) {
            this.appVersion = "0.29.0";
        } else {
            this.appVersion = str;
        }
        if ((i & 4) == 0) {
            this.appVersionInt = AnalyticsListener.EVENT_AUDIO_SINK_ERROR;
        } else {
            this.appVersionInt = i2;
        }
    }

    public SubscriptionData(List list) {
        list.getClass();
        this.subscriptions = list;
        this.appVersion = "0.29.0";
        this.appVersionInt = AnalyticsListener.EVENT_AUDIO_SINK_ERROR;
    }
}
