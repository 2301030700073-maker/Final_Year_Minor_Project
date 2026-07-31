package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import androidx.core.app.Person;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ActivityCompat extends FileUtil {
    public static void recreate(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Task$$ExternalSyntheticLambda0(9, activity));
        }
    }

    public static View requireViewById(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Person.Api28Impl.requireViewById(activity, i);
        }
        View findViewById = activity.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("ID does not reference a View inside this Activity");
        return null;
    }
}
