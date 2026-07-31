package app.k9mail.feature.account.edit.navigation;

import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
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
public final /* synthetic */ class AccountEditRoute$IncomingServerSettings$$serializer implements GeneratedSerializer {
    public static final AccountEditRoute$IncomingServerSettings$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        AccountEditRoute$IncomingServerSettings$$serializer accountEditRoute$IncomingServerSettings$$serializer = new AccountEditRoute$IncomingServerSettings$$serializer();
        INSTANCE = accountEditRoute$IncomingServerSettings$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("app.k9mail.feature.account.edit.navigation.AccountEditRoute.IncomingServerSettings", accountEditRoute$IncomingServerSettings$$serializer, 2);
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
        return new AccountEditRoute.IncomingServerSettings(i, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        AccountEditRoute.IncomingServerSettings incomingServerSettings = (AccountEditRoute.IncomingServerSettings) obj;
        incomingServerSettings.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        String str = incomingServerSettings.accountId;
        String str2 = incomingServerSettings.basePath;
        beginStructure.encodeStringElement(serialDescriptor, 0, str);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "app://account/edit/incoming")) {
            beginStructure.encodeStringElement(serialDescriptor, 1, str2);
        }
        beginStructure.endStructure(serialDescriptor);
    }
}
