package androidx.core.text;

import com.fsck.k9.mailstore.LocalFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextDirectionHeuristicsCompat {
    public static final LocalFolder.AnonymousClass8 FIRSTSTRONG_LTR;
    public static final LocalFolder.AnonymousClass8 FIRSTSTRONG_RTL;
    public static final LocalFolder.AnonymousClass8 LTR = new LocalFolder.AnonymousClass8((FirstStrong) null, false);
    public static final LocalFolder.AnonymousClass8 RTL = new LocalFolder.AnonymousClass8((FirstStrong) null, true);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FirstStrong {
        public static final FirstStrong INSTANCE = new FirstStrong();
    }

    static {
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new LocalFolder.AnonymousClass8(firstStrong, false);
        FIRSTSTRONG_RTL = new LocalFolder.AnonymousClass8(firstStrong, true);
    }
}
