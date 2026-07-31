package com.eygraber.uri.parts;

import com.eygraber.uri.UriCodec;
import kotlin.ranges.CharRange;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Part extends AbstractPart {
    public static final EmptyPart NULL = new EmptyPart(null);
    public static final EmptyPart EMPTY = new EmptyPart("");

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyPart extends Part {
        public final boolean isEmpty;

        public EmptyPart(String str) {
            super(str, str);
            if (str == null || str.length() == 0) {
                this.isEmpty = true;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Expected empty value, got: ".concat(str));
                throw null;
            }
        }

        @Override // com.eygraber.uri.parts.Part
        public final boolean isEmpty() {
            return this.isEmpty;
        }
    }

    @Override // com.eygraber.uri.parts.AbstractPart
    public final String encode(String str) {
        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
        if (str == null) {
            return null;
        }
        return UriCodec.encode(str, null);
    }

    public boolean isEmpty() {
        return false;
    }
}
