package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KPackageImpl;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KPackageImpl$data$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KPackageImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KPackageImpl$data$1(KPackageImpl kPackageImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = kPackageImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        KPackageImpl kPackageImpl = this.this$0;
        switch (i) {
            case 0:
                return new KPackageImpl.Data(kPackageImpl);
            default:
                return RegexKt.create(kPackageImpl.jClass);
        }
    }
}
