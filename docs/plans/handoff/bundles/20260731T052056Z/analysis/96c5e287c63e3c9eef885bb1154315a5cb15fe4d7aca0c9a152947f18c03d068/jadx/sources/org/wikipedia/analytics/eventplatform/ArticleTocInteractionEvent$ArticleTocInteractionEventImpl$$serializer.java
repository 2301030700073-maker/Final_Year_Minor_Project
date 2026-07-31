package org.wikipedia.analytics.eventplatform;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer implements GeneratedSerializer {
    public static final ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer articleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer = new ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer();
        INSTANCE = articleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/android_article_toc_interaction/1.0.0", articleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer, 11);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("wiki_db", false);
        pluginGeneratedSerialDescriptor.addElement("page_id", false);
        pluginGeneratedSerialDescriptor.addElement("num_opens", false);
        pluginGeneratedSerialDescriptor.addElement("num_section_clicks", false);
        pluginGeneratedSerialDescriptor.addElement("total_open_sec", false);
        pluginGeneratedSerialDescriptor.addElement("num_sections", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, BooleanSerializer.INSTANCE, stringSerializer, stringSerializer, stringSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    meta = (Event.Meta) beginStructure.decodeSerializableElement(serialDescriptor, 0, Event$Meta$$serializer.INSTANCE, meta);
                    i |= 1;
                    break;
                case 1:
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 6);
                    i |= 64;
                    continue;
                case 7:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    continue;
                case 8:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i |= 256;
                    continue;
                case 9:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 9);
                    i |= 512;
                    continue;
                case 10:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i |= 1024;
                    continue;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new ArticleTocInteractionEvent.ArticleTocInteractionEventImpl(i, i2, i3, i4, i5, i6, str, str2, str3, str4, meta, z2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ArticleTocInteractionEvent.ArticleTocInteractionEventImpl articleTocInteractionEventImpl = (ArticleTocInteractionEvent.ArticleTocInteractionEventImpl) obj;
        articleTocInteractionEventImpl.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEvent.write$Self((MobileAppsEvent) articleTocInteractionEventImpl, beginStructure, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 5, articleTocInteractionEventImpl.wikiDb);
        beginStructure.encodeIntElement(6, articleTocInteractionEventImpl.pageId, serialDescriptor);
        beginStructure.encodeIntElement(7, articleTocInteractionEventImpl.numberOfOpens, serialDescriptor);
        beginStructure.encodeIntElement(8, articleTocInteractionEventImpl.numberOfSectionClicks, serialDescriptor);
        beginStructure.encodeIntElement(9, articleTocInteractionEventImpl.totalOpenSec, serialDescriptor);
        beginStructure.encodeIntElement(10, articleTocInteractionEventImpl.numSections, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
