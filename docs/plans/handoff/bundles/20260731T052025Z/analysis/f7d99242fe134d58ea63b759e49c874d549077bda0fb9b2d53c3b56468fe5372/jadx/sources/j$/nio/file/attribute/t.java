package j$.nio.file.attribute;

import java.nio.file.attribute.PosixFileAttributeView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class t implements d, q {
    public final /* synthetic */ PosixFileAttributeView a;

    public /* synthetic */ t(PosixFileAttributeView posixFileAttributeView) {
        this.a = posixFileAttributeView;
    }

    @Override // j$.nio.file.attribute.d
    public final /* synthetic */ void a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        this.a.setTimes(j$.com.android.tools.r8.a.r(fileTime), j$.com.android.tools.r8.a.r(fileTime2), j$.com.android.tools.r8.a.r(fileTime3));
    }

    @Override // j$.nio.file.attribute.q
    public final /* synthetic */ void b(z zVar) {
        this.a.setOwner(y.a(zVar));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PosixFileAttributeView posixFileAttributeView = this.a;
        if (obj instanceof t) {
            obj = ((t) obj).a;
        }
        return posixFileAttributeView.equals(obj);
    }

    @Override // j$.nio.file.attribute.q
    public final /* synthetic */ z getOwner() {
        return x.a(this.a.getOwner());
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.attribute.n
    public final /* synthetic */ String name() {
        return this.a.name();
    }

    @Override // j$.nio.file.attribute.d
    public final /* synthetic */ BasicFileAttributes readAttributes() {
        return e.a(this.a.readAttributes());
    }
}
