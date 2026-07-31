package com.fsck.k9.account;

import net.thunderbird.core.android.account.DeletePolicy;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDeletePolicyProvider {
    public static DeletePolicy getDeletePolicy(String str) {
        str.getClass();
        int hashCode = str.hashCode();
        DeletePolicy deletePolicy = DeletePolicy.ON_DELETE;
        if (hashCode != 3079651) {
            if (hashCode != 3235923) {
                if (hashCode == 3446786 && str.equals("pop3")) {
                    return DeletePolicy.NEVER;
                }
            } else if (str.equals("imap")) {
                return deletePolicy;
            }
        } else if (str.equals("demo")) {
            return deletePolicy;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Unhandled case: ".concat(str));
        return null;
    }
}
