package com.fsck.k9.ui.settings;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AboutContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenChangeLog implements AboutContract$Effect {
        public static final OpenChangeLog INSTANCE = new OpenChangeLog();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenChangeLog);
        }

        public final int hashCode() {
            return 144485633;
        }

        public final String toString() {
            return "OpenChangeLog";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenUrl implements AboutContract$Effect {
        public final String url;

        public OpenUrl(String str) {
            this.url = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenUrl) && this.url.equals(((OpenUrl) obj).url);
        }

        public final int hashCode() {
            return this.url.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OpenUrl(url=", this.url, ")");
        }
    }
}
