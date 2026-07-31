package net.thunderbird.feature.account.settings.api;

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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSettingsRoute$SearchSettings$$serializer implements GeneratedSerializer {
    public static final AccountSettingsRoute$SearchSettings$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AccountSettingsRoute$SearchSettings$$serializer accountSettingsRoute$SearchSettings$$serializer = new AccountSettingsRoute$SearchSettings$$serializer();
        INSTANCE = accountSettingsRoute$SearchSettings$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.thunderbird.feature.account.settings.api.AccountSettingsRoute.SearchSettings", accountSettingsRoute$SearchSettings$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("accountId", false);
        pluginGeneratedSerialDescriptor.addElement("basePath", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        String str = null;
        boolean z = true;
        int i = 0;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else {
                if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new AccountSettingsRoute$SearchSettings(i, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        AccountSettingsRoute$SearchSettings accountSettingsRoute$SearchSettings = (AccountSettingsRoute$SearchSettings) obj;
        accountSettingsRoute$SearchSettings.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        String str = accountSettingsRoute$SearchSettings.accountId;
        String str2 = accountSettingsRoute$SearchSettings.basePath;
        beginStructure.encodeStringElement(serialDescriptor, 0, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "app://account/settings/search")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str2);
        }
        beginStructure.endStructure(serialDescriptor);
    }
}
