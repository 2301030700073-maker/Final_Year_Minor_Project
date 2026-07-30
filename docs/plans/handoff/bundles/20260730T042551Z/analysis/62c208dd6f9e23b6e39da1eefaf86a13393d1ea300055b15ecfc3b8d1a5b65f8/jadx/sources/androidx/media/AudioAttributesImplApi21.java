package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

@TargetApi(21)
/* loaded from: classes.dex */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: do, reason: not valid java name */
    public int f7157do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AudioAttributes f7158do;

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f7158do.equals(((AudioAttributesImplApi21) obj).f7158do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7158do.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f7158do;
    }
}
