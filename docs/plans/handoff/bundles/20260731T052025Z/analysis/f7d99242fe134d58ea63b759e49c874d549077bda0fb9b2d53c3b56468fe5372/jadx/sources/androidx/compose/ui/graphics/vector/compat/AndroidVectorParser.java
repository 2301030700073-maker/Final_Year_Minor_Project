package androidx.compose.ui.graphics.vector.compat;

import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.content.res.CamUtils;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidVectorParser {
    public int config = 0;
    public final WeakCache pathParser = new WeakCache(4);
    public final XmlPullParser xmlParser;

    public AndroidVectorParser(XmlResourceParser xmlResourceParser) {
        this.xmlParser = xmlResourceParser;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidVectorParser)) {
            return false;
        }
        AndroidVectorParser androidVectorParser = (AndroidVectorParser) obj;
        return Intrinsics.areEqual(this.xmlParser, androidVectorParser.xmlParser) && this.config == androidVectorParser.config;
    }

    public final float getNamedFloat(TypedArray typedArray, String str, int i, float f) {
        if (CamUtils.hasAttribute(this.xmlParser, str)) {
            f = typedArray.getFloat(i, f);
        }
        updateConfig(typedArray.getChangingConfigurations());
        return f;
    }

    public final int hashCode() {
        return (this.xmlParser.hashCode() * 31) + this.config;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidVectorParser(xmlParser=");
        sb.append(this.xmlParser);
        sb.append(", config=");
        return CameraDevices$CC.m(sb, this.config, ')');
    }

    public final void updateConfig(int i) {
        this.config = i | this.config;
    }
}
