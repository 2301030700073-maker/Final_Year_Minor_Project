package expo.modules.kotlin.types;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: ReturnType.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\n\u001a\u00020\u0007\"\u0006\b\u0000\u0010\u000b\u0018\u0001H\u0086\bR!\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lexpo/modules/kotlin/types/ReturnTypeProvider;", "", "<init>", "()V", "types", "", "Lkotlin/reflect/KClass;", "Lexpo/modules/kotlin/types/ReturnType;", "getTypes", "()Ljava/util/Map;", "get", "T", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ReturnTypeProvider {
    public static final ReturnTypeProvider INSTANCE = new ReturnTypeProvider();
    private static final Map<KClass<?>, ReturnType> types = new LinkedHashMap();

    private ReturnTypeProvider() {
    }

    public final Map<KClass<?>, ReturnType> getTypes() {
        return types;
    }

    public final /* synthetic */ <T> ReturnType get() {
        Map<KClass<?>, ReturnType> types2 = getTypes();
        Intrinsics.reifiedOperationMarker(4, "T");
        ReturnType returnType = types2.get(Reflection.getOrCreateKotlinClass(Object.class));
        if (returnType != null) {
            return returnType;
        }
        Intrinsics.reifiedOperationMarker(4, "T");
        ReturnType returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
        Map<KClass<?>, ReturnType> types3 = INSTANCE.getTypes();
        Intrinsics.reifiedOperationMarker(4, "T");
        types3.put(Reflection.getOrCreateKotlinClass(Object.class), returnType2);
        return returnType2;
    }
}
