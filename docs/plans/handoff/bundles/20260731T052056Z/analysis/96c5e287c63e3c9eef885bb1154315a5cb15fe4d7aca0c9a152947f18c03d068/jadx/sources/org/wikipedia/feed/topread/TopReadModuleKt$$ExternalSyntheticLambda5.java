package org.wikipedia.feed.topread;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.dataclient.page.PageSummary;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TopReadModuleKt$$ExternalSyntheticLambda5 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ PageSummary f$1;

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda5(Function1 function1, PageSummary pageSummary, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = pageSummary;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PageSummary pageSummary = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(pageSummary);
                break;
            case 1:
                function1.invoke(pageSummary);
                break;
            case 2:
                function1.invoke(pageSummary);
                break;
            case 3:
                function1.invoke(pageSummary);
                break;
            case 4:
                function1.invoke(pageSummary);
                break;
            case 5:
                function1.invoke(pageSummary);
                break;
            default:
                function1.invoke(pageSummary);
                break;
        }
        return unit;
    }
}
