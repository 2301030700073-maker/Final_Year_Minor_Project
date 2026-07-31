package kotlinx.serialization.json;

import coil3.ComponentRegistry;
import kotlinx.serialization.modules.SerializersModuleKt;
import org.koin.core.registry.PropertyRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Json {
    public static final Default Default = new Default(new JsonConfiguration(false, false, false, true, "    ", false, "type", true, ClassDiscriminatorMode.POLYMORPHIC, true), SerializersModuleKt.EmptySerializersModule);
    public final PropertyRegistry _schemaCache = new PropertyRegistry();
    public final JsonConfiguration configuration;
    public final ComponentRegistry.Builder serializersModule;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Default extends Json {
    }

    public Json(JsonConfiguration jsonConfiguration, ComponentRegistry.Builder builder) {
        this.configuration = jsonConfiguration;
        this.serializersModule = builder;
    }
}
