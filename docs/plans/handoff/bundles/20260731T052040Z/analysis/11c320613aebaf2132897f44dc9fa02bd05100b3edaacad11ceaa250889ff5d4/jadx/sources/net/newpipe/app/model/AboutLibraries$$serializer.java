package net.newpipe.app.model;

import androidx.sqlite.SQLite;
import java.util.List;
import kotlin.Lazy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutLibraries$$serializer implements GeneratedSerializer {
    public static final AboutLibraries$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AboutLibraries$$serializer aboutLibraries$$serializer = new AboutLibraries$$serializer();
        INSTANCE = aboutLibraries$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.newpipe.app.model.AboutLibraries", aboutLibraries$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("libraries", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{AboutLibraries.$childSerializers[0].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = AboutLibraries.$childSerializers;
        List list = null;
        boolean z = true;
        int i = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new AboutLibraries(i, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        AboutLibraries aboutLibraries = (AboutLibraries) obj;
        aboutLibraries.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) AboutLibraries.$childSerializers[0].getValue(), aboutLibraries.libraries);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final /* bridge */ KSerializer[] typeParametersSerializers() {
        return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
    }
}
