package org.minidns.dnsname;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InvalidDnsNameException$LabelTooLongException extends IllegalStateException {
    public final /* synthetic */ int $r8$classId;
    public final String ace;
    public final Serializable label;

    public InvalidDnsNameException$LabelTooLongException(int i, Serializable serializable, String str) {
        this.$r8$classId = i;
        this.ace = str;
        this.label = serializable;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        int i = this.$r8$classId;
        Object obj = this.label;
        String str = this.ace;
        switch (i) {
            case 0:
                return CameraDevices$CC.m(Config.CC.m("The DNS name '", str, "' contains the label '", (String) obj, "' which exceeds the maximum label length of 63 octets by "), r3.length() - 63, " octets.");
            default:
                return "The DNS name '" + str + "' exceeds the maximum name length of 255 octets by " + (((byte[]) obj).length - 255) + " octets.";
        }
    }
}
