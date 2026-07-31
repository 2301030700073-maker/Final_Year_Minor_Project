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
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer implements GeneratedSerializer {
    public static final ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer articleInteractionEvent$ArticleInteractionEventImpl$$serializer = new ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer();
        INSTANCE = articleInteractionEvent$ArticleInteractionEventImpl$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("/analytics/mobile_apps/android_article_toolbar_interaction/1.0.0", articleInteractionEvent$ArticleInteractionEventImpl$$serializer, 9);
        pluginGeneratedSerialDescriptor.addElement("meta", true);
        pluginGeneratedSerialDescriptor.addElement("dt", true);
        pluginGeneratedSerialDescriptor.addElement("is_anon", true);
        pluginGeneratedSerialDescriptor.addElement("app_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("time_spent_ms", false);
        pluginGeneratedSerialDescriptor.addElement("wiki_db", false);
        pluginGeneratedSerialDescriptor.addElement("page_id", false);
        pluginGeneratedSerialDescriptor.addElement("action", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{Event$Meta$$serializer.INSTANCE, stringSerializer, BooleanSerializer.INSTANCE, stringSerializer, stringSerializer, intSerializer, stringSerializer, intSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        Event.Meta meta = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
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
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new ArticleInteractionEvent.ArticleInteractionEventImpl(i, meta, str, z2, str2, str3, i2, str4, i3, str5);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ArticleInteractionEvent.ArticleInteractionEventImpl articleInteractionEventImpl = (ArticleInteractionEvent.ArticleInteractionEventImpl) obj;
        articleInteractionEventImpl.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MobileAppsEvent.write$Self((MobileAppsEvent) articleInteractionEventImpl, beginStructure, serialDescriptor);
        beginStructure.encodeIntElement(5, articleInteractionEventImpl.timeSpentMs, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 6, articleInteractionEventImpl.wikiDb);
        beginStructure.encodeIntElement(7, articleInteractionEventImpl.pageId, serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 8, articleInteractionEventImpl.action);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
