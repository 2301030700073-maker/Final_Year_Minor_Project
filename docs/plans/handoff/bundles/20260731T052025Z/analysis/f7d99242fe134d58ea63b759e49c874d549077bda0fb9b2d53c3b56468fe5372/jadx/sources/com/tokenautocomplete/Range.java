package com.tokenautocomplete;

import androidx.camera.core.impl.Config;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Range {
    public final int end;
    public final int start;

    public Range(int i, int i2) {
        if (i <= i2) {
            this.start = i;
            this.end = i2;
        } else {
            Locale locale = Locale.ENGLISH;
            UriKt$$ExternalSyntheticBUOutline0.m(Config.CC.m("Start (", i, ") cannot be greater than end (", i2, ")"));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return range.start == this.start && range.end == this.end;
    }

    public final int hashCode() {
        return (this.start * 31) + this.end;
    }

    public final String toString() {
        Locale locale = Locale.US;
        return Config.CC.m("[", this.start, "..", this.end, "]");
    }
}
