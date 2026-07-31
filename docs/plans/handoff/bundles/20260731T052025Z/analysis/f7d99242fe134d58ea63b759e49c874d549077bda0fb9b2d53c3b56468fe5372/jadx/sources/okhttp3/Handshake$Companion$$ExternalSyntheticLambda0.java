package okhttp3;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KType;
import kotlinx.serialization.internal.KTypeWrapper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                return "refreshFolderList: folders to remove = " + list;
            case 2:
                return "Account for message " + CollectionsKt.first(list) + " not found, skipping copy/move operation";
            case 3:
                return "Account for message " + CollectionsKt.first(list) + " not found, skipping copy/move operation";
            case 4:
                return ((KTypeWrapper) ((KType) list.get(0))).getClassifier();
            case 5:
                return ((KTypeWrapper) ((KType) list.get(0))).getClassifier();
            default:
                return "LoadMessagesLegacySideEffect.handle() messages: " + list;
        }
    }
}
