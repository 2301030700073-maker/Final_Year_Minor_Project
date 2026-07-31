package net.thunderbird.feature.debug.settings.navigation;

import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import net.thunderbird.feature.debug.settings.navigation.SecretDebugSettingsRoute;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SecretDebugSettingsRoute$$serializer implements GeneratedSerializer {
    public static final SecretDebugSettingsRoute$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SecretDebugSettingsRoute$$serializer secretDebugSettingsRoute$$serializer = new SecretDebugSettingsRoute$$serializer();
        INSTANCE = secretDebugSettingsRoute$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.thunderbird.feature.debug.settings.navigation.SecretDebugSettingsRoute", secretDebugSettingsRoute$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("tab", true);
        pluginGeneratedSerialDescriptor.addElement("basePath", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{SecretDebugSettingsRoute.$childSerializers[0].getValue(), StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SecretDebugSettingsRoute.$childSerializers;
        SecretDebugSettingsRoute.Tab tab = null;
        boolean z = true;
        int i = 0;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                tab = (SecretDebugSettingsRoute.Tab) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), tab);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                str = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SecretDebugSettingsRoute(i, tab, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        SecretDebugSettingsRoute secretDebugSettingsRoute = (SecretDebugSettingsRoute) obj;
        secretDebugSettingsRoute.getClass();
        String str = secretDebugSettingsRoute.basePath;
        SecretDebugSettingsRoute.Tab tab = secretDebugSettingsRoute.tab;
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SecretDebugSettingsRoute.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || tab != SecretDebugSettingsRoute.Tab.Notification) {
            beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), tab);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "app://secret_debug_settings/{tab}")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }
}
