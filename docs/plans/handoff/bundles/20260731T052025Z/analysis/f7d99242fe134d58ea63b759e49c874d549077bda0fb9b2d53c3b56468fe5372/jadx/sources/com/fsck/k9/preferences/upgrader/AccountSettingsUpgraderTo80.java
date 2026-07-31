package com.fsck.k9.preferences.upgrader;

import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.notification.NotificationLightDecoder;
import com.fsck.k9.preferences.SettingsUpgrader;
import java.util.LinkedHashMap;
import kotlin.io.CloseableKt;
import kotlin.text.StringsKt;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsUpgraderTo80 implements SettingsUpgrader {
    public final /* synthetic */ int $r8$classId;
    public final Object notificationLightDecoder;

    public AccountSettingsUpgraderTo80() {
        this.$r8$classId = 0;
        this.notificationLightDecoder = (NotificationLightDecoder) CloseableKt.get$default(NotificationLightDecoder.class);
    }

    @Override // com.fsck.k9.preferences.SettingsUpgrader
    public final void upgrade(LinkedHashMap linkedHashMap) {
        int i = this.$r8$classId;
        Object obj = this.notificationLightDecoder;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) linkedHashMap.get("led");
                Integer num = (Integer) linkedHashMap.get("ledColor");
                Integer num2 = (Integer) linkedHashMap.get("chipColor");
                if (bool != null && num != null) {
                    int intValue = num2 != null ? num2.intValue() : 0;
                    boolean booleanValue = bool.booleanValue();
                    int intValue2 = num.intValue();
                    ((NotificationLightDecoder) obj).getClass();
                    linkedHashMap.put("notificationLight", NotificationLightDecoder.decode(intValue2, intValue, booleanValue).name());
                    break;
                }
                break;
            default:
                Object obj2 = linkedHashMap.get("incomingServerSettings");
                String str = obj2 instanceof String ? (String) obj2 : null;
                ServerSettings deserialize = str != null ? ((ServerSettingsDtoSerializer) obj).deserialize(str) : null;
                String str2 = deserialize != null ? (String) deserialize.extra.get("pathPrefix") : null;
                if (str2 == null) {
                    str2 = "";
                }
                if (StringsKt.isBlank(str2)) {
                    str2 = "/";
                }
                linkedHashMap.put("folderPathDelimiter", str2);
                break;
        }
    }

    public AccountSettingsUpgraderTo80(ServerSettingsDtoSerializer serverSettingsDtoSerializer) {
        this.$r8$classId = 1;
        this.notificationLightDecoder = serverSettingsDtoSerializer;
    }
}
