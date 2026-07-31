package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.functions.Consumer;
import org.reactivestreams.Subscription;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowableInternalHelper$RequestMax implements Consumer {
    public static final /* synthetic */ FlowableInternalHelper$RequestMax[] $VALUES;
    public static final FlowableInternalHelper$RequestMax INSTANCE;

    static {
        FlowableInternalHelper$RequestMax flowableInternalHelper$RequestMax = new FlowableInternalHelper$RequestMax("INSTANCE", 0);
        INSTANCE = flowableInternalHelper$RequestMax;
        $VALUES = new FlowableInternalHelper$RequestMax[]{flowableInternalHelper$RequestMax};
    }

    public static FlowableInternalHelper$RequestMax valueOf(String str) {
        return (FlowableInternalHelper$RequestMax) Enum.valueOf(FlowableInternalHelper$RequestMax.class, str);
    }

    public static FlowableInternalHelper$RequestMax[] values() {
        return (FlowableInternalHelper$RequestMax[]) $VALUES.clone();
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        ((Subscription) obj).request(Long.MAX_VALUE);
    }
}
