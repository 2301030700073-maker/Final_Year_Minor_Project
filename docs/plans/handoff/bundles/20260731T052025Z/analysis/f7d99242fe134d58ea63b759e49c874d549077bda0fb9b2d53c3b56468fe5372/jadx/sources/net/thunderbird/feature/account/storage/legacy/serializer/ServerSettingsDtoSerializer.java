package net.thunderbird.feature.account.storage.legacy.serializer;

import com.fsck.k9.mail.ServerSettings;
import com.squareup.moshi.StandardJsonAdapters$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerSettingsDtoSerializer {
    public final StandardJsonAdapters$2 adapter = new StandardJsonAdapters$2(9);

    public final ServerSettings deserialize(String str) {
        Object fromJson = this.adapter.fromJson(str);
        fromJson.getClass();
        return (ServerSettings) fromJson;
    }
}
