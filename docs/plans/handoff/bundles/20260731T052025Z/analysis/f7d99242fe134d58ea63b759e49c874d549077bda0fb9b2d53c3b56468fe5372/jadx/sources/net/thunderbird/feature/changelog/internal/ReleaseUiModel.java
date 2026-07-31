package net.thunderbird.feature.changelog.internal;

import androidx.camera.core.impl.Config;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReleaseUiModel {
    public final LinkedHashMap changes;
    public final String date;
    public final boolean isLatest;
    public final String version;

    public ReleaseUiModel(String str, String str2, boolean z, LinkedHashMap linkedHashMap) {
        str.getClass();
        this.version = str;
        this.date = str2;
        this.isLatest = z;
        this.changes = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReleaseUiModel)) {
            return false;
        }
        ReleaseUiModel releaseUiModel = (ReleaseUiModel) obj;
        return Intrinsics.areEqual(this.version, releaseUiModel.version) && Intrinsics.areEqual(this.date, releaseUiModel.date) && this.isLatest == releaseUiModel.isLatest && this.changes.equals(releaseUiModel.changes);
    }

    public final int hashCode() {
        int hashCode = this.version.hashCode() * 31;
        String str = this.date;
        return this.changes.hashCode() + ((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + (this.isLatest ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("ReleaseUiModel(version=", this.version, ", date=", this.date, ", isLatest=");
        m.append(this.isLatest);
        m.append(", changes=");
        m.append(this.changes);
        m.append(")");
        return m.toString();
    }
}
