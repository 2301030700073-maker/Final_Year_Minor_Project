package androidx.core.graphics;

import android.content.ClipData;
import android.graphics.fonts.Font;
import android.util.SizeF;
import android.view.ContentInfo;
import android.widget.RemoteViews;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class TypefaceCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Font.Builder m(Font font) {
        return new Font.Builder(font);
    }

    public static /* synthetic */ void m$1() {
    }

    public static /* synthetic */ ContentInfo.Builder m(ClipData clipData, int i) {
        return new ContentInfo.Builder(clipData, i);
    }

    public static /* synthetic */ ContentInfo.Builder m(ContentInfo contentInfo) {
        return new ContentInfo.Builder(contentInfo);
    }

    public static /* synthetic */ RemoteViews m(Map map) {
        return new RemoteViews((Map<SizeF, RemoteViews>) map);
    }
}
