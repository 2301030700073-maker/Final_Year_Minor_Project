package com.fsck.k9.preferences;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImportResults {
    public final List erroneousAccounts;
    public final boolean globalSettings;
    public final List importedAccounts;

    public ImportResults(boolean z, List list, List list2) {
        list.getClass();
        list2.getClass();
        this.globalSettings = z;
        this.importedAccounts = list;
        this.erroneousAccounts = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImportResults)) {
            return false;
        }
        ImportResults importResults = (ImportResults) obj;
        return this.globalSettings == importResults.globalSettings && Intrinsics.areEqual(this.importedAccounts, importResults.importedAccounts) && Intrinsics.areEqual(this.erroneousAccounts, importResults.erroneousAccounts);
    }

    public final int hashCode() {
        return this.erroneousAccounts.hashCode() + CameraDevices$CC.m(this.importedAccounts, (this.globalSettings ? 1231 : 1237) * 31, 31);
    }

    public final String toString() {
        return "ImportResults(globalSettings=" + this.globalSettings + ", importedAccounts=" + this.importedAccounts + ", erroneousAccounts=" + this.erroneousAccounts + ")";
    }
}
