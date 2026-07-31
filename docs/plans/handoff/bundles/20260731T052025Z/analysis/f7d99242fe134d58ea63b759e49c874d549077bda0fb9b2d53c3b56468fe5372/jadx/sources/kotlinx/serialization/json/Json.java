package kotlinx.serialization.json;

import androidx.compose.runtime.ProvidedValue;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Json {
    public static final Default Default = new Default(new ProvidedValue(true, "    ", "type", true, ClassDiscriminatorMode.POLYMORPHIC, true), SerializersModuleKt.EmptySerializersModule);
    public final ConnectionPool _schemaCache = new ConnectionPool(24);
    public final ProvidedValue configuration;
    public final SerialModuleImpl serializersModule;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Default extends Json {
    }

    public Json(ProvidedValue providedValue, SerialModuleImpl serialModuleImpl) {
        this.configuration = providedValue;
        this.serializersModule = serialModuleImpl;
    }
}
