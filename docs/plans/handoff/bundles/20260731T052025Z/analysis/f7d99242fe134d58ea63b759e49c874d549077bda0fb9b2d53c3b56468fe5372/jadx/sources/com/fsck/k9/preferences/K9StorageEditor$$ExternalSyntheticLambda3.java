package com.fsck.k9.preferences;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class K9StorageEditor$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ K9StorageEditor$$ExternalSyntheticLambda3(int i, long j, long j2) {
        this.$r8$classId = i;
        this.f$0 = j;
        this.f$1 = j2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        long j = this.f$1;
        long j2 = this.f$0;
        switch (i) {
            case 0:
                return String.format("Preferences commit took %d ms", Long.valueOf(j2 - j));
            default:
                return String.format("Preferences load took %d ms", Long.valueOf(j2 - j));
        }
    }
}
