package kotlin.random;

import android.os.Looper;
import android.view.Choreographer;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.work.OperationKt;
import java.text.SimpleDateFormat;
import java.util.Locale;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                Choreographer choreographer = Choreographer.getInstance();
                Looper myLooper = Looper.myLooper();
                if (myLooper != null) {
                    AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, OperationKt.createAsync(myLooper));
                    return AppKt.plus(androidUiDispatcher, androidUiDispatcher.frameClock);
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("no Looper on this thread");
                return null;
            default:
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                simpleDateFormat.setLenient(false);
                simpleDateFormat.setTimeZone(_UtilJvmKt.UTC);
                return simpleDateFormat;
        }
    }
}
