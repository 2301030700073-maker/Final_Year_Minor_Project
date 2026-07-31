package org.schabi.newpipe.player.mediabrowser;

import androidx.compose.ui.Modifier;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PackageValidator$CallerPackageInfo {
    public final String name;
    public final String packageName;
    public final Set permissions;
    public final String signature;
    public final int uid;

    public PackageValidator$CallerPackageInfo(String str, String str2, int i, String str3, Set set) {
        this.name = str;
        this.packageName = str2;
        this.uid = i;
        this.signature = str3;
        this.permissions = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PackageValidator$CallerPackageInfo)) {
            return false;
        }
        PackageValidator$CallerPackageInfo packageValidator$CallerPackageInfo = (PackageValidator$CallerPackageInfo) obj;
        return this.name.equals(packageValidator$CallerPackageInfo.name) && this.packageName.equals(packageValidator$CallerPackageInfo.packageName) && this.uid == packageValidator$CallerPackageInfo.uid && Intrinsics.areEqual(this.signature, packageValidator$CallerPackageInfo.signature) && this.permissions.equals(packageValidator$CallerPackageInfo.permissions);
    }

    public final int hashCode() {
        int m = (Modifier.CC.m(this.name.hashCode() * 31, 31, this.packageName) + this.uid) * 31;
        String str = this.signature;
        return this.permissions.hashCode() + ((m + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "CallerPackageInfo(name=" + this.name + ", packageName=" + this.packageName + ", uid=" + this.uid + ", signature=" + this.signature + ", permissions=" + this.permissions + ")";
    }
}
