package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.video.VideoRendererEventListener;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ long f$3;

    public /* synthetic */ AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3(Object obj, String str, long j, long j2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = str;
        this.f$2 = j;
        this.f$3 = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) obj).lambda$decoderInitialized$1(this.f$1, this.f$2, this.f$3);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) obj).lambda$decoderInitialized$1(this.f$1, this.f$2, this.f$3);
                break;
        }
    }
}
