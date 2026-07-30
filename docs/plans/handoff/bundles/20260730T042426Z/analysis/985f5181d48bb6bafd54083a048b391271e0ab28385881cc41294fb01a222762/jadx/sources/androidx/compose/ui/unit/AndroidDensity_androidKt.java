package androidx.compose.ui.unit;

import android.content.Context;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;

/* compiled from: AndroidDensity.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidDensity_androidKt {
    public static final Density Density(Context context) {
        float f = context.getResources().getConfiguration().fontScale;
        float f2 = context.getResources().getDisplayMetrics().density;
        FontScaleConverter forScale = FontScaleConverterFactory.INSTANCE.forScale(f);
        if (forScale == null) {
            forScale = new LinearFontScaleConverter(f);
        }
        return new DensityWithConverter(f2, f, forScale);
    }
}
