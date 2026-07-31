package net.thunderbird.core.preference.storage;

import java.util.HashMap;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InMemoryStorage {
    public final Logger logger;
    public final HashMap values;

    public InMemoryStorage(HashMap hashMap, Logger logger) {
        logger.getClass();
        this.values = hashMap;
        this.logger = logger;
    }

    public final boolean getBoolean(String str, boolean z) {
        String str2 = (String) this.values.get(str);
        return str2 != null ? Boolean.parseBoolean(str2) : z;
    }

    public final int getInt(String str, int i) {
        String str2 = (String) this.values.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            return Integer.parseInt(str2);
        } catch (NumberFormatException e) {
            Sink$CC.error$default(this.logger, null, e, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(29), 1);
            return i;
        }
    }

    public final long getLong(String str) {
        String str2 = (String) this.values.get(str);
        if (str2 == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            Sink$CC.error$default(this.logger, null, e, new InMemoryStorage$$ExternalSyntheticLambda1(0), 1);
            return 0L;
        }
    }

    public final String getStringOrDefault(String str, String str2) {
        String stringOrNull = getStringOrNull(str);
        return stringOrNull == null ? str2 : stringOrNull;
    }

    public final String getStringOrNull(String str) {
        str.getClass();
        return (String) this.values.get(str);
    }
}
