package org.wikipedia.feed;

import java.util.List;
import kotlin.Lazy;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModule$Discover$$serializer implements GeneratedSerializer {
    public static final ForYouModule$Discover$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ForYouModule$Discover$$serializer forYouModule$Discover$$serializer = new ForYouModule$Discover$$serializer();
        INSTANCE = forYouModule$Discover$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.ForYouModule.Discover", forYouModule$Discover$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("age", false);
        pluginGeneratedSerialDescriptor.addElement("index", false);
        pluginGeneratedSerialDescriptor.addElement("cards", false);
        pluginGeneratedSerialDescriptor.addElement("isEnabled", false);
        pluginGeneratedSerialDescriptor.addElement("isLoading", true);
        pluginGeneratedSerialDescriptor.addElement("updateFrequency", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = ForYouModule.Discover.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, lazyArr[2].getValue(), booleanSerializer, booleanSerializer, lazyArr[5].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouModule.Discover.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        List list = null;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                    i |= 4;
                    break;
                case 3:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) beginStructure.decodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), recommendedReadingListUpdateFrequency);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ForYouModule.Discover(i, i2, i3, list, z2, z3, recommendedReadingListUpdateFrequency);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ForYouModule.Discover discover = (ForYouModule.Discover) obj;
        discover.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouModule.Discover.$childSerializers;
        int i = discover.age;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = discover.updateFrequency;
        boolean z = discover.isLoading;
        beginStructure.encodeIntElement(0, i, serialDescriptor);
        beginStructure.encodeIntElement(1, discover.index, serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), discover.cards);
        beginStructure.encodeBooleanElement(serialDescriptor, 3, discover.isEnabled);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 4, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || recommendedReadingListUpdateFrequency != RecommendedReadingListUpdateFrequency.DAILY) {
            beginStructure.encodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), recommendedReadingListUpdateFrequency);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
