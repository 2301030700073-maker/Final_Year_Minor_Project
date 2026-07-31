package com.fsck.k9.ui.identity;

import coil3.size.ViewSizeResolver;
import net.thunderbird.core.android.account.Identity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdentityFormatter {
    public static String getEmailDisplayName(Identity identity) {
        identity.getClass();
        String str = identity.name;
        String str2 = identity.email;
        if (str2 == null) {
            str2 = "Invalid";
        }
        return str != null ? ViewSizeResolver.CC.m(str, " <", str2, ">") : str2;
    }
}
