package leakcanary.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AppCompatActivity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HandlersKt$mainHandler$2 extends Lambda implements Function0 {
    public static final HandlersKt$mainHandler$2 INSTANCE;
    public static final HandlersKt$mainHandler$2 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 0;
        INSTANCE$1 = new HandlersKt$mainHandler$2(i, 1);
        INSTANCE = new HandlersKt$mainHandler$2(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HandlersKt$mainHandler$2(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                return new Handler(Looper.getMainLooper());
            default:
                try {
                    int i = AppCompatActivity.$r8$clinit;
                    z = true;
                } catch (Throwable unused) {
                    z = false;
                }
                return Boolean.valueOf(z);
        }
    }
}
