package com.fsck.k9.ui.messagelist;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ SortType f$1;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda0(Function1 function1, SortType sortType, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = sortType;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SortType sortType = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(sortType);
                break;
            default:
                function1.invoke(sortType);
                break;
        }
        return unit;
    }
}
