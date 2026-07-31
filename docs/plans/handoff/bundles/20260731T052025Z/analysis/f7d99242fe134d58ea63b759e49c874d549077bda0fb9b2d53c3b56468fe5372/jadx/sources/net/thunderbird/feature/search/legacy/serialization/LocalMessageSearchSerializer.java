package net.thunderbird.feature.search.legacy.serialization;

import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.Map;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.Charsets;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.WriteModeKt;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModuleKt;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okio.PriorityQueue;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalMessageSearchSerializer {
    public static final JsonImpl json;

    static {
        ZipFilesKt$$ExternalSyntheticLambda0 zipFilesKt$$ExternalSyntheticLambda0 = new ZipFilesKt$$ExternalSyntheticLambda0(5);
        Json.Default r1 = Json.Default;
        r1.getClass();
        JsonBuilder jsonBuilder = new JsonBuilder();
        ProvidedValue providedValue = r1.configuration;
        boolean z = providedValue.explicitNull;
        String str = (String) providedValue.compositionLocal;
        String str2 = (String) providedValue.mutationPolicy;
        ClassDiscriminatorMode classDiscriminatorMode = (ClassDiscriminatorMode) providedValue.providedValue;
        boolean z2 = providedValue.isDynamic;
        jsonBuilder.serializersModule = r1.serializersModule;
        boolean z3 = providedValue.canOverride;
        zipFilesKt$$ExternalSyntheticLambda0.invoke(jsonBuilder);
        if (!Intrinsics.areEqual(str, "    ")) {
            UriKt$$ExternalSyntheticBUOutline0.m("Indent should not be specified when default printing mode is used");
            return;
        }
        ProvidedValue providedValue2 = new ProvidedValue(z, str, str2, z2, classDiscriminatorMode, z3);
        SerialModuleImpl serialModuleImpl = jsonBuilder.serializersModule;
        serialModuleImpl.getClass();
        JsonImpl jsonImpl = new JsonImpl(providedValue2, serialModuleImpl);
        if (serialModuleImpl != SerializersModuleKt.EmptySerializersModule) {
            boolean z4 = ((ClassDiscriminatorMode) providedValue2.providedValue) != ClassDiscriminatorMode.NONE;
            for (Map.Entry entry : serialModuleImpl.class2ContextualFactory.entrySet()) {
                KClass kClass = (KClass) entry.getKey();
                ContextualProvider contextualProvider = (ContextualProvider) entry.getValue();
                if (contextualProvider instanceof ContextualProvider.Argless) {
                    kClass.getClass();
                    MessageSearchFieldAsSearchFieldSerializer messageSearchFieldAsSearchFieldSerializer = MessageSearchFieldAsSearchFieldSerializer.INSTANCE;
                } else {
                    if (!(contextualProvider instanceof ContextualProvider.WithTypeArguments)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return;
                    }
                    kClass.getClass();
                }
            }
            for (Map.Entry entry2 : serialModuleImpl.polyBase2Serializers.entrySet()) {
                KClass kClass2 = (KClass) entry2.getKey();
                for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                    KClass kClass3 = (KClass) entry3.getKey();
                    KSerializer kSerializer = (KSerializer) entry3.getValue();
                    kClass2.getClass();
                    kClass3.getClass();
                    kSerializer.getClass();
                    RangesKt kind = kSerializer.getDescriptor().getKind();
                    if ((kind instanceof PolymorphicKind$OPEN) || Intrinsics.areEqual(kind, SerialKind$CONTEXTUAL.INSTANCE)) {
                        DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Serializer for ", ((ClassReference) kClass3).getSimpleName(), " can't be registered as a subclass for polymorphic serialization because its kind ", kind, " is not concrete. To work with multiple hierarchies, register it as a base class.");
                        return;
                    } else if (z4 && (Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE$2) || Intrinsics.areEqual(kind, StructureKind$MAP.INSTANCE) || (kind instanceof PrimitiveKind$INT) || (kind instanceof SerialKind$ENUM))) {
                        DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Serializer for ", ((ClassReference) kClass3).getSimpleName(), " of kind ", kind, " cannot be serialized polymorphically with class discriminator.");
                        return;
                    }
                }
            }
            for (Map.Entry entry4 : serialModuleImpl.polyBase2DefaultSerializerProvider.entrySet()) {
                KClass kClass4 = (KClass) entry4.getKey();
                Function1 function1 = (Function1) entry4.getValue();
                kClass4.getClass();
                function1.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
            }
            for (Map.Entry entry5 : serialModuleImpl.polyBase2DefaultDeserializerProvider.entrySet()) {
                KClass kClass5 = (KClass) entry5.getKey();
                Function1 function12 = (Function1) entry5.getValue();
                kClass5.getClass();
                function12.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function12);
            }
        }
        json = jsonImpl;
    }

    public static LocalMessageSearch deserialize(byte[] bArr) {
        String str = new String(bArr, Charsets.UTF_8);
        KSerializer serializer = LocalMessageSearch.Companion.serializer();
        JsonImpl jsonImpl = json;
        jsonImpl.getClass();
        serializer.getClass();
        RulerTrackingMap StringJsonLexer = WriteModeKt.StringJsonLexer(jsonImpl, str);
        Object decodeSerializableValue = new StreamingJsonDecoder(jsonImpl, WriteMode.OBJ, StringJsonLexer, serializer.getDescriptor(), null).decodeSerializableValue(serializer);
        if (StringJsonLexer.consumeNextToken() == 10) {
            return (LocalMessageSearch) decodeSerializableValue;
        }
        RulerTrackingMap.fail$default(StringJsonLexer, "Expected EOF after parsing, but had " + ((String) StringJsonLexer.newRulers).charAt(StringJsonLexer.size - 1) + " instead", 0, null, 6);
        throw null;
    }

    public static byte[] serialize(LocalMessageSearch localMessageSearch) {
        char[] cArr;
        localMessageSearch.getClass();
        JsonImpl jsonImpl = json;
        KSerializer serializer = LocalMessageSearch.Companion.serializer();
        jsonImpl.getClass();
        serializer.getClass();
        PriorityQueue priorityQueue = new PriorityQueue(17, (byte) 0);
        CharArrayPool charArrayPool = CharArrayPool.INSTANCE;
        synchronized (charArrayPool) {
            ArrayDeque arrayDeque = charArrayPool.arrays;
            cArr = null;
            char[] cArr2 = (char[]) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (cArr2 != null) {
                charArrayPool.charsTotal -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        priorityQueue.array = cArr;
        try {
            new StreamingJsonEncoder(new LocalFolder.AnonymousClass8(priorityQueue), jsonImpl, WriteMode.OBJ, new StreamingJsonEncoder[WriteMode.$ENTRIES.getSize()]).encodeSerializableValue(serializer, localMessageSearch);
            String priorityQueue2 = priorityQueue.toString();
            priorityQueue.release();
            byte[] bytes = priorityQueue2.getBytes(Charsets.UTF_8);
            bytes.getClass();
            return bytes;
        } catch (Throwable th) {
            priorityQueue.release();
            throw th;
        }
    }
}
