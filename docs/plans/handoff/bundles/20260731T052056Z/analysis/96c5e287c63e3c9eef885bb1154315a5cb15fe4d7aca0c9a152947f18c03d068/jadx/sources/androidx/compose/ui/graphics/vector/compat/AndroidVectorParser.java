package androidx.compose.ui.graphics.vector.compat;

import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import androidx.compose.animation.core.Animation;
import androidx.core.content.res.CamUtils;
import androidx.paging.HintHandler;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidVectorParser {
    public int config = 0;
    public final HintHandler pathParser;
    public final XmlPullParser xmlParser;

    public AndroidVectorParser(XmlResourceParser xmlResourceParser) {
        this.xmlParser = xmlResourceParser;
        HintHandler hintHandler = new HintHandler(1, false);
        hintHandler.state = new float[64];
        this.pathParser = hintHandler;
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
        return Animation.CC.m(sb, this.config, ')');
    }

    public final void updateConfig(int i) {
        this.config = i | this.config;
    }
}
