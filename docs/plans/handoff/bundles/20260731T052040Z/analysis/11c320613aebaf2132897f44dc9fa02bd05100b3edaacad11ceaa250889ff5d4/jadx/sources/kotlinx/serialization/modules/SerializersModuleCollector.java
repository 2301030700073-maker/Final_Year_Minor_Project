package kotlinx.serialization.modules;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SerializersModuleCollector {
    void contextual(ClassReference classReference, Function1 function1);

    void contextual(ClassReference classReference, KSerializer kSerializer);

    void polymorphic(ClassReference classReference, ClassReference classReference2, KSerializer kSerializer);

    void polymorphicDefaultDeserializer(ClassReference classReference, Function1 function1);

    void polymorphicDefaultSerializer(ClassReference classReference, Function1 function1);
}
