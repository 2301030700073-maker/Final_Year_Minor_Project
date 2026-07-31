package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import com.google.android.exoplayer2.C;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlatformTypefacesApi28 implements PlatformTypefaces {
    /* renamed from: createAndroidTypefaceApi28-RetOiIg, reason: not valid java name */
    public static Typeface m415createAndroidTypefaceApi28RetOiIg(String str, FontWeight fontWeight, int i) {
        if (i == 0 && Intrinsics.areEqual(fontWeight, FontWeight.Normal) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        return Typeface.create(str == null ? Typeface.DEFAULT : Typeface.create(str, 0), fontWeight.weight, i == 1);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createDefault-FO1MlWM */
    public final Typeface mo413createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m415createAndroidTypefaceApi28RetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createNamed-RetOiIg */
    public final Typeface mo414createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        genericFontFamily.getClass();
        return m415createAndroidTypefaceApi28RetOiIg(C.SANS_SERIF_NAME, fontWeight, i);
    }
}
