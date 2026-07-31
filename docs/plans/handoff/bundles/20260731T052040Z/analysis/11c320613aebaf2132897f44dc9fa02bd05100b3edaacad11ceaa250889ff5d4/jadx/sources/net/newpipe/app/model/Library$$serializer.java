package net.newpipe.app.model;

import androidx.sqlite.SQLite;
import java.util.List;
import kotlin.Lazy;
import kotlin.math.MathKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Library$$serializer implements GeneratedSerializer {
    public static final Library$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        Library$$serializer library$$serializer = new Library$$serializer();
        INSTANCE = library$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.newpipe.app.model.Library", library$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("uniqueId", false);
        pluginGeneratedSerialDescriptor.addElement("name", false);
        pluginGeneratedSerialDescriptor.addElement("developers", false);
        pluginGeneratedSerialDescriptor.addElement("licenses", false);
        pluginGeneratedSerialDescriptor.addElement("website", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = Library.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getValue(), lazyArr[3].getValue(), MathKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Library.$childSerializers;
        int i = 0;
        String str = null;
        String str2 = null;
        List list = null;
        List list2 = null;
        String str3 = null;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), list2);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, str3);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new Library(i, str, str2, list, list2, str3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        Library library = (Library) obj;
        library.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        SQLite beginStructure = encoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = Library.$childSerializers;
        String str = library.id;
        String str2 = library.website;
        beginStructure.encodeStringElement(serialDescriptor, 0, str);
        beginStructure.encodeStringElement(serialDescriptor, 1, library.name);
        beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), library.developers);
        beginStructure.encodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), library.licenses);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            StringSerializer stringSerializer = StringSerializer.INSTANCE;
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, str2);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final /* bridge */ KSerializer[] typeParametersSerializers() {
        return Platform_commonKt.EMPTY_SERIALIZER_ARRAY;
    }
}
