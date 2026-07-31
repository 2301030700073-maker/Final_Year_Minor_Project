package androidx.emoji2.text;

import com.google.android.exoplayer2.util.Util;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ConcurrencyHelpers$$ExternalSyntheticLambda0 implements ThreadFactory {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ ConcurrencyHelpers$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread lambda$newSingleThreadScheduledExecutor$4;
        Thread lambda$newSingleThreadExecutor$3;
        int i = this.$r8$classId;
        String str = this.f$0;
        switch (i) {
            case 0:
                Thread thread = new Thread(runnable, str);
                thread.setPriority(10);
                return thread;
            case 1:
                lambda$newSingleThreadScheduledExecutor$4 = Util.lambda$newSingleThreadScheduledExecutor$4(str, runnable);
                return lambda$newSingleThreadScheduledExecutor$4;
            default:
                lambda$newSingleThreadExecutor$3 = Util.lambda$newSingleThreadExecutor$3(str, runnable);
                return lambda$newSingleThreadExecutor$3;
        }
    }
}
