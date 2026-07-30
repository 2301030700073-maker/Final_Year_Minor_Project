package androidx.media;

import android.util.SparseIntArray;
import defpackage.JK;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements JK {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f7155do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AudioAttributesImpl f7156do;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f7156do;
        return audioAttributesImpl == null ? audioAttributesCompat.f7156do == null : audioAttributesImpl.equals(audioAttributesCompat.f7156do);
    }

    public final int hashCode() {
        return this.f7156do.hashCode();
    }

    public final String toString() {
        return this.f7156do.toString();
    }
}
