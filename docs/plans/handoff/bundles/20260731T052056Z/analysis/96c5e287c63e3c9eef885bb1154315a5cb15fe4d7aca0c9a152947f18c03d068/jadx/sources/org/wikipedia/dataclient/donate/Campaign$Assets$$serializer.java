package org.wikipedia.dataclient.donate;

import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.donate.Campaign;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Campaign$Assets$$serializer implements GeneratedSerializer {
    public static final Campaign$Assets$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Campaign$Assets$$serializer campaign$Assets$$serializer = new Campaign$Assets$$serializer();
        INSTANCE = campaign$Assets$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.donate.Campaign.Assets", campaign$Assets$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("weight", true);
        pluginGeneratedSerialDescriptor.addElement("text", true);
        pluginGeneratedSerialDescriptor.addElement("footer", true);
        pluginGeneratedSerialDescriptor.addElement("actions", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = Campaign.Assets.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, FloatSerializer.INSTANCE, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), lazyArr[4].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Campaign.Assets.$childSerializers;
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Campaign.Action[] actionArr = null;
        float f = 0.0f;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                f = beginStructure.decodeFloatElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str3);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                actionArr = (Campaign.Action[]) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), actionArr);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Campaign.Assets(i, str, f, str2, str3, actionArr);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Campaign.Assets assets = (Campaign.Assets) obj;
        assets.getClass();
        Campaign.Action[] actionArr = assets.actions;
        String str = assets.footer;
        String str2 = assets.text;
        float f = assets.weight;
        String str3 = assets.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Campaign.Assets.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f, 1.0f) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 1, f);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(actionArr, new Campaign.Action[0])) {
            beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), actionArr);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
