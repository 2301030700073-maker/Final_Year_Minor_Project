package org.wikipedia.compose.components.menu;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageOverflowMenuViewModel$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function2 f$0;
    public final /* synthetic */ HistoryEntry f$1;
    public final /* synthetic */ List f$2;

    public /* synthetic */ PageOverflowMenuViewModel$$ExternalSyntheticLambda4(Function2 function2, List list, HistoryEntry historyEntry) {
        this.f$0 = function2;
        this.f$2 = list;
        this.f$1 = historyEntry;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        HistoryEntry historyEntry = this.f$1;
        List list = this.f$2;
        Function2 function2 = this.f$0;
        switch (i) {
            case 0:
                function2.invoke(historyEntry, list);
                break;
            default:
                function2.invoke(Long.valueOf(((ReadingList) list.get(0)).id), historyEntry);
                break;
        }
        return unit;
    }

    public /* synthetic */ PageOverflowMenuViewModel$$ExternalSyntheticLambda4(Function2 function2, HistoryEntry historyEntry, List list) {
        this.f$0 = function2;
        this.f$1 = historyEntry;
        this.f$2 = list;
    }
}
