package com.fsck.k9.backend.imap;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KType;
import kotlinx.serialization.internal.KTypeWrapper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CommandRefreshFolderList$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArrayList f$0;

    public /* synthetic */ CommandRefreshFolderList$$ExternalSyntheticLambda1(int i, ArrayList arrayList) {
        this.$r8$classId = i;
        this.f$0 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ArrayList arrayList = this.f$0;
        switch (i) {
            case 0:
                return "refreshFolderList: foldersToCreate = " + arrayList;
            default:
                return ((KTypeWrapper) ((KType) arrayList.get(0))).getClassifier();
        }
    }
}
