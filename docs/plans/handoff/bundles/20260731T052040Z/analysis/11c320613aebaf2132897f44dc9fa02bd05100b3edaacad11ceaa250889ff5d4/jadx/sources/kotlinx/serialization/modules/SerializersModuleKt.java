package kotlinx.serialization.modules;

import coil3.ComponentRegistry;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SerializersModuleKt {
    public static final ComponentRegistry.Builder EmptySerializersModule;

    static {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        EmptySerializersModule = new ComponentRegistry.Builder(emptyMap, emptyMap, emptyMap, emptyMap, emptyMap);
    }
}
