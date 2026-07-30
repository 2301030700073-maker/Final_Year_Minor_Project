package defpackage;

import com.facebook.appevents.internal.FileDownloadTask;
import com.facebook.appevents.ml.ModelManager;
import java.io.File;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final /* synthetic */ class SK implements FileDownloadTask.Callback, InterfaceC0598Xa, NF {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3505do;

    public /* synthetic */ SK(Object obj) {
        this.f3505do = obj;
    }

    @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
    public final void onComplete(File file) {
        ModelManager.TaskHandler.Companion.m5386execute$lambda1((List) this.f3505do, file);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        CountDownLatch countDownLatch = (CountDownLatch) this.f3505do;
        ExecutorService executorService = C0804cK.f8521do;
        countDownLatch.countDown();
        return null;
    }

    @Override // defpackage.NF
    public final FG then(Object obj) {
        C0101Ai c0101Ai = (C0101Ai) this.f3505do;
        FG<E9> m354if = c0101Ai.f124do.m354if();
        FG<E9> m354if2 = c0101Ai.f133if.m354if();
        return LG.m1315else(m354if, m354if2).mo589break(c0101Ai.f130do, new C0409Oj(c0101Ai, m354if, m354if2, 2));
    }
}
