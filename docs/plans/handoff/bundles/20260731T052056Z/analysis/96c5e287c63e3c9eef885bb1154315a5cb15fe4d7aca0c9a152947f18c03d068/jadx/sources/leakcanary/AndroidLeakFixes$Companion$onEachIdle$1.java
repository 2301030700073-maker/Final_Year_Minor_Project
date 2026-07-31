package leakcanary;

import android.os.Looper;
import android.os.MessageQueue;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$Companion$onEachIdle$1 implements Runnable {
    public final /* synthetic */ KClassImpl$Data$supertypes$2$1$1 $onIdle;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AndroidLeakFixes$Companion$onEachIdle$1(KClassImpl$Data$supertypes$2$1$1 kClassImpl$Data$supertypes$2$1$1, int i) {
        this.$r8$classId = i;
        this.$onIdle = kClassImpl$Data$supertypes$2$1$1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                Looper.myQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: leakcanary.AndroidLeakFixes$Companion$onEachIdle$1.1
                    @Override // android.os.MessageQueue.IdleHandler
                    public final boolean queueIdle() {
                        AndroidLeakFixes$Companion$onEachIdle$1.this.$onIdle.invoke();
                        return true;
                    }
                });
                break;
            default:
                ((Ref$BooleanRef) this.$onIdle.this$0).element = true;
                break;
        }
    }
}
