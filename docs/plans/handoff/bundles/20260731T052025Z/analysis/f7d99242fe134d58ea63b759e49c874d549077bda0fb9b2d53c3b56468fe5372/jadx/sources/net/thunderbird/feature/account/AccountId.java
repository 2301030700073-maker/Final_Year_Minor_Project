package net.thunderbird.feature.account;

import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountId implements Comparable {
    public final Comparable value;

    public AccountId(Uuid uuid) {
        uuid.getClass();
        this.value = uuid;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        AccountId accountId = (AccountId) obj;
        accountId.getClass();
        return this.value.compareTo(accountId.value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountId)) {
            return false;
        }
        return Intrinsics.areEqual(this.value, ((AccountId) obj).value);
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return this.value.toString();
    }
}
