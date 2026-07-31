package org.wikipedia.games;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;
import org.wikipedia.activitytab.ImpactModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda2(int i, String str, List list, Function2 function2, int i2) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = list;
        this.f$3 = function2;
        this.f$4 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Object obj3 = this.f$1;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$3;
        Object obj4 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).intValue();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Jsoup.OnThisDayGameCards(this.f$0, (String) obj3, (List) obj4, (Function2) function, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                LazyLayoutKt.LazyLayoutPinnableItem(this.f$1, this.f$0, (LazyLayoutPinnedItemList) obj4, (ComposableLambdaImpl) function, (GapComposer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                ImpactModuleKt.MostViewedCard((Modifier) obj3, (Map) obj4, 3, (Function1) function, (GapComposer) obj, Updater.updateChangedFlags(this.f$0 | 1), this.f$4);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda2(Modifier modifier, Map map, Function1 function1, int i, int i2) {
        this.f$1 = modifier;
        this.f$2 = map;
        this.f$3 = function1;
        this.f$0 = i;
        this.f$4 = i2;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda2(Object obj, int i, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f$1 = obj;
        this.f$0 = i;
        this.f$2 = lazyLayoutPinnedItemList;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i2;
    }
}
