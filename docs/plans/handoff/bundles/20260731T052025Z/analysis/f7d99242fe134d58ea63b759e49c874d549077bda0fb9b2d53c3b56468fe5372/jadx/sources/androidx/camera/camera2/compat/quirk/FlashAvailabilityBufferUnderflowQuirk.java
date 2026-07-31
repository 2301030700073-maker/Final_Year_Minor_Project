package androidx.camera.camera2.compat.quirk;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlashAvailabilityBufferUnderflowQuirk implements Quirk {
    public static final Set KNOWN_AFFECTED_MODELS;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DeviceInfo {
        public final String manufacturer;
        public final String model;

        public DeviceInfo(String str, String str2) {
            this.manufacturer = str;
            this.model = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DeviceInfo)) {
                return false;
            }
            DeviceInfo deviceInfo = (DeviceInfo) obj;
            return this.manufacturer.equals(deviceInfo.manufacturer) && this.model.equals(deviceInfo.model);
        }

        public final int hashCode() {
            return this.model.hashCode() + (this.manufacturer.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DeviceInfo(manufacturer=");
            sb.append(this.manufacturer);
            sb.append(", model=");
            return CameraDevices$CC.m(sb, this.model, ')');
        }
    }

    static {
        Locale locale = Locale.US;
        locale.getClass();
        String lowerCase = "sprd".toLowerCase(locale);
        lowerCase.getClass();
        String lowerCase2 = "lemp".toLowerCase(locale);
        lowerCase2.getClass();
        DeviceInfo deviceInfo = new DeviceInfo(lowerCase, lowerCase2);
        locale.getClass();
        String lowerCase3 = "sprd".toLowerCase(locale);
        lowerCase3.getClass();
        String lowerCase4 = "DM20C".toLowerCase(locale);
        lowerCase4.getClass();
        KNOWN_AFFECTED_MODELS = ArraysKt___ArraysKt.toSet(new DeviceInfo[]{deviceInfo, new DeviceInfo(lowerCase3, lowerCase4)});
    }
}
