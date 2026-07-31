package org.wikipedia.games;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InfiniteTransition f$0;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda0(InfiniteTransition infiniteTransition, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = infiniteTransition;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        InfiniteTransition infiniteTransition = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                Jsoup.GamesHubLoadingShimmer(infiniteTransition, gapComposer, Updater.updateChangedFlags(9));
                break;
            default:
                infiniteTransition.run$animation_core(Updater.updateChangedFlags(1), gapComposer);
                break;
        }
        return unit;
    }
}
