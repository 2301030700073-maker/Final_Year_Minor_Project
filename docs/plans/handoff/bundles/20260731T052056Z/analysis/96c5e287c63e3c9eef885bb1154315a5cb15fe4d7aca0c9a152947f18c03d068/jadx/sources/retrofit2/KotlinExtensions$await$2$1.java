package retrofit2;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KotlinExtensions$await$2$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Call $this_await;

    public /* synthetic */ KotlinExtensions$await$2$1(Call call, int i) {
        this.$r8$classId = i;
        this.$this_await = call;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Call call = this.$this_await;
        switch (i) {
            case 0:
                call.cancel();
                break;
            case 1:
                call.cancel();
                break;
            default:
                call.cancel();
                break;
        }
        return unit;
    }
}
