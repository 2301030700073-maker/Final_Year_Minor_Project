package com.fsck.k9.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.Date;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageDate {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidDate implements MessageDate {
        public final String dateHeader;

        public InvalidDate(String str) {
            this.dateHeader = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidDate) && this.dateHeader.equals(((InvalidDate) obj).dateHeader);
        }

        public final int hashCode() {
            return this.dateHeader.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("InvalidDate(dateHeader=", this.dateHeader, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ValidDate implements MessageDate {
        public final Date date;

        public ValidDate(Date date) {
            this.date = date;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ValidDate) && this.date.equals(((ValidDate) obj).date);
        }

        public final int hashCode() {
            return this.date.hashCode();
        }

        public final String toString() {
            return "ValidDate(date=" + this.date + ")";
        }
    }
}
