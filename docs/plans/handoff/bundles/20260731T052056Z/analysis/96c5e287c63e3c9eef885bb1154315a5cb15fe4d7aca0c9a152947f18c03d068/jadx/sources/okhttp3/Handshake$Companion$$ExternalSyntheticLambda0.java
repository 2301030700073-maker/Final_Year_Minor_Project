package okhttp3;

import java.util.List;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Handshake$Companion$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ Handshake$Companion$$ExternalSyntheticLambda0(List list, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        List list = this.f$0;
        switch (i) {
            case 1:
                Object obj = list.get(2);
                obj.getClass();
                break;
        }
        return Integer.valueOf(list.size());
    }
}
