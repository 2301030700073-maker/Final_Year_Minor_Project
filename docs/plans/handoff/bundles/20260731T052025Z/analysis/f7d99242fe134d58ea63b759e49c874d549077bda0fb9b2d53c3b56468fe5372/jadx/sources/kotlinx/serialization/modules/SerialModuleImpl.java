package kotlinx.serialization.modules;

import java.util.List;
import java.util.Map;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SerialModuleImpl {
    public final Map class2ContextualFactory;
    public final boolean hasInterfaceContextualSerializers;
    public final Map polyBase2DefaultDeserializerProvider;
    public final Map polyBase2DefaultSerializerProvider;
    public final Map polyBase2NamedSerializers;
    public final Map polyBase2Serializers;

    public SerialModuleImpl(Map map, Map map2, Map map3, Map map4, Map map5, boolean z) {
        map.getClass();
        map2.getClass();
        map3.getClass();
        map4.getClass();
        map5.getClass();
        this.class2ContextualFactory = map;
        this.polyBase2Serializers = map2;
        this.polyBase2DefaultSerializerProvider = map3;
        this.polyBase2NamedSerializers = map4;
        this.polyBase2DefaultDeserializerProvider = map5;
        this.hasInterfaceContextualSerializers = z;
    }

    public final KSerializer getContextual(KClass kClass, List list) {
        list.getClass();
        ContextualProvider contextualProvider = (ContextualProvider) this.class2ContextualFactory.get(kClass);
        KSerializer invoke = contextualProvider != null ? contextualProvider.invoke(list) : null;
        if (invoke instanceof KSerializer) {
            return invoke;
        }
        return null;
    }
}
