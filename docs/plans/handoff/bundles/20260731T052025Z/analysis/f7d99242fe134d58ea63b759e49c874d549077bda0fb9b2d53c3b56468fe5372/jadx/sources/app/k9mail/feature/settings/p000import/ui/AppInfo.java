package app.k9mail.feature.settings.p000import.ui;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppInfo {
    public final String appName;
    public final boolean isImportSupported;
    public final String packageName;

    public AppInfo(String str, String str2, boolean z) {
        str2.getClass();
        this.packageName = str;
        this.appName = str2;
        this.isImportSupported = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) obj;
        return this.packageName.equals(appInfo.packageName) && Intrinsics.areEqual(this.appName, appInfo.appName) && this.isImportSupported == appInfo.isImportSupported;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.packageName.hashCode() * 31, this.appName, 31) + (this.isImportSupported ? 1231 : 1237);
    }

    public final String toString() {
        return CameraDevices$CC.m(")", Config.CC.m("AppInfo(packageName=", this.packageName, ", appName=", this.appName, ", isImportSupported="), this.isImportSupported);
    }
}
