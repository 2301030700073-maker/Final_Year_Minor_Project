package coil3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import androidx.core.os.BundleKt;
import coil3.Extras;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.ViewTargetDisposable;
import coil3.request.ViewTargetRequestManager;
import coil3.target.ImageViewTarget;
import coil3.target.Target;
import coil3.util.Utils_androidKt;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.DeferredCoroutine;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.ConnectionPool;
import okio.Okio;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class UriKt {
    public static final Extras.Key serviceLoaderEnabledKey = new Extras.Key(Boolean.TRUE);

    public static Uri Uri$default(String str) {
        String str2 = Path.DIRECTORY_SEPARATOR;
        StringBuilder sb = new StringBuilder();
        sb.append("file");
        sb.append(':');
        if (str != null) {
            sb.append(str);
        }
        return new Uri(sb.toString(), str2, "file", null, str);
    }

    public static final Drawable asDrawable(Image image, Resources resources) {
        return image instanceof DrawableImage ? ((DrawableImage) image).drawable : image instanceof BitmapImage ? new BitmapDrawable(resources, ((BitmapImage) image).bitmap) : new ImageDrawable(image, 0);
    }

    public static final Image asImage(Drawable drawable) {
        return drawable instanceof BitmapDrawable ? new BitmapImage(((BitmapDrawable) drawable).getBitmap()) : new DrawableImage(drawable);
    }

    public static final Disposable getDisposable(ImageRequest imageRequest, DeferredCoroutine deferredCoroutine) {
        Target target = imageRequest.target;
        if (!(target instanceof ImageViewTarget)) {
            return new ConnectionPool(deferredCoroutine, 1);
        }
        ViewTargetRequestManager requestManager = Okio.getRequestManager(((ImageViewTarget) target).view);
        synchronized (requestManager) {
            ViewTargetDisposable viewTargetDisposable = requestManager.currentDisposable;
            if (viewTargetDisposable != null) {
                Bitmap.Config[] configArr = Utils_androidKt.VALID_TRANSFORMATION_CONFIGS;
                if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper()) && requestManager.isRestart) {
                    requestManager.isRestart = false;
                    viewTargetDisposable.job = deferredCoroutine;
                    return viewTargetDisposable;
                }
            }
            StandaloneCoroutine standaloneCoroutine = requestManager.pendingClear;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            requestManager.pendingClear = null;
            ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(requestManager.view, deferredCoroutine);
            requestManager.currentDisposable = viewTargetDisposable2;
            return viewTargetDisposable2;
        }
    }

    public static final Object getExtra(ImageRequest imageRequest, Extras.Key key) {
        Object obj = imageRequest.extras.data.get(key);
        if (obj != null) {
            return obj;
        }
        Object obj2 = imageRequest.defaults.extras.data.get(key);
        return obj2 == null ? key.f8default : obj2;
    }

    public static final String getFilePath(Uri uri) {
        List pathSegments = getPathSegments(uri);
        String str = uri.separator;
        if (pathSegments.isEmpty()) {
            return null;
        }
        String str2 = uri.path;
        str2.getClass();
        if (!StringsKt__StringsJVMKt.startsWith(str2, str, false)) {
            str = "";
        }
        return CollectionsKt.joinToString$default(pathSegments, uri.separator, str, null, null, 60);
    }

    public static final List getPathSegments(Uri uri) {
        String str = uri.path;
        if (str == null) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < str.length()) {
            int i2 = i + 1;
            int indexOf$default = StringsKt.indexOf$default('/', i2, 4, (CharSequence) str);
            if (indexOf$default == -1) {
                indexOf$default = str.length();
            }
            String substring = str.substring(i2, indexOf$default);
            if (substring.length() > 0) {
                arrayList.add(substring);
            }
            i = indexOf$default;
        }
        return arrayList;
    }

    public static final String percentDecode(String str, byte[] bArr) {
        int length = str.length();
        int max = Math.max(0, length - 2);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= max) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    BundleKt.checkBoundsIndexes$kotlin_stdlib(0, i2, bArr.length);
                    return new String(bArr, 0, i2, Charsets.UTF_8);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String substring = str.substring(i + 1, i3);
                    CharsKt.checkRadix(16);
                    bArr[i2] = (byte) Integer.parseInt(substring, 16);
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    public static Bitmap toBitmap$default(Image image) {
        int width = image.getWidth();
        int height = image.getHeight();
        boolean z = image instanceof BitmapImage;
        Bitmap.Config config = z ? ((BitmapImage) image).bitmap.getConfig() : null;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        if (z) {
            Bitmap bitmap = ((BitmapImage) image).bitmap;
            if (bitmap.getWidth() == width && bitmap.getHeight() == height && bitmap.getConfig() == config) {
                return bitmap;
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, config);
        image.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    public static Uri toUri$default(String str) {
        String str2;
        String str3;
        String str4 = Path.DIRECTORY_SEPARATOR;
        String replace$default = !Intrinsics.areEqual(str4, "/") ? StringsKt__StringsJVMKt.replace$default(str, str4, "/") : str;
        int i = 0;
        boolean z = true;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (i < replace$default.length()) {
            char charAt = replace$default.charAt(i);
            if (charAt != '#') {
                if (charAt != '/') {
                    if (charAt != ':') {
                        if (charAt == '?' && i4 == -1 && i2 == -1) {
                            i4 = i + 1;
                        }
                    } else if (z && i4 == -1 && i2 == -1) {
                        int i7 = i + 2;
                        if (i7 < str.length() && str.charAt(i + 1) == '/' && str.charAt(i7) == '/') {
                            i5 = i + 3;
                            z = false;
                            i6 = i;
                            i = i7;
                        } else if (replace$default.equals(str)) {
                            i3 = i + 1;
                            i6 = i;
                            i = i3;
                            i5 = i;
                        }
                    }
                } else if (i3 == -1 && i4 == -1 && i2 == -1) {
                    i3 = i5 == -1 ? 0 : i;
                    z = false;
                }
            } else if (i2 == -1) {
                i2 = i + 1;
            }
            i++;
        }
        int i8 = Log.LOG_LEVEL_OFF;
        int min = Math.min(i2 == -1 ? Integer.MAX_VALUE : i2 - 1, replace$default.length());
        int min2 = Math.min(i4 == -1 ? Integer.MAX_VALUE : i4 - 1, min);
        if (i5 != -1) {
            str3 = replace$default.substring(0, i6);
            if (i3 != -1) {
                i8 = i3;
            }
            str2 = replace$default.substring(i5, Math.min(i8, min2));
        } else {
            str2 = null;
            str3 = null;
        }
        String substring = i3 != -1 ? replace$default.substring(i3, min2) : null;
        String substring2 = i4 != -1 ? replace$default.substring(i4, min) : null;
        String substring3 = i2 != -1 ? replace$default.substring(i2, replace$default.length()) : null;
        byte[] bArr = new byte[Math.max(0, Math.max(str3 != null ? str3.length() : 0, Math.max(str2 != null ? str2.length() : 0, Math.max(substring != null ? substring.length() : 0, Math.max(substring2 != null ? substring2.length() : 0, substring3 != null ? substring3.length() : 0)))) - 2)];
        String percentDecode = str3 != null ? percentDecode(str3, bArr) : null;
        String percentDecode2 = str2 != null ? percentDecode(str2, bArr) : null;
        String percentDecode3 = substring != null ? percentDecode(substring, bArr) : null;
        if (substring2 != null) {
            percentDecode(substring2, bArr);
        }
        if (substring3 != null) {
            percentDecode(substring3, bArr);
        }
        return new Uri(replace$default, str4, percentDecode, percentDecode2, percentDecode3);
    }

    public static final Object getExtra(Options options, Extras.Key key) {
        Object obj = options.extras.data.get(key);
        return obj == null ? key.f8default : obj;
    }
}
