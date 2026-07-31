package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import android.text.TextUtils;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocusIdCompat {
    public final String mId;
    public final LocusId mWrapped;

    public LocusIdCompat(String str) {
        if (TextUtils.isEmpty(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("id cannot be empty");
            throw null;
        }
        this.mId = str;
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped = FileUtil.create(str);
        } else {
            this.mWrapped = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = ((LocusIdCompat) obj).mId;
        String str2 = this.mId;
        return str2 == null ? str == null : str2.equals(str);
    }

    public final int hashCode() {
        String str = this.mId;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LocusIdCompat[");
        sb.append(this.mId.length() + "_chars");
        sb.append("]");
        return sb.toString();
    }
}
