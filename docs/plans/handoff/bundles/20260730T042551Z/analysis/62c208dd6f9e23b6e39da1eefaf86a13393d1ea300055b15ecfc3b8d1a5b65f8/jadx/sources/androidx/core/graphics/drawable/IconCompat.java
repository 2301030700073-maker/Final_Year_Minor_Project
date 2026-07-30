package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: if, reason: not valid java name */
    public static final PorterDuff.Mode f6520if = PorterDuff.Mode.SRC_IN;

    /* renamed from: do, reason: not valid java name */
    public int f6521do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f6522do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f6523do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Parcelable f6524do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f6525do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f6526do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public byte[] f6527do;

    /* renamed from: for, reason: not valid java name */
    public int f6528for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f6529if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f6530if;

    /* renamed from: androidx.core.graphics.drawable.IconCompat$do, reason: invalid class name */
    public static class Cdo {
        /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
        /* renamed from: case, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static android.graphics.drawable.Icon m3726case(androidx.core.graphics.drawable.IconCompat r5, android.content.Context r6) {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.Cdo.m3726case(androidx.core.graphics.drawable.IconCompat, android.content.Context):android.graphics.drawable.Icon");
        }

        /* renamed from: do, reason: not valid java name */
        public static int m3727do(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Cfor.m3732do(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return 0;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public static int m3728for(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Cfor.m3733for(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException unused) {
                Objects.toString(obj);
                return -1;
            } catch (NoSuchMethodException unused2) {
                Objects.toString(obj);
                return -1;
            } catch (InvocationTargetException unused3) {
                Objects.toString(obj);
                return -1;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static String m3729if(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Cfor.m3734if(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }

        /* renamed from: new, reason: not valid java name */
        public static Uri m3730new(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Cfor.m3735new(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public static Drawable m3731try(Icon icon, Context context) {
            Drawable loadDrawable;
            loadDrawable = icon.loadDrawable(context);
            return loadDrawable;
        }
    }

    /* renamed from: androidx.core.graphics.drawable.IconCompat$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static int m3732do(Object obj) {
            int resId;
            resId = ((Icon) obj).getResId();
            return resId;
        }

        /* renamed from: for, reason: not valid java name */
        public static int m3733for(Object obj) {
            int type;
            type = ((Icon) obj).getType();
            return type;
        }

        /* renamed from: if, reason: not valid java name */
        public static String m3734if(Object obj) {
            String resPackage;
            resPackage = ((Icon) obj).getResPackage();
            return resPackage;
        }

        /* renamed from: new, reason: not valid java name */
        public static Uri m3735new(Object obj) {
            Uri uri;
            uri = ((Icon) obj).getUri();
            return uri;
        }
    }

    /* renamed from: androidx.core.graphics.drawable.IconCompat$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Drawable m3736do(Drawable drawable, Drawable drawable2) {
            return new AdaptiveIconDrawable(drawable, drawable2);
        }

        /* renamed from: if, reason: not valid java name */
        public static Icon m3737if(Bitmap bitmap) {
            Icon createWithAdaptiveBitmap;
            createWithAdaptiveBitmap = Icon.createWithAdaptiveBitmap(bitmap);
            return createWithAdaptiveBitmap;
        }
    }

    /* renamed from: androidx.core.graphics.drawable.IconCompat$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static Icon m3738do(Uri uri) {
            Icon createWithAdaptiveBitmapContentUri;
            createWithAdaptiveBitmapContentUri = Icon.createWithAdaptiveBitmapContentUri(uri);
            return createWithAdaptiveBitmapContentUri;
        }
    }

    public IconCompat() {
        this.f6521do = -1;
        this.f6527do = null;
        this.f6524do = null;
        this.f6529if = 0;
        this.f6528for = 0;
        this.f6522do = null;
        this.f6523do = f6520if;
        this.f6526do = null;
    }

    /* renamed from: do, reason: not valid java name */
    public static Bitmap m3719do(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2.0f, (-(bitmap.getHeight() - min)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: if, reason: not valid java name */
    public static IconCompat m3720if(Resources resources, String str, int i) {
        str.getClass();
        if (i == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f6529if = i;
        if (resources != null) {
            try {
                iconCompat.f6525do = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f6525do = str;
        }
        iconCompat.f6530if = str;
        return iconCompat;
    }

    /* renamed from: case, reason: not valid java name */
    public final Uri m3721case() {
        int i = this.f6521do;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return Cdo.m3730new(this.f6525do);
        }
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f6525do);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    /* renamed from: else, reason: not valid java name */
    public final Icon m3722else(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Cdo.m3726case(this, context);
        }
        throw new UnsupportedOperationException("This method is only supported on API level 23+");
    }

    /* renamed from: for, reason: not valid java name */
    public final Bitmap m3723for() {
        int i = this.f6521do;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f6525do;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i == 1) {
            return (Bitmap) this.f6525do;
        }
        if (i == 5) {
            return m3719do((Bitmap) this.f6525do, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    /* renamed from: new, reason: not valid java name */
    public final int m3724new() {
        int i = this.f6521do;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return Cdo.m3727do(this.f6525do);
        }
        if (i == 2) {
            return this.f6529if;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public final String toString() {
        String str;
        if (this.f6521do == -1) {
            return String.valueOf(this.f6525do);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f6521do) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f6521do) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f6525do).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f6525do).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f6530if);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m3724new())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f6529if);
                if (this.f6528for != 0) {
                    sb.append(" off=");
                    sb.append(this.f6528for);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f6525do);
                break;
        }
        if (this.f6522do != null) {
            sb.append(" tint=");
            sb.append(this.f6522do);
        }
        if (this.f6523do != f6520if) {
            sb.append(" mode=");
            sb.append(this.f6523do);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m3725try() {
        int i = this.f6521do;
        return (i != -1 || Build.VERSION.SDK_INT < 23) ? i : Cdo.m3728for(this.f6525do);
    }

    public IconCompat(int i) {
        this.f6527do = null;
        this.f6524do = null;
        this.f6529if = 0;
        this.f6528for = 0;
        this.f6522do = null;
        this.f6523do = f6520if;
        this.f6526do = null;
        this.f6521do = i;
    }
}
