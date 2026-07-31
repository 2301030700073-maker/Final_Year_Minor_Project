package app.k9mail.feature.account.server.certificate.ui;

import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.net.HostNameUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultServerNameFormatter {
    public static String format(String str) {
        str.getClass();
        String isLegalIPv6Address = HostNameUtils.isLegalIPv6Address(str);
        return isLegalIPv6Address != null ? StringsKt__StringsJVMKt.replace$default(isLegalIPv6Address, ":", ":\u200b") : StringsKt__StringsJVMKt.replace$default(str, ".", ".\u200b");
    }
}
