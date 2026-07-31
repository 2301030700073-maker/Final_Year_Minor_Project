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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModule$PlacesOfInterest$$serializer implements GeneratedSerializer {
    public static final ForYouModule$PlacesOfInterest$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ForYouModule$PlacesOfInterest$$serializer forYouModule$PlacesOfInterest$$serializer = new ForYouModule$PlacesOfInterest$$serializer();
        INSTANCE = forYouModule$PlacesOfInterest$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.feed.ForYouModule.PlacesOfInterest", forYouModule$PlacesOfInterest$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("age", false);
        pluginGeneratedSerialDescriptor.addElement("index", false);
        pluginGeneratedSerialDescriptor.addElement("cards", false);
        pluginGeneratedSerialDescriptor.addElement("hasLocationPermission", false);
        pluginGeneratedSerialDescriptor.addElement("isLoading", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = ForYouModule.PlacesOfInterest.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, lazyArr[2].getValue(), booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouModule.PlacesOfInterest.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                z2 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                z3 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ForYouModule.PlacesOfInterest(i, i2, i3, list, z2, z3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ForYouModule.PlacesOfInterest placesOfInterest = (ForYouModule.PlacesOfInterest) obj;
        placesOfInterest.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ForYouModule.PlacesOfInterest.$childSerializers;
        int i = placesOfInterest.age;
        boolean z = placesOfInterest.isLoading;
        beginStructure.encodeIntElement(0, i, serialDescriptor);
        beginStructure.encodeIntElement(1, placesOfInterest.index, serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), placesOfInterest.cards);
        beginStructure.encodeBooleanElement(serialDescriptor, 3, placesOfInterest.hasLocationPermission);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 4, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
