package de.cketti.changelog;

import androidx.compose.ui.Modifier;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReleaseItem {
    public final List changes;
    public final String date;
    public final int versionCode;
    public final String versionName;

    public ReleaseItem(int i, String str, String str2, ArrayList arrayList) {
        this.versionCode = i;
        if (str == null) {
            Regex$$ExternalSyntheticBUOutline0.m("versionName == null");
            throw null;
        }
        this.versionName = str;
        this.date = str2;
        this.changes = DesugarCollections.unmodifiableList(arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ReleaseItem.class != obj.getClass()) {
            return false;
        }
        ReleaseItem releaseItem = (ReleaseItem) obj;
        if (this.versionCode != releaseItem.versionCode || !this.versionName.equals(releaseItem.versionName)) {
            return false;
        }
        String str = releaseItem.date;
        String str2 = this.date;
        if (str2 == null ? str == null : str2.equals(str)) {
            return this.changes.equals(releaseItem.changes);
        }
        return false;
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.versionCode * 31, this.versionName, 31);
        String str = this.date;
        return this.changes.hashCode() + ((m + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ReleaseItem{versionCode=" + this.versionCode + ", versionName='" + this.versionName + "', date='" + this.date + "', changes=" + this.changes + '}';
    }
}
