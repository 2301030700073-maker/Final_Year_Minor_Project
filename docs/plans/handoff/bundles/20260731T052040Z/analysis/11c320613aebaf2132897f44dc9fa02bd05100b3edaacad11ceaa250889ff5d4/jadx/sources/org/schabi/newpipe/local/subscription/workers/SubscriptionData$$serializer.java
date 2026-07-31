package org.schabi.newpipe.local.subscription.workers;

import androidx.sqlite.SQLite;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
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
public final /* synthetic */ class SubscriptionData$$serializer implements GeneratedSerializer {
    public static final SubscriptionData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SubscriptionData$$serializer subscriptionData$$serializer = new SubscriptionData$$serializer();
        INSTANCE = subscriptionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.schabi.newpipe.local.subscription.workers.SubscriptionData", subscriptionData$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("subscriptions", false);
        pluginGeneratedSerialDescriptor.addElement("app_version", true);
        pluginGeneratedSerialDescriptor.addElement("app_version_int", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private SubscriptionData$$serializer() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{SubscriptionData.$childSerializers[0].getValue(), StringSerializer.INSTANCE, IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final SubscriptionData mo469deserialize(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SubscriptionData.$childSerializers;
        List list = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                i2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SubscriptionData(i, list, str, i2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, SubscriptionData subscriptionData) {
        encoder.getClass();
        subscriptionData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
        KSerializer kSerializer = (KSerializer) SubscriptionData.$childSerializers[0].getValue();
        List list = subscriptionData.subscriptions;
        int i = subscriptionData.appVersionInt;
        String str = subscriptionData.appVersion;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, kSerializer, list);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "0.29.0")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 1014) {
            beginStructure.encodeElement(serialDescriptor, 2);
            beginStructure.encodeInt(i);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public /* bridge */ KSerializer[] typeParametersSerializers() {
        return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
    }
}
