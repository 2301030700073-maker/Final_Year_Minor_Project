package net.thunderbird.feature.search.legacy.api;

import kotlin.Lazy;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchCondition$$serializer implements GeneratedSerializer {
    public static final SearchCondition$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SearchCondition$$serializer searchCondition$$serializer = new SearchCondition$$serializer();
        INSTANCE = searchCondition$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.thunderbird.feature.search.legacy.api.SearchCondition", searchCondition$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("field", false);
        pluginGeneratedSerialDescriptor.addElement("attribute", false);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = SearchCondition.$childSerializers;
        return new KSerializer[]{lazyArr[0].getValue(), lazyArr[1].getValue(), StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchCondition.$childSerializers;
        SearchField searchField = null;
        boolean z = true;
        int i = 0;
        SearchAttribute searchAttribute = null;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                searchField = (SearchField) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), searchField);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                searchAttribute = (SearchAttribute) beginStructure.decodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), searchAttribute);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                str = beginStructure.decodeStringElement(serialDescriptor, 2);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SearchCondition(i, searchField, searchAttribute, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        SearchCondition searchCondition = (SearchCondition) obj;
        searchCondition.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchCondition.$childSerializers;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), searchCondition.field);
        beginStructure.encodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), searchCondition.attribute);
        beginStructure.encodeStringElement(serialDescriptor, 2, searchCondition.value);
        beginStructure.endStructure(serialDescriptor);
    }
}
