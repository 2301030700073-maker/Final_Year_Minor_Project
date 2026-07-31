package org.minidns.record;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import j$.util.DesugarCollections;
import java.io.DataOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TXT extends Data {
    public final byte[] blob;
    public transient List characterStringsCache;
    public transient String textCache;

    public TXT(byte[] bArr) {
        this.blob = bArr;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.write(this.blob);
    }

    public final String toString() {
        if (this.textCache == null) {
            StringBuilder sb = new StringBuilder();
            if (this.characterStringsCache == null) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    byte[] bArr = this.blob;
                    if (i >= bArr.length) {
                        break;
                    }
                    int i2 = bArr[i] & 255;
                    int i3 = i + 1;
                    int i4 = i2 + i3;
                    arrayList.add(Arrays.copyOfRange(bArr, i3, i4));
                    i = i4;
                }
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new String((byte[]) it.next(), StandardCharsets.UTF_8));
                }
                this.characterStringsCache = DesugarCollections.unmodifiableList(arrayList2);
            }
            Iterator it2 = this.characterStringsCache.iterator();
            while (it2.hasNext()) {
                sb.append((String) it2.next());
                if (it2.hasNext()) {
                    sb.append(" / ");
                }
            }
            this.textCache = sb.toString();
        }
        return CameraDevices$CC.m("\"", this.textCache, "\"");
    }
}
