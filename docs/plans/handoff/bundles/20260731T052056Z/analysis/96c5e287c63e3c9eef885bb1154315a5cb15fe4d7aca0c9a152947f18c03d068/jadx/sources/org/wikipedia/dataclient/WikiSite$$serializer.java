package org.wikipedia.dataclient;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.UriSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikiSite$$serializer implements GeneratedSerializer {
    public static final WikiSite$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        WikiSite$$serializer wikiSite$$serializer = new WikiSite$$serializer();
        INSTANCE = wikiSite$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.WikiSite", wikiSite$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("domain", false);
        pluginGeneratedSerialDescriptor.addElement("languageCode", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{UriSerializer.INSTANCE, StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        Uri uri = null;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                uri = (Uri) beginStructure.decodeSerializableElement(serialDescriptor, 0, UriSerializer.INSTANCE, uri);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, descriptor);
            throw null;
        }
        WikiSite wikiSite = new WikiSite();
        wikiSite.uri = uri;
        if ((i & 2) == 0) {
            wikiSite.languageCode = "";
            return wikiSite;
        }
        wikiSite.languageCode = str;
        return wikiSite;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        WikiSite wikiSite = (WikiSite) obj;
        wikiSite.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 0, UriSerializer.INSTANCE, wikiSite.uri);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(wikiSite.languageCode, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, wikiSite.languageCode);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
