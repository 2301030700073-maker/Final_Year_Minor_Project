package androidx.core.graphics;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.provider.FontsContractCompat$FontInfo;
import j$.util.Objects;
import java.io.IOException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypefaceCompatApi31Impl extends TypefaceCompatApi29Impl {
    @Override // androidx.core.graphics.TypefaceCompatApi29Impl
    public final Font getFontFromSystemFont(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        Font guessPrimaryFont;
        Uri uri = fontsContractCompat$FontInfo.mUri;
        boolean equals = Objects.equals(uri.getScheme(), "systemfont");
        String str = fontsContractCompat$FontInfo.mVariationSettings;
        String authority = equals ? uri.getAuthority() : null;
        if (authority != null) {
            Typeface create = Typeface.create(authority, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create == null || create.equals(create2)) {
                create = null;
            }
            if (create != null && (guessPrimaryFont = TypefaceCompat.guessPrimaryFont(create)) != null) {
                if (TextUtils.isEmpty(str)) {
                    return guessPrimaryFont;
                }
                try {
                    return new Font.Builder(guessPrimaryFont).setFontVariationSettings(str).build();
                } catch (IOException unused) {
                    Log.e("TypefaceCompatApi31Impl", "Failed to clone Font instance. Fall back to provider font.");
                    return null;
                }
            }
        }
        return null;
    }
}
