package okhttp3;

import java.util.List;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Handshake$Companion$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ Handshake$Companion$$ExternalSyntheticLambda0(int i, List list) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        List list = this.f$0;
        switch (i) {
            case 0:
                return list;
            case 1:
                Object obj = list.get(2);
                obj.getClass();
                return (Integer) obj;
            default:
                return Integer.valueOf(list.size());
        }
    }
}
