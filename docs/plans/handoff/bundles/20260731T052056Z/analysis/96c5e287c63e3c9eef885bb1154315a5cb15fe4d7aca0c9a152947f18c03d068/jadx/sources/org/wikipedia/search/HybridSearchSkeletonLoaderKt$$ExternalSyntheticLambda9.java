package org.wikipedia.search;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda9 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ List f$2;
    public final /* synthetic */ InfiniteTransition f$3;

    public /* synthetic */ HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda9(Modifier modifier, List list, InfiniteTransition infiniteTransition, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$2 = list;
        this.f$3 = infiniteTransition;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        InfiniteTransition infiniteTransition = this.f$3;
        List list = this.f$2;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                NoSearchResultsKt.HorizontalHybridSearchListItemLoader(modifier, list, infiniteTransition, gapComposer, Updater.updateChangedFlags(4151));
                break;
            default:
                TabsBoxKt.ListItemSkeletonLoader(modifier, list, infiniteTransition, gapComposer, Updater.updateChangedFlags(519));
                break;
        }
        return unit;
    }
}
