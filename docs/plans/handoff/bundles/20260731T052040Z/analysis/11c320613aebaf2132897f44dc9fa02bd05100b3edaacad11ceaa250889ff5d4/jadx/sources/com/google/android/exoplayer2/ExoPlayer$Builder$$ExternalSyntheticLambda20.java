package com.google.android.exoplayer2;

import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.util.Clock;
import com.google.common.base.Function;
import j$.util.function.Function$CC;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda20 implements Function {
    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        return new DefaultAnalyticsCollector((Clock) obj);
    }

    public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
