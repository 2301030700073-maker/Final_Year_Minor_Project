package com.fsck.k9.controller;

import app.k9mail.legacy.message.controller.MessageReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationOperations$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Set f$0;

    public /* synthetic */ NotificationOperations$$ExternalSyntheticLambda2(Set set, int i) {
        this.$r8$classId = i;
        this.f$0 = set;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Set set = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (set.contains(Long.valueOf(((MessageReference) obj2).folderId))) {
                        arrayList.add(obj2);
                    }
                }
                return arrayList;
            default:
                ((Long) obj).getClass();
                return Boolean.valueOf(!set.contains(r5));
        }
    }
}
