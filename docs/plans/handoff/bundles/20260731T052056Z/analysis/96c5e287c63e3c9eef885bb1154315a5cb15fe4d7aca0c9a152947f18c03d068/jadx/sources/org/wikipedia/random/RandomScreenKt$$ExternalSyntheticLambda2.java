package org.wikipedia.random;

import androidx.compose.foundation.pager.DefaultPagerState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ CoroutineScope f$0;
    public final /* synthetic */ DefaultPagerState f$1;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda2(DefaultPagerState defaultPagerState, CoroutineScope coroutineScope) {
        this.f$1 = defaultPagerState;
        this.f$0 = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = this.f$0;
        DefaultPagerState defaultPagerState = this.f$1;
        switch (i) {
            case 0:
                AwaitKt.launch$default(coroutineScope, null, null, new RandomScreenKt$RandomScreen$goToNext$1$1$1(defaultPagerState, null, 0), 3);
                break;
            default:
                if (defaultPagerState.getCurrentPage() > 0) {
                    AwaitKt.launch$default(coroutineScope, null, null, new RandomScreenKt$RandomScreen$goToNext$1$1$1(defaultPagerState, null, 1), 3);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda2(CoroutineScope coroutineScope, DefaultPagerState defaultPagerState) {
        this.f$0 = coroutineScope;
        this.f$1 = defaultPagerState;
    }
}
