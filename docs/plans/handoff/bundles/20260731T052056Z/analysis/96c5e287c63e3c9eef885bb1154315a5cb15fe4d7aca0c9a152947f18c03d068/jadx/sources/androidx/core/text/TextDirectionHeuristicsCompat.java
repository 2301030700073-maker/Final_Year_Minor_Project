package androidx.core.text;

import kotlinx.serialization.json.internal.Composer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TextDirectionHeuristicsCompat {
    public static final Composer FIRSTSTRONG_LTR;
    public static final Composer FIRSTSTRONG_RTL;
    public static final Composer LTR = new Composer((FirstStrong) null, false);
    public static final Composer RTL = new Composer((FirstStrong) null, true);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FirstStrong {
        public static final FirstStrong INSTANCE = new FirstStrong();
    }

    static {
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new Composer(firstStrong, false);
        FIRSTSTRONG_RTL = new Composer(firstStrong, true);
    }
}
