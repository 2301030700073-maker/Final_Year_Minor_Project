package androidx.core.text;

import kotlinx.serialization.json.internal.Composer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TextDirectionHeuristicsCompat {
    public static final Composer FIRSTSTRONG_LTR;
    public static final Composer FIRSTSTRONG_RTL;
    public static final Composer LTR = new Composer((FirstStrong) null, false);
    public static final Composer RTL = new Composer((FirstStrong) null, true);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FirstStrong {
        public static final FirstStrong INSTANCE = new FirstStrong();
    }

    static {
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new Composer(firstStrong, false);
        FIRSTSTRONG_RTL = new Composer(firstStrong, true);
    }
}
