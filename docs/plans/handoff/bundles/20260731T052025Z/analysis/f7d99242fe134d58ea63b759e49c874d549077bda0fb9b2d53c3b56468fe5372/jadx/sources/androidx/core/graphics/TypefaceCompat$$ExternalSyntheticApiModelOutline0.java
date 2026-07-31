package androidx.core.graphics;

import android.content.ClipData;
import android.graphics.fonts.Font;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import android.view.ContentInfo;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class TypefaceCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Font.Builder m(Font font) {
        return new Font.Builder(font);
    }

    public static /* synthetic */ InputConfiguration m(int i, ArrayList arrayList) {
        return new InputConfiguration(arrayList, i);
    }

    public static /* synthetic */ MultiResolutionStreamInfo m(int i, String str, int i2) {
        return new MultiResolutionStreamInfo(i, i2, str);
    }

    public static /* synthetic */ ContentInfo.Builder m(ClipData clipData, int i) {
        return new ContentInfo.Builder(clipData, i);
    }

    public static /* synthetic */ void m() {
    }
}
