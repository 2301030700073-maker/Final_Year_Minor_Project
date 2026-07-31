package org.apache.james.mime4j.util;

import androidx.compose.ui.Modifier;
import j$.util.Optional;
import java.util.ArrayList;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BufferRecycler {
    public static final boolean ENABLED = ((Boolean) Optional.ofNullable(System.getProperty("james.mime4j.buffer.recycling.enabled")).map(new Element$$ExternalSyntheticLambda1(1)).orElse(Boolean.TRUE)).booleanValue();
    public final ArrayList[] _byteBuffers = new ArrayList[4];
    public final ArrayList[] _charBuffers;
    public final ArrayList _intBuffers;

    public BufferRecycler() {
        for (int i = 0; i < 4; i++) {
            this._byteBuffers[i] = new ArrayList();
        }
        this._charBuffers = new ArrayList[4];
        for (int i2 = 0; i2 < 4; i2++) {
            this._charBuffers[i2] = new ArrayList();
        }
        this._intBuffers = new ArrayList();
    }

    public final byte[] allocByteBuffer(int i, int i2) {
        if (i2 < 4000) {
            i2 = 4000;
        }
        ArrayList arrayList = this._byteBuffers[i];
        byte[] bArr = arrayList.size() > 0 ? (byte[]) Modifier.CC.m(1, arrayList) : null;
        return (bArr == null || bArr.length < i2) ? new byte[i2] : bArr;
    }

    public final void releaseByteBuffer(int i, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        this._byteBuffers[i].add(bArr);
    }
}
