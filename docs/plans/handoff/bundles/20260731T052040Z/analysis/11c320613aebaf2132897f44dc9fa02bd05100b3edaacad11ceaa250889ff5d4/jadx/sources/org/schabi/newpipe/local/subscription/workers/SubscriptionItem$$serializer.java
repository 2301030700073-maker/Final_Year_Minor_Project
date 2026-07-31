package org.schabi.newpipe.local.subscription.workers;

import androidx.sqlite.SQLite;
import kotlin.Deprecated;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionItem$$serializer implements GeneratedSerializer {
    public static final SubscriptionItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SubscriptionItem$$serializer subscriptionItem$$serializer = new SubscriptionItem$$serializer();
        INSTANCE = subscriptionItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.schabi.newpipe.local.subscription.workers.SubscriptionItem", subscriptionItem$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("service_id", false);
        pluginGeneratedSerialDescriptor.addElement("url", false);
        pluginGeneratedSerialDescriptor.addElement("name", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SubscriptionItem$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{IntSerializer.INSTANCE, stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final SubscriptionItem mo469deserialize(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        String str = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                str2 = beginStructure.decodeStringElement(serialDescriptor, 2);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SubscriptionItem(i, i2, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, SubscriptionItem subscriptionItem) {
        encoder.getClass();
        subscriptionItem.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
        int i = subscriptionItem.serviceId;
        beginStructure.encodeElement(serialDescriptor, 0);
        beginStructure.encodeInt(i);
        beginStructure.encodeStringElement(serialDescriptor, 1, subscriptionItem.url);
        beginStructure.encodeStringElement(serialDescriptor, 2, subscriptionItem.name);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public /* bridge */ KSerializer[] typeParametersSerializers() {
        return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
    }
}
