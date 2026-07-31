package org.wikipedia.search;

import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.paging.compose.LazyPagingItems;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.watchlist.WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchViewsKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ HybridSearchViewsKt$$ExternalSyntheticLambda3(Object obj, Function1 function1, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = function1;
        this.f$2 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$2;
        Function1 function1 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj3;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(lazyPagingItems.getItemCount(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new RandomScreenKt$$ExternalSyntheticLambda5(lazyPagingItems, function1, (String) obj2, 3), true, -941974860));
                break;
            default:
                List list = (List) obj3;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                lazyListIntervalContent2.items(list.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list, 7), new ComposableLambdaImpl(new WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(list, function1, (MutableState) obj2), true, 802480018));
                break;
        }
        return unit;
    }
}
