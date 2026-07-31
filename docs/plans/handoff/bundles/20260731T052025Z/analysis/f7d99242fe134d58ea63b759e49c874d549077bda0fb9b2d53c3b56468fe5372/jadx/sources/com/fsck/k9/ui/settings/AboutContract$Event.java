package com.fsck.k9.ui.settings;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AboutContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnChangeLogClick implements AboutContract$Event {
        public static final OnChangeLogClick INSTANCE = new OnChangeLogClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnChangeLogClick);
        }

        public final int hashCode() {
            return 1452945563;
        }

        public final String toString() {
            return "OnChangeLogClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSectionContentClick implements AboutContract$Event {
        public final String url;

        public OnSectionContentClick(String str) {
            this.url = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnSectionContentClick) && this.url.equals(((OnSectionContentClick) obj).url);
        }

        public final int hashCode() {
            return this.url.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("OnSectionContentClick(url=", this.url, ")");
        }
    }
}
