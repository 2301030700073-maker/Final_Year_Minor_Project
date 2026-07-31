package org.wikipedia.search;

import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NoSearchResultsKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ NoSearchResultsKt$$ExternalSyntheticLambda0(List list, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        List list = this.f$0;
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
        switch (i) {
            case 0:
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(list.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new NewsModuleKt$$ExternalSyntheticLambda3(list, function1, 1), true, 1204998688));
                break;
            default:
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(list.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list, 0), new ComposableLambdaImpl(new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4(0, function1, list), true, 802480018));
                break;
        }
        return unit;
    }
}
