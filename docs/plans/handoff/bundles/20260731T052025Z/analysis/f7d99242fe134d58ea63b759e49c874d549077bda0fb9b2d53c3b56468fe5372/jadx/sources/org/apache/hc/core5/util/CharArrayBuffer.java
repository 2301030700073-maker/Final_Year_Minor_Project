package org.apache.hc.core5.util;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import java.io.Serializable;
import java.nio.CharBuffer;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharArrayBuffer implements CharSequence, Serializable {
    public char[] array;
    public int len;

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.array[i];
    }

    public final boolean isEmpty() {
        return this.len == 0;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.len;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(CameraDevices$CC.m("Negative beginIndex: ", i));
            return null;
        }
        if (i2 > this.len) {
            Regex$$ExternalSyntheticBUOutline0.m(this.len, CameraDevices$CC.m30m(i2, "endIndex: ", " > length: "));
            return null;
        }
        if (i <= i2) {
            return CharBuffer.wrap(this.array, i, i2 - i);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "beginIndex: ", " > endIndex: "));
        return null;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return new String(this.array, 0, this.len);
    }
}
