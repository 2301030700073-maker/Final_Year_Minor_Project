package j$.nio.file.attribute;

import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class k implements java.nio.file.attribute.FileAttribute {
    public final /* synthetic */ FileAttribute a;

    public k(FileAttribute fileAttribute) {
        this.a = fileAttribute;
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final String name() {
        return "posix:permissions";
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final Object value() {
        return Collections.unmodifiableSet(j$.com.android.tools.r8.a.y((Set) this.a.value()));
    }
}
