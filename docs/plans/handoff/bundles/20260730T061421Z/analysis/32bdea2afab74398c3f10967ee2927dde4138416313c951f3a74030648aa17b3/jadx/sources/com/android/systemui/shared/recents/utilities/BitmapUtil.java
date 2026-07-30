package com.android.systemui.shared.recents.utilities;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ParcelableColorSpace;
import android.hardware.HardwareBuffer;
import android.os.Bundle;
import c.a.c.a.a;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BitmapUtil {
    public static final String KEY_BUFFER = "bitmap_util_buffer";
    public static final String KEY_COLOR_SPACE = "bitmap_util_color_space";

    /* JADX WARN: Type inference failed for: r3v3, types: [android.graphics.ColorSpace, android.graphics.ParcelableColorSpace] */
    public static Bitmap bundleToHardwareBitmap(Bundle bundle) {
        if (!bundle.containsKey(KEY_BUFFER) || !bundle.containsKey(KEY_COLOR_SPACE)) {
            throw new IllegalArgumentException("Bundle does not contain a hardware bitmap");
        }
        HardwareBuffer hardwareBuffer = (HardwareBuffer) bundle.getParcelable(KEY_BUFFER);
        ?? r3 = (ParcelableColorSpace) bundle.getParcelable(KEY_COLOR_SPACE);
        Objects.requireNonNull(hardwareBuffer);
        return Bitmap.wrapHardwareBuffer(hardwareBuffer, r3);
    }

    public static Bundle hardwareBitmapToBundle(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            StringBuilder f = a.f("Passed bitmap must have hardware config, found: ");
            f.append(bitmap.getConfig());
            throw new IllegalArgumentException(f.toString());
        }
        ParcelableColorSpace parcelableColorSpace = bitmap.getColorSpace() == null ? new ParcelableColorSpace(ColorSpace.get(ColorSpace.Named.SRGB)) : new ParcelableColorSpace(bitmap.getColorSpace());
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY_BUFFER, bitmap.getHardwareBuffer());
        bundle.putParcelable(KEY_COLOR_SPACE, parcelableColorSpace);
        return bundle;
    }
}
