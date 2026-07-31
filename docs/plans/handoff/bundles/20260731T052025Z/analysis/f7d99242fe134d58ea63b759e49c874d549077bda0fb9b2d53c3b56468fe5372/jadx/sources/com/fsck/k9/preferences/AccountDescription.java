package com.fsck.k9.preferences;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountDescription {
    public final String name;
    public final String uuid;

    public AccountDescription(String str, String str2) {
        str.getClass();
        this.name = str;
        this.uuid = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountDescription)) {
            return false;
        }
        AccountDescription accountDescription = (AccountDescription) obj;
        return Intrinsics.areEqual(this.name, accountDescription.name) && this.uuid.equals(accountDescription.uuid);
    }

    public final int hashCode() {
        return this.uuid.hashCode() + (this.name.hashCode() * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("AccountDescription(name=", this.name, ", uuid=", this.uuid, ")");
    }
}
