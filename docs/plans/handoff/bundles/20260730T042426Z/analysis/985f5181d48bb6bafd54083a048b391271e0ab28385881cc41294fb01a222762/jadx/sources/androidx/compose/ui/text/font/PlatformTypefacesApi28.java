package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontStyle;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlatformTypefaces.android.kt */
/* loaded from: classes.dex */
final class PlatformTypefacesApi28 implements PlatformTypefaces {
    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createDefault-FO1MlWM */
    public Typeface mo2182createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m2186createAndroidTypefaceApi28RetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createNamed-RetOiIg */
    public Typeface mo2183createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        return m2186createAndroidTypefaceApi28RetOiIg(genericFontFamily.getName(), fontWeight, i);
    }

    /* renamed from: createAndroidTypefaceApi28-RetOiIg, reason: not valid java name */
    private final Typeface m2186createAndroidTypefaceApi28RetOiIg(String str, FontWeight fontWeight, int i) {
        Typeface create;
        Typeface create2;
        FontStyle.Companion companion = FontStyle.Companion;
        if (FontStyle.m2163equalsimpl0(i, companion.m2168getNormal_LCdwA()) && Intrinsics.areEqual(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        if (str == null) {
            create = Typeface.DEFAULT;
        } else {
            create = Typeface.create(str, 0);
        }
        create2 = Typeface.create(create, fontWeight.getWeight(), FontStyle.m2163equalsimpl0(i, companion.m2167getItalic_LCdwA()));
        return create2;
    }
}
