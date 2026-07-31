package org.wikipedia.search;

import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.text.selection.SelectableInfo;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NoSearchResultsKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ NoSearchResultsKt$$ExternalSyntheticLambda3(int i, Function0 function0) {
        this.$r8$classId = 1;
        this.f$1 = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((Function1) obj).invoke(Integer.valueOf(i2));
                return Unit.INSTANCE;
            case 1:
                return new DefaultPagerState(i2, RecyclerView.DECELERATION_RATE, (Function0) obj);
            default:
                return Integer.valueOf(((SelectableInfo) obj).textLayoutResult.multiParagraph.getLineForOffset(i2));
        }
    }

    public /* synthetic */ NoSearchResultsKt$$ExternalSyntheticLambda3(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }
}
