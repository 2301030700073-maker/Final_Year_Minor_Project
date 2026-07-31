package net.thunderbird.core.logging.legacy;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Log$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Object[] f$1;

    public /* synthetic */ Log$$ExternalSyntheticLambda0(String str, Object[] objArr, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = objArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object[] objArr = this.f$1;
        String str = this.f$0;
        switch (i) {
        }
        return Log.formatMessage(str, objArr);
    }
}
