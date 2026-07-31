package com.google.android.exoplayer2.audio;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0 implements Executor {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Handler f$0;

    public /* synthetic */ DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0(Handler handler, int i) {
        this.$r8$classId = i;
        this.f$0 = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        this.f$0.post(runnable);
    }
}
