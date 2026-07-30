package b.e.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import b.e.g.g;
import java.io.IOException;

/* loaded from: classes.dex */
public class d extends e {
    @Override // b.e.d.e
    public Typeface a(Context context, b.e.c.c.b bVar, Resources resources, int i) {
        b.e.c.c.c[] cVarArr = bVar.f677a;
        int length = cVarArr.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                break;
            }
            b.e.c.c.c cVar = cVarArr[i2];
            try {
                Font.Builder weight = new Font.Builder(resources, cVar.f).setWeight(cVar.f679b);
                if (!cVar.f680c) {
                    i3 = 0;
                }
                Font build = weight.setSlant(i3).setTtcIndex(cVar.e).setFontVariationSettings(cVar.f681d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
            i2++;
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
    }

    @Override // b.e.d.e
    public Typeface b(Context context, CancellationSignal cancellationSignal, g[] gVarArr, int i) {
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        int length = gVarArr.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                if (builder == null) {
                    return null;
                }
                return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
            }
            g gVar = gVarArr[i2];
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(gVar.f716a, "r", cancellationSignal);
            } catch (IOException unused) {
            }
            if (openFileDescriptor != null) {
                try {
                    Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(gVar.f718c);
                    if (!gVar.f719d) {
                        i3 = 0;
                    }
                    Font build = weight.setSlant(i3).setTtcIndex(gVar.f717b).build();
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
            } else if (openFileDescriptor == null) {
                i2++;
            }
            openFileDescriptor.close();
            i2++;
        }
    }

    @Override // b.e.d.e
    public Typeface c(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException unused) {
            return null;
        }
    }
}
