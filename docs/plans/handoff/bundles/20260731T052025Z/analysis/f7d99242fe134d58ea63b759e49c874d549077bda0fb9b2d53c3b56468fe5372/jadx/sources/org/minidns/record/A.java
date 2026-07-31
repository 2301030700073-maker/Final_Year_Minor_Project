package org.minidns.record;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class A extends InternetAddressRR {
    public final String toString() {
        byte[] bArr = this.ip;
        String num = Integer.toString(bArr[0] & 255);
        String num2 = Integer.toString(bArr[1] & 255);
        String num3 = Integer.toString(bArr[2] & 255);
        String num4 = Integer.toString(bArr[3] & 255);
        StringBuilder sb = new StringBuilder();
        sb.append(num);
        sb.append(".");
        sb.append(num2);
        sb.append(".");
        sb.append(num3);
        return CameraDevices$CC.m(sb, ".", num4);
    }
}
