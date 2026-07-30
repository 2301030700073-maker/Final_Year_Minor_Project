package defpackage;

import java.util.Arrays;

/* renamed from: Wf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0581Wf {

    /* renamed from: do, reason: not valid java name */
    public final C0823cg f4393do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f4394do;

    public C0581Wf(C0823cg c0823cg, byte[] bArr) {
        if (c0823cg == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f4393do = c0823cg;
        this.f4394do = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0581Wf)) {
            return false;
        }
        C0581Wf c0581Wf = (C0581Wf) obj;
        if (this.f4393do.equals(c0581Wf.f4393do)) {
            return Arrays.equals(this.f4394do, c0581Wf.f4394do);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f4393do.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f4394do);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f4393do + ", bytes=[...]}";
    }
}
