package kotlinx.datetime.internal.format.parser;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import kotlinx.datetime.internal.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlainStringParserOperation implements ParserOperation {
    public final String string;

    public PlainStringParserOperation(String str) {
        str.getClass();
        this.string = str;
        if (str.length() <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Empty string is not allowed");
            throw null;
        }
        if (MathKt.isAsciiDigit(str.charAt(0))) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("String '", str, "' starts with a digit"));
            throw null;
        }
        if (MathKt.isAsciiDigit(str.charAt(str.length() - 1))) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("String '", str, "' ends with a digit"));
            throw null;
        }
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    /* renamed from: consume-FANa98k */
    public final Object mo1023consumeFANa98k(Copyable copyable, String str, int i) {
        String str2 = this.string;
        if (str2.length() + i > str.length()) {
            return new ParseError(i, new K9$$ExternalSyntheticLambda0(27, this));
        }
        int length = str2.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i + i2) != str2.charAt(i2)) {
                return new ParseError(i, new Http2Connection$$ExternalSyntheticLambda3(this, str, i, i2));
            }
        }
        return Integer.valueOf(str2.length() + i);
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("'"), this.string, '\'');
    }
}
