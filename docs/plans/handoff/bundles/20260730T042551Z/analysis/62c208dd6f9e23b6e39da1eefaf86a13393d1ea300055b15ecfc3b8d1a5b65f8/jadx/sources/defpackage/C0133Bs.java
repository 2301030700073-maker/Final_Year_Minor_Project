package defpackage;

import android.media.session.MediaSessionManager;
import j$.util.Objects;

/* renamed from: Bs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0133Bs {

    /* renamed from: do, reason: not valid java name */
    public final MediaSessionManager.RemoteUserInfo f291do;

    public C0133Bs(String str, int i, int i2) {
        this.f291do = new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0133Bs)) {
            return false;
        }
        equals = this.f291do.equals(((C0133Bs) obj).f291do);
        return equals;
    }

    public final int hashCode() {
        return Objects.hash(this.f291do);
    }
}
