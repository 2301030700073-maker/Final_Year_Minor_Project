package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import defpackage.C3464oj;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class QI extends SI {
    /* renamed from: else, reason: not valid java name */
    public static Font m1842else(FontFamily fontFamily, int i) {
        FontStyle fontStyle = new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int m1843goto = m1843goto(fontStyle, font.getStyle());
        for (int i2 = 1; i2 < fontFamily.getSize(); i2++) {
            Font font2 = fontFamily.getFont(i2);
            int m1843goto2 = m1843goto(fontStyle, font2.getStyle());
            if (m1843goto2 < m1843goto) {
                font = font2;
                m1843goto = m1843goto2;
            }
        }
        return font;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m1843goto(FontStyle fontStyle, FontStyle fontStyle2) {
        int weight;
        int weight2;
        int slant;
        int slant2;
        weight = fontStyle.getWeight();
        weight2 = fontStyle2.getWeight();
        int abs = Math.abs(weight - weight2) / 100;
        slant = fontStyle.getSlant();
        slant2 = fontStyle2.getSlant();
        return abs + (slant == slant2 ? 0 : 2);
    }

    @Override // defpackage.SI
    /* renamed from: case, reason: not valid java name */
    public final C3582qj mo1844case(int i, C3582qj[] c3582qjArr) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // defpackage.SI
    /* renamed from: do */
    public final Typeface mo1408do(Context context, C3464oj.Cfor cfor, Resources resources, int i) {
        try {
            FontFamily.Builder builder = null;
            for (C3464oj.Cnew cnew : cfor.f14831do) {
                try {
                    Font build = new Font.Builder(resources, cnew.f14835for).setWeight(cnew.f14832do).setSlant(cnew.f14834do ? 1 : 0).setTtcIndex(cnew.f14836if).setFontVariationSettings(cnew.f14837if).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(m1842else(build2, i).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // defpackage.SI
    /* renamed from: for, reason: not valid java name */
    public final Typeface mo1845for(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // defpackage.SI
    /* renamed from: if */
    public final Typeface mo1409if(Context context, C3582qj[] c3582qjArr, int i) {
        int i2;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = c3582qjArr.length;
            FontFamily.Builder builder = null;
            while (i2 < length) {
                C3582qj c3582qj = c3582qjArr[i2];
                try {
                    openFileDescriptor = contentResolver.openFileDescriptor(c3582qj.f15149do, "r", null);
                } catch (IOException unused) {
                }
                if (openFileDescriptor == null) {
                    i2 = openFileDescriptor == null ? i2 + 1 : 0;
                } else {
                    try {
                        Font build = new Font.Builder(openFileDescriptor).setWeight(c3582qj.f15152if).setSlant(c3582qj.f15150do ? 1 : 0).setTtcIndex(c3582qj.f15148do).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(build);
                        } else {
                            builder.addFont(build);
                        }
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                openFileDescriptor.close();
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(m1842else(build2, i).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // defpackage.SI
    /* renamed from: new */
    public final Typeface mo1657new(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }
}
