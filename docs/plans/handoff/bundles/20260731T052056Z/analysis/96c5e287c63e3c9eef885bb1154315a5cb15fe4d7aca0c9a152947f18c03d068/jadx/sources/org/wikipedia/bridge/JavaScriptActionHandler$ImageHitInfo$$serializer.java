package org.wikipedia.bridge;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class JavaScriptActionHandler$ImageHitInfo$$serializer implements GeneratedSerializer {
    public static final JavaScriptActionHandler$ImageHitInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        JavaScriptActionHandler$ImageHitInfo$$serializer javaScriptActionHandler$ImageHitInfo$$serializer = new JavaScriptActionHandler$ImageHitInfo$$serializer();
        INSTANCE = javaScriptActionHandler$ImageHitInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.bridge.JavaScriptActionHandler.ImageHitInfo", javaScriptActionHandler$ImageHitInfo$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("left", true);
        pluginGeneratedSerialDescriptor.addElement("top", true);
        pluginGeneratedSerialDescriptor.addElement("width", true);
        pluginGeneratedSerialDescriptor.addElement("height", true);
        pluginGeneratedSerialDescriptor.addElement("src", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        FloatSerializer floatSerializer = FloatSerializer.INSTANCE;
        return new KSerializer[]{floatSerializer, floatSerializer, floatSerializer, floatSerializer, StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        String str = null;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                f = beginStructure.decodeFloatElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                f2 = beginStructure.decodeFloatElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                f3 = beginStructure.decodeFloatElement(serialDescriptor, 2);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                f4 = beginStructure.decodeFloatElement(serialDescriptor, 3);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str = beginStructure.decodeStringElement(serialDescriptor, 4);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new JavaScriptActionHandler$ImageHitInfo(i, f, f2, f3, f4, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = (JavaScriptActionHandler$ImageHitInfo) obj;
        javaScriptActionHandler$ImageHitInfo.getClass();
        String str = javaScriptActionHandler$ImageHitInfo.src;
        float f = javaScriptActionHandler$ImageHitInfo.height;
        float f2 = javaScriptActionHandler$ImageHitInfo.width;
        float f3 = javaScriptActionHandler$ImageHitInfo.top;
        float f4 = javaScriptActionHandler$ImageHitInfo.left;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f4, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 0, f4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f3, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 1, f3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f2, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 2, f2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || Float.compare(f, RecyclerView.DECELERATION_RATE) != 0) {
            beginStructure.encodeFloatElement(serialDescriptor, 3, f);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 4, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
