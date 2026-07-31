package j$.nio.file;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class o implements OpenOption {
    public final /* synthetic */ java.nio.file.OpenOption a;

    public /* synthetic */ o(java.nio.file.OpenOption openOption) {
        this.a = openOption;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [j$.nio.file.OpenOption, java.nio.file.StandardOpenOption] */
    /* JADX WARN: Type inference failed for: r1v4, types: [j$.nio.file.OpenOption, java.nio.file.LinkOption] */
    public static /* synthetic */ OpenOption a(java.nio.file.OpenOption openOption) {
        if (openOption == 0) {
            return null;
        }
        if (openOption instanceof p) {
            return ((p) openOption).a;
        }
        if (!(openOption instanceof LinkOption)) {
            return openOption instanceof a0 ? j$.com.android.tools.r8.a.s((a0) openOption) : new o(openOption);
        }
        return java.nio.file.LinkOption.NOFOLLOW_LINKS;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.OpenOption openOption = this.a;
        if (obj instanceof o) {
            obj = ((o) obj).a;
        }
        return openOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
