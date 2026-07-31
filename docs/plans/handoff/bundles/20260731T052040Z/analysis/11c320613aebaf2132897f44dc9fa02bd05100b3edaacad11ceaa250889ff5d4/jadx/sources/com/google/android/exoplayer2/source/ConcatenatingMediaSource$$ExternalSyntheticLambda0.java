package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Message;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ConcatenatingMediaSource$$ExternalSyntheticLambda0 implements Handler.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CompositeMediaSource f$0;

    public /* synthetic */ ConcatenatingMediaSource$$ExternalSyntheticLambda0(CompositeMediaSource compositeMediaSource, int i) {
        this.$r8$classId = i;
        this.f$0 = compositeMediaSource;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMessage;
        boolean handleMessage2;
        int i = this.$r8$classId;
        CompositeMediaSource compositeMediaSource = this.f$0;
        switch (i) {
            case 0:
                handleMessage = ((ConcatenatingMediaSource) compositeMediaSource).handleMessage(message);
                return handleMessage;
            default:
                handleMessage2 = ((ConcatenatingMediaSource2) compositeMediaSource).handleMessage(message);
                return handleMessage2;
        }
    }
}
