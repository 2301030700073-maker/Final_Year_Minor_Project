package net.thunderbird.feature.account.avatar;

import java.util.Locale;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAvatarMonogramCreator {
    public static String create(String str, String str2) {
        if (str != null && str.length() > 0) {
            String upperCase = StringsKt.take(StringsKt__StringsJVMKt.replace$default(str, " ", ""), 2).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return upperCase;
        }
        if (str2 == null || str2.length() <= 0) {
            return "XX";
        }
        String upperCase2 = StringsKt.take(StringsKt__StringsJVMKt.replace$default(str2, " ", ""), 2).toUpperCase(Locale.ROOT);
        upperCase2.getClass();
        return upperCase2;
    }
}
