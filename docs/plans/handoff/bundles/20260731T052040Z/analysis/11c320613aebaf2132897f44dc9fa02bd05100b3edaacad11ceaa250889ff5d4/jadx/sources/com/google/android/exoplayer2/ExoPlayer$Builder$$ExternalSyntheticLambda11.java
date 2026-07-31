package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.util.Clock;
import com.google.common.base.Function;
import j$.util.function.Function$CC;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda11 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnalyticsCollector f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda11(AnalyticsCollector analyticsCollector, int i) {
        this.$r8$classId = i;
        this.f$0 = analyticsCollector;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        AnalyticsCollector lambda$new$13;
        AnalyticsCollector lambda$setAnalyticsCollector$21;
        int i = this.$r8$classId;
        AnalyticsCollector analyticsCollector = this.f$0;
        Clock clock = (Clock) obj;
        switch (i) {
            case 0:
                lambda$new$13 = ExoPlayer.Builder.lambda$new$13(analyticsCollector, clock);
                return lambda$new$13;
            default:
                lambda$setAnalyticsCollector$21 = ExoPlayer.Builder.lambda$setAnalyticsCollector$21(analyticsCollector, clock);
                return lambda$setAnalyticsCollector$21;
        }
    }

    public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
