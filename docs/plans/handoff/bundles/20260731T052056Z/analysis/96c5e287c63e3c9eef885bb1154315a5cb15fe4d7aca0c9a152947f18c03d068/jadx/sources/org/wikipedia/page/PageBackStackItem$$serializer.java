package org.wikipedia.page;

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
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryEntry$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageBackStackItem$$serializer implements GeneratedSerializer {
    public static final PageBackStackItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PageBackStackItem$$serializer pageBackStackItem$$serializer = new PageBackStackItem$$serializer();
        INSTANCE = pageBackStackItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.page.PageBackStackItem", pageBackStackItem$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("historyEntry", false);
        pluginGeneratedSerialDescriptor.addElement("scrollY", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{PageTitle$$serializer.INSTANCE, HistoryEntry$$serializer.INSTANCE, IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        PageTitle pageTitle = null;
        HistoryEntry historyEntry = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                pageTitle = (PageTitle) beginStructure.decodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, pageTitle);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                historyEntry = (HistoryEntry) beginStructure.decodeSerializableElement(serialDescriptor, 1, HistoryEntry$$serializer.INSTANCE, historyEntry);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                i2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        if (3 != (i & 3)) {
            TuplesKt.throwMissingFieldException(i, 3, descriptor);
            throw null;
        }
        PageBackStackItem pageBackStackItem = new PageBackStackItem();
        pageBackStackItem.title = pageTitle;
        pageBackStackItem.historyEntry = historyEntry;
        if ((i & 4) == 0) {
            pageBackStackItem.scrollY = 0;
            return pageBackStackItem;
        }
        pageBackStackItem.scrollY = i2;
        return pageBackStackItem;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        PageBackStackItem pageBackStackItem = (PageBackStackItem) obj;
        pageBackStackItem.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 0, PageTitle$$serializer.INSTANCE, pageBackStackItem.title);
        beginStructure.encodeSerializableElement(serialDescriptor, 1, HistoryEntry$$serializer.INSTANCE, pageBackStackItem.historyEntry);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || pageBackStackItem.scrollY != 0) {
            beginStructure.encodeIntElement(2, pageBackStackItem.scrollY, serialDescriptor);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
