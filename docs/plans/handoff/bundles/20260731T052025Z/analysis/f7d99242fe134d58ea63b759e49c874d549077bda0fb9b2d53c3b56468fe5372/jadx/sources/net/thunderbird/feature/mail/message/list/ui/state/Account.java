package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Account {
    public final long color;
    public final AccountId id;

    public Account(AccountId accountId, long j) {
        accountId.getClass();
        this.id = accountId;
        this.color = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Account)) {
            return false;
        }
        Account account = (Account) obj;
        return Intrinsics.areEqual(this.id, account.id) && Color.m482equalsimpl0(this.color, account.color);
    }

    public final int hashCode() {
        int hashCode = this.id.value.hashCode() * 31;
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.color) + hashCode;
    }

    public final String toString() {
        return "Account(id=" + this.id + ", color=" + Color.m488toStringimpl(this.color) + ")";
    }
}
