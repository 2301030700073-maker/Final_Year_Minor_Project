package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.exifinterface.media.ExifInterface;
import coil3.util.BitmapsKt;
import okio.BufferedSource;
import okio.RealBufferedSource$inputStream$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExifUtils {
    public static final ExifUtils INSTANCE = new ExifUtils();
    private static final Paint paint = new Paint(3);

    private ExifUtils() {
    }

    public final ExifData getExifData(String str, BufferedSource bufferedSource, ExifOrientationStrategy exifOrientationStrategy) {
        if (!exifOrientationStrategy.supports(str, bufferedSource)) {
            return ExifData.NONE;
        }
        ExifInterface exifInterface = new ExifInterface(new ExifInterfaceInputStream(new RealBufferedSource$inputStream$1(bufferedSource.peek())));
        int attributeInt = exifInterface.getAttributeInt("Orientation", 1);
        int i = 0;
        boolean z = attributeInt == 2 || attributeInt == 7 || attributeInt == 4 || attributeInt == 5;
        switch (exifInterface.getAttributeInt("Orientation", 1)) {
            case 3:
            case 4:
                i = 180;
                break;
            case 5:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                i = 270;
                break;
            case 6:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                i = 90;
                break;
        }
        return new ExifData(z, i);
    }

    public final Bitmap reverseTransformations(Bitmap bitmap, ExifData exifData) {
        if (!exifData.isFlipped() && !ExifUtilsKt.isRotated(exifData)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width = bitmap.getWidth() / 2.0f;
        float height = bitmap.getHeight() / 2.0f;
        if (exifData.isFlipped()) {
            matrix.postScale(-1.0f, 1.0f, width, height);
        }
        if (ExifUtilsKt.isRotated(exifData)) {
            matrix.postRotate(exifData.getRotationDegrees(), width, height);
        }
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        float f = rectF.left;
        if (f != 0.0f || rectF.top != 0.0f) {
            matrix.postTranslate(-f, -rectF.top);
        }
        Bitmap createBitmap = ExifUtilsKt.isSwapped(exifData) ? Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), BitmapsKt.getSafeConfig(bitmap)) : Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), BitmapsKt.getSafeConfig(bitmap));
        new Canvas(createBitmap).drawBitmap(bitmap, matrix, paint);
        bitmap.recycle();
        return createBitmap;
    }
}
