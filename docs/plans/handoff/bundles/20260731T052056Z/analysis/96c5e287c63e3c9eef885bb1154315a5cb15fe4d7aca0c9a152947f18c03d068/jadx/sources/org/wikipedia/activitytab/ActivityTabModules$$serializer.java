package org.wikipedia.activitytab;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabModules$$serializer implements GeneratedSerializer {
    public static final ActivityTabModules$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ActivityTabModules$$serializer activityTabModules$$serializer = new ActivityTabModules$$serializer();
        INSTANCE = activityTabModules$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.activitytab.ActivityTabModules", activityTabModules$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("isTimeSpentEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isReadingInsightsEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isEditingInsightsEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isImpactEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isGamesEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isDonationsEnabled", true);
        pluginGeneratedSerialDescriptor.addElement("isTimelineEnabled", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    z5 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    z6 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    z7 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    z8 = beginStructure.decodeBooleanElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ActivityTabModules(i, z2, z3, z4, z5, z6, z7, z8);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ActivityTabModules activityTabModules = (ActivityTabModules) obj;
        activityTabModules.getClass();
        boolean z = activityTabModules.isTimelineEnabled;
        boolean z2 = activityTabModules.isDonationsEnabled;
        boolean z3 = activityTabModules.isGamesEnabled;
        boolean z4 = activityTabModules.isImpactEnabled;
        boolean z5 = activityTabModules.isEditingInsightsEnabled;
        boolean z6 = activityTabModules.isReadingInsightsEnabled;
        boolean z7 = activityTabModules.isTimeSpentEnabled;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z7) {
            beginStructure.encodeBooleanElement(serialDescriptor, 0, z7);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z6) {
            beginStructure.encodeBooleanElement(serialDescriptor, 1, z6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z5) {
            beginStructure.encodeBooleanElement(serialDescriptor, 2, z5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z4) {
            beginStructure.encodeBooleanElement(serialDescriptor, 3, z4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z3) {
            beginStructure.encodeBooleanElement(serialDescriptor, 4, z3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 5, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 6, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
