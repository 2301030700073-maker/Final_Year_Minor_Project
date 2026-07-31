package com.fsck.k9.ui.choosefolder;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayMode {
    public final LegacyAccountDto account;
    public final boolean showHiddenFolders;

    public DisplayMode(LegacyAccountDto legacyAccountDto, boolean z) {
        legacyAccountDto.getClass();
        this.account = legacyAccountDto;
        this.showHiddenFolders = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayMode)) {
            return false;
        }
        DisplayMode displayMode = (DisplayMode) obj;
        return Intrinsics.areEqual(this.account, displayMode.account) && this.showHiddenFolders == displayMode.showHiddenFolders;
    }

    public final int hashCode() {
        return (this.account.uuid.hashCode() * 31) + (this.showHiddenFolders ? 1231 : 1237);
    }

    public final String toString() {
        return "DisplayMode(account=" + this.account + ", showHiddenFolders=" + this.showHiddenFolders + ")";
    }
}
