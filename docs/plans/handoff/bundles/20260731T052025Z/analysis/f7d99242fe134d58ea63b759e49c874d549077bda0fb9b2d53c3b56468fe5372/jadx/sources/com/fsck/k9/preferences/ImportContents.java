package com.fsck.k9.preferences;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImportContents {
    public final ArrayList accounts;
    public final boolean globalSettings;

    public ImportContents(ArrayList arrayList, boolean z) {
        this.globalSettings = z;
        this.accounts = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImportContents)) {
            return false;
        }
        ImportContents importContents = (ImportContents) obj;
        return this.globalSettings == importContents.globalSettings && this.accounts.equals(importContents.accounts);
    }

    public final int hashCode() {
        return this.accounts.hashCode() + ((this.globalSettings ? 1231 : 1237) * 31);
    }

    public final String toString() {
        return "ImportContents(globalSettings=" + this.globalSettings + ", accounts=" + this.accounts + ")";
    }
}
