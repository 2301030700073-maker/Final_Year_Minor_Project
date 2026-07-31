package org.apache.james.mime4j.stream;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeConfig {
    public final /* synthetic */ int $r8$classId = 1;
    public final int maxHeaderCount;
    public int maxHeaderLen;
    public final int maxLineLen;

    public MimeConfig(int i, int i2) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Lower bound cannot be negative");
            throw null;
        }
        if (i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Lower bound cannot be greater then upper bound");
            throw null;
        }
        this.maxLineLen = i;
        this.maxHeaderCount = i2;
        this.maxHeaderLen = i;
    }

    public boolean atEnd() {
        return this.maxHeaderLen >= this.maxHeaderCount;
    }

    public final String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("[strictParsing=false, maxLineLen=");
                sb.append(this.maxLineLen);
                sb.append(", maxHeaderCount=");
                sb.append(this.maxHeaderCount);
                sb.append(", maxHeaderLen=");
                return CameraDevices$CC.m(sb, this.maxHeaderLen, ", maxContentLen=-1, countLineNumbers=false, headlessParsing=null, malformedHeaderStartsBody=false]");
            default:
                StringBuilder sb2 = new StringBuilder("[");
                sb2.append(this.maxLineLen);
                sb2.append('>');
                sb2.append(this.maxHeaderLen);
                sb2.append('>');
                return CameraDevices$CC.m(sb2, this.maxHeaderCount, ']');
        }
    }

    public void updatePos(int i) {
        int i2 = this.maxLineLen;
        if (i < i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i2, "pos: ", " < lowerBound: "));
            return;
        }
        int i3 = this.maxHeaderCount;
        if (i <= i3) {
            this.maxHeaderLen = i;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, i3, "pos: ", " > upperBound: "));
        }
    }

    public MimeConfig(int i, int i2, int i3) {
        this.maxLineLen = i;
        this.maxHeaderCount = i2;
        this.maxHeaderLen = i3;
    }
}
