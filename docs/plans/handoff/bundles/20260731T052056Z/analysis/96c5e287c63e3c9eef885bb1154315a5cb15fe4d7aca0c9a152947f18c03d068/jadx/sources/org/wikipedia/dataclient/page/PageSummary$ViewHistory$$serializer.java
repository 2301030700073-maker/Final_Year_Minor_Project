package org.wikipedia.dataclient.page;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.page.PageSummary;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageSummary$ViewHistory$$serializer implements GeneratedSerializer {
    public static final PageSummary$ViewHistory$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PageSummary$ViewHistory$$serializer pageSummary$ViewHistory$$serializer = new PageSummary$ViewHistory$$serializer();
        INSTANCE = pageSummary$ViewHistory$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.page.PageSummary.ViewHistory", pageSummary$ViewHistory$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("date", false);
        pluginGeneratedSerialDescriptor.addElement("views", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, FloatSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        float f = RecyclerView.DECELERATION_RATE;
        boolean z = true;
        int i = 0;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                f = beginStructure.decodeFloatElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new PageSummary.ViewHistory(i, str, f);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        PageSummary.ViewHistory viewHistory = (PageSummary.ViewHistory) obj;
        viewHistory.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeStringElement(serialDescriptor, 0, viewHistory.date);
        beginStructure.encodeFloatElement(serialDescriptor, 1, viewHistory.views);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
