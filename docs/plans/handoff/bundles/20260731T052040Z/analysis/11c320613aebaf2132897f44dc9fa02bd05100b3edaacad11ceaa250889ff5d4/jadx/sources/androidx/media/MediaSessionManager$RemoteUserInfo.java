package androidx.media;

import android.os.Build;
import android.text.TextUtils;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaSessionManager$RemoteUserInfo {
    public MediaSessionManagerImplBase$RemoteUserInfoImplBase mImpl;

    public MediaSessionManager$RemoteUserInfo(String str, int i, int i2) {
        if (str == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("package shouldn't be null");
            throw null;
        }
        if (TextUtils.isEmpty(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("packageName should be nonempty");
            throw null;
        }
        if (Build.VERSION.SDK_INT < 28) {
            this.mImpl = new MediaSessionManagerImplBase$RemoteUserInfoImplBase(str, i, i2);
            return;
        }
        MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 mediaSessionManagerImplApi28$RemoteUserInfoImplApi28 = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i, i2);
        MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline0.m(i, i2, str);
        this.mImpl = mediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaSessionManager$RemoteUserInfo) {
            return this.mImpl.equals(((MediaSessionManager$RemoteUserInfo) obj).mImpl);
        }
        return false;
    }

    public final int hashCode() {
        return this.mImpl.hashCode();
    }
}
