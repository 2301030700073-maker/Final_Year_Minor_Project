package androidx.media;

import android.text.TextUtils;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MediaSessionManagerImplBase$RemoteUserInfoImplBase {
    public final String mPackageName;
    public final int mPid;
    public final int mUid;

    public MediaSessionManagerImplBase$RemoteUserInfoImplBase(String str, int i, int i2) {
        this.mPackageName = str;
        this.mPid = i;
        this.mUid = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManagerImplBase$RemoteUserInfoImplBase)) {
            return false;
        }
        MediaSessionManagerImplBase$RemoteUserInfoImplBase mediaSessionManagerImplBase$RemoteUserInfoImplBase = (MediaSessionManagerImplBase$RemoteUserInfoImplBase) obj;
        int i = mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid;
        String str = mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName;
        int i2 = mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid;
        int i3 = this.mUid;
        String str2 = this.mPackageName;
        int i4 = this.mPid;
        return (i4 < 0 || i2 < 0) ? TextUtils.equals(str2, str) && i3 == i : TextUtils.equals(str2, str) && i4 == i2 && i3 == i;
    }

    public final int hashCode() {
        return Objects.hash(this.mPackageName, Integer.valueOf(this.mUid));
    }
}
