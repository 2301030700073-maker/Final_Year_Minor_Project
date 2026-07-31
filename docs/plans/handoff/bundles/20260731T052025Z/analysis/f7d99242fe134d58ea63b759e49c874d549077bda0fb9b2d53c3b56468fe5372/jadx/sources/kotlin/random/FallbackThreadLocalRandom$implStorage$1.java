package kotlin.random;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.room.util.DBUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FallbackThreadLocalRandom$implStorage$1 extends ThreadLocal {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FallbackThreadLocalRandom$implStorage$1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.$r8$classId) {
            case 0:
                return new java.util.Random();
            case 1:
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    return Util.mainThreadExecutor();
                }
                if (Looper.myLooper() != null) {
                    return new HandlerScheduledExecutorService(new Handler(Looper.myLooper()));
                }
                return null;
            case 2:
                Choreographer choreographer = Choreographer.getInstance();
                Looper myLooper = Looper.myLooper();
                if (myLooper != null) {
                    AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, DBUtil.createAsync(myLooper));
                    return androidUiDispatcher.plus(androidUiDispatcher.frameClock);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no Looper on this thread");
                return null;
            case 3:
                return new SimpleDateFormat("dd-MMM-yyyy", Locale.US);
            default:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                simpleDateFormat.setLenient(false);
                simpleDateFormat.setTimeZone(_UtilJvmKt.UTC);
                return simpleDateFormat;
        }
    }
}
