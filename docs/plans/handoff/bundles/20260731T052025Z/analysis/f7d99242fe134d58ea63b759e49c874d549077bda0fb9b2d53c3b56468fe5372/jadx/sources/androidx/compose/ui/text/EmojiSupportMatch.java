package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmojiSupportMatch {
    public final int value;

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m683toStringimpl(int i) {
        return i == 0 ? "EmojiSupportMatch.Default" : i == 1 ? "EmojiSupportMatch.None" : i == 2 ? "EmojiSupportMatch.All" : CameraDevices$CC.m("Invalid(value=", i, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof EmojiSupportMatch) {
            return this.value == ((EmojiSupportMatch) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return m683toStringimpl(this.value);
    }
}
