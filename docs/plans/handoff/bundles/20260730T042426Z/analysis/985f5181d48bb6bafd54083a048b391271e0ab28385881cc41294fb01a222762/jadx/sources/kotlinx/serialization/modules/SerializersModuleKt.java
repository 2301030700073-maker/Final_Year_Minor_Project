package kotlinx.serialization.modules;

import kotlin.collections.MapsKt;

/* compiled from: SerializersModule.kt */
/* loaded from: classes2.dex */
public abstract class SerializersModuleKt {
    private static final SerializersModule EmptySerializersModule = new SerialModuleImpl(MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap());

    public static final SerializersModule getEmptySerializersModule() {
        return EmptySerializersModule;
    }
}
