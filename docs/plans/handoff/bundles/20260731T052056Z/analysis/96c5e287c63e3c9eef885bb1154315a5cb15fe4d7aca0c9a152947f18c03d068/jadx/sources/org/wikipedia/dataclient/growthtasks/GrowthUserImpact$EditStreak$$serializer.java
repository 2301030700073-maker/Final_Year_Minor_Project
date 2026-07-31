package org.wikipedia.dataclient.growthtasks;

import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthUserImpact$EditStreak$$serializer implements GeneratedSerializer {
    public static final GrowthUserImpact$EditStreak$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthUserImpact$EditStreak$$serializer growthUserImpact$EditStreak$$serializer = new GrowthUserImpact$EditStreak$$serializer();
        INSTANCE = growthUserImpact$EditStreak$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthUserImpact.EditStreak", growthUserImpact$EditStreak$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("datePeriod", true);
        pluginGeneratedSerialDescriptor.addElement("totalEditCountForPeriod", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UnsignedKt.getNullable(GrowthUserImpact$EditDateRange$$serializer.INSTANCE), IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        GrowthUserImpact.EditDateRange editDateRange = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                editDateRange = (GrowthUserImpact.EditDateRange) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, GrowthUserImpact$EditDateRange$$serializer.INSTANCE, editDateRange);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                i2 = beginStructure.decodeIntElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthUserImpact.EditStreak(i, editDateRange, i2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        GrowthUserImpact.EditStreak editStreak = (GrowthUserImpact.EditStreak) obj;
        editStreak.getClass();
        int i = editStreak.totalEditCountForPeriod;
        GrowthUserImpact.EditDateRange editDateRange = editStreak.datePeriod;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || editDateRange != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, GrowthUserImpact$EditDateRange$$serializer.INSTANCE, editDateRange);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(1, i, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
