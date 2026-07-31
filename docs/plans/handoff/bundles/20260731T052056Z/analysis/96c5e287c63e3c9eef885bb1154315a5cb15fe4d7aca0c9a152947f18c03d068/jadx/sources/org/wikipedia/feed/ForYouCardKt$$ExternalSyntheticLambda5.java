package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda5 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ PageTitle f$1;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda5(PageTitle pageTitle, Function1 function1) {
        this.$r8$classId = 8;
        this.f$1 = pageTitle;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        PageTitle pageTitle = this.f$1;
        switch (i) {
            case 0:
                function1.invoke(pageTitle);
                break;
            case 1:
                function1.invoke(pageTitle);
                break;
            case 2:
                function1.invoke(pageTitle);
                break;
            case 3:
                function1.invoke(pageTitle);
                break;
            case 4:
                function1.invoke(pageTitle);
                break;
            case 5:
                function1.invoke(pageTitle);
                break;
            case 6:
                function1.invoke(pageTitle);
                break;
            case 7:
                function1.invoke(pageTitle);
                break;
            default:
                if (pageTitle != null) {
                    function1.invoke(pageTitle);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda5(Function1 function1, PageTitle pageTitle, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = pageTitle;
    }
}
