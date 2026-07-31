package com.fsck.k9.ui.settings;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Library {
    public final String license;
    public final String name;
    public final String url;

    public Library(String str, String str2, String str3) {
        this.name = str;
        this.url = str2;
        this.license = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Library)) {
            return false;
        }
        Library library = (Library) obj;
        return this.name.equals(library.name) && this.url.equals(library.url) && this.license.equals(library.license);
    }

    public final int hashCode() {
        return this.license.hashCode() + Modifier.CC.m(this.name.hashCode() * 31, this.url, 31);
    }

    public final String toString() {
        return CameraDevices$CC.m(Config.CC.m("Library(name=", this.name, ", url=", this.url, ", license="), this.license, ")");
    }
}
