package com.fsck.k9.ui.messagelist;

import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragment$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SortCriteria f$0;

    public /* synthetic */ MessageListFragment$$ExternalSyntheticLambda3(SortCriteria sortCriteria, int i) {
        this.$r8$classId = i;
        this.f$0 = sortCriteria;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        SortCriteria sortCriteria = this.f$0;
        SortType sortType = (SortType) obj;
        switch (i) {
            case 0:
                sortType.getClass();
                return Boolean.valueOf(sortCriteria.primary == sortType);
            default:
                sortType.getClass();
                return Boolean.valueOf(sortCriteria.secondary == sortType);
        }
    }
}
