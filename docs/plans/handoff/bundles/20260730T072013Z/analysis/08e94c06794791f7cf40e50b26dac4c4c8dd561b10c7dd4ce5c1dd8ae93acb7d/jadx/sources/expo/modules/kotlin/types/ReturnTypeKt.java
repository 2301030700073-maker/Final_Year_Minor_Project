package expo.modules.kotlin.types;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: ReturnType.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\u0086\b¨\u0006\u0003"}, d2 = {"toReturnType", "Lexpo/modules/kotlin/types/ReturnType;", "T", "expo-modules-core_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ReturnTypeKt {
    public static final /* synthetic */ <T> ReturnType toReturnType() {
        Map<KClass<?>, ReturnType> types = ReturnTypeProvider.INSTANCE.getTypes();
        Intrinsics.reifiedOperationMarker(4, "T");
        ReturnType returnType = types.get(Reflection.getOrCreateKotlinClass(Object.class));
        if (returnType != null) {
            return returnType;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        ReturnType returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
        Map<KClass<?>, ReturnType> types2 = ReturnTypeProvider.INSTANCE.getTypes();
        Intrinsics.reifiedOperationMarker(4, "T");
        types2.put(Reflection.getOrCreateKotlinClass(Object.class), returnType2);
        return returnType2;
    }
}
