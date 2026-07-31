package j$.nio.file.attribute;

import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return Collections.unmodifiableSet(j$.com.android.tools.r8.a.A((Set) this.a.value()));
    }
}
