package org.jetbrains.compose.resources;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LanguageQualifier implements Qualifier {
    public final String language;

    public LanguageQualifier(String str) {
        str.getClass();
        this.language = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LanguageQualifier.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.language, ((LanguageQualifier) obj).language);
    }

    public final int hashCode() {
        return this.language.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("LanguageQualifier(language='", this.language, "')");
    }
}
