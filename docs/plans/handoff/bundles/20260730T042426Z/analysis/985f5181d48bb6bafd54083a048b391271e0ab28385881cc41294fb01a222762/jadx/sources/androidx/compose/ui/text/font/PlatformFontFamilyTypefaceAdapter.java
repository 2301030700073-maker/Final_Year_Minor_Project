package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.TypefaceResult;
import kotlin.jvm.functions.Function1;

/* compiled from: PlatformFontFamilyTypefaceAdapter.android.kt */
/* loaded from: classes.dex */
public final class PlatformFontFamilyTypefaceAdapter {
    private final PlatformTypefaces platformTypefaceResolver = PlatformTypefaces_androidKt.PlatformTypefaces();

    public TypefaceResult resolve(TypefaceRequest typefaceRequest, PlatformFontLoader platformFontLoader, Function1 function1, Function1 function12) {
        Typeface mo2183createNamedRetOiIg;
        FontFamily fontFamily = typefaceRequest.getFontFamily();
        if (fontFamily == null ? true : fontFamily instanceof DefaultFontFamily) {
            mo2183createNamedRetOiIg = this.platformTypefaceResolver.mo2182createDefaultFO1MlWM(typefaceRequest.getFontWeight(), typefaceRequest.m2189getFontStyle_LCdwA());
        } else {
            if (!(fontFamily instanceof GenericFontFamily)) {
                return null;
            }
            mo2183createNamedRetOiIg = this.platformTypefaceResolver.mo2183createNamedRetOiIg((GenericFontFamily) typefaceRequest.getFontFamily(), typefaceRequest.getFontWeight(), typefaceRequest.m2189getFontStyle_LCdwA());
        }
        return new TypefaceResult.Immutable(mo2183createNamedRetOiIg, false, 2, null);
    }
}
