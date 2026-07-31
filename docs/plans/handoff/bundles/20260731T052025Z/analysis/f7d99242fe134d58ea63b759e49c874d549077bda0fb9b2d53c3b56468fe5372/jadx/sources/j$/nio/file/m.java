package j$.nio.file;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements java.nio.file.OpenOption {
    public final /* synthetic */ OpenOption a;

    public /* synthetic */ m(OpenOption openOption) {
        this.a = openOption;
    }

    public static /* synthetic */ java.nio.file.OpenOption a(OpenOption openOption) {
        if (openOption == null) {
            return null;
        }
        return openOption instanceof l ? ((l) openOption).a : openOption instanceof LinkOption ? java.nio.file.LinkOption.NOFOLLOW_LINKS : openOption instanceof StandardOpenOption ? j$.com.android.tools.r8.a.q((StandardOpenOption) openOption) : new m(openOption);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        OpenOption openOption = this.a;
        if (obj instanceof m) {
            obj = ((m) obj).a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
