package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlatformTypefaces.android.kt */
/* loaded from: classes.dex */
final class PlatformTypefacesApi implements PlatformTypefaces {
    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createDefault-FO1MlWM */
    public Typeface mo2182createDefaultFO1MlWM(FontWeight fontWeight, int i) {
        return m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    /* renamed from: createNamed-RetOiIg */
    public Typeface mo2183createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
        Typeface m2185loadNamedFromTypefaceCacheOrNullRetOiIg = m2185loadNamedFromTypefaceCacheOrNullRetOiIg(PlatformTypefaces_androidKt.getWeightSuffixForFallbackFamilyName(genericFontFamily.getName(), fontWeight), fontWeight, i);
        return m2185loadNamedFromTypefaceCacheOrNullRetOiIg == null ? m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg(genericFontFamily.getName(), fontWeight, i) : m2185loadNamedFromTypefaceCacheOrNullRetOiIg;
    }

    /* renamed from: loadNamedFromTypefaceCacheOrNull-RetOiIg, reason: not valid java name */
    private final Typeface m2185loadNamedFromTypefaceCacheOrNullRetOiIg(String str, FontWeight fontWeight, int i) {
        if (str.length() == 0) {
            return null;
        }
        Typeface m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg = m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
        if (Intrinsics.areEqual(m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg, Typeface.create(Typeface.DEFAULT, AndroidFontUtils_androidKt.m2156getAndroidTypefaceStyleFO1MlWM(fontWeight, i))) || Intrinsics.areEqual(m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg, m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i))) {
            return null;
        }
        return m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg;
    }

    /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg, reason: not valid java name */
    private final Typeface m2184createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i) {
        if (FontStyle.m2163equalsimpl0(i, FontStyle.Companion.m2168getNormal_LCdwA()) && Intrinsics.areEqual(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        int m2156getAndroidTypefaceStyleFO1MlWM = AndroidFontUtils_androidKt.m2156getAndroidTypefaceStyleFO1MlWM(fontWeight, i);
        if (str == null || str.length() == 0) {
            return Typeface.defaultFromStyle(m2156getAndroidTypefaceStyleFO1MlWM);
        }
        return Typeface.create(str, m2156getAndroidTypefaceStyleFO1MlWM);
    }
}
