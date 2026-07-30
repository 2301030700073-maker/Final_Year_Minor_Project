package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.internal.Utility;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.7y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC10347y {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{2, 6, 10, 12, 14};
    }

    public static int A00(BitmapFactory.Options options, int halfWidth, int i) {
        int width = options.outHeight;
        int height = options.outWidth;
        int halfHeight = 1;
        if (width > i || height > halfWidth) {
            int inSampleSize = width / 2;
            int width2 = height / 2;
            while (inSampleSize / halfHeight >= i && width2 / halfHeight >= halfWidth) {
                halfHeight *= 2;
            }
        }
        return halfHeight;
    }

    public static Bitmap A01(InputStream inputStream, int i, int i2) throws IOException {
        C08571a c08571a = new C08571a(inputStream);
        c08571a.mark(Utility.DEFAULT_STREAM_BUFFER_SIZE);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(c08571a, null, options);
        c08571a.reset();
        if (!c08571a.A00()) {
            options.inSampleSize = A00(options, i2, i);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(c08571a, null, options);
        }
        return BitmapFactory.decodeStream(c08571a);
    }

    public static Bitmap A02(String str, int i, int i2, AnonymousClass85 anonymousClass85) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = A00(options, i2, i);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Throwable t) {
            anonymousClass85.A08().AAu(A03(0, 5, 116), AbstractC10358a.A1h, new C10368b(t));
            return null;
        }
    }
}
