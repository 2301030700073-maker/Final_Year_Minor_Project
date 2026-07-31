package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0 implements MediaCodec.OnFrameRenderedListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaCodecAdapter f$0;
    public final /* synthetic */ MediaCodecAdapter.OnFrameRenderedListener f$1;

    public /* synthetic */ SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0(MediaCodecAdapter mediaCodecAdapter, MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, int i) {
        this.$r8$classId = i;
        this.f$0 = mediaCodecAdapter;
        this.f$1 = onFrameRenderedListener;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        int i = this.$r8$classId;
        MediaCodecAdapter mediaCodecAdapter = this.f$0;
        switch (i) {
            case 0:
                ((SynchronousMediaCodecAdapter) mediaCodecAdapter).lambda$setOnFrameRenderedListener$0(this.f$1, mediaCodec, j, j2);
                break;
            default:
                ((AsynchronousMediaCodecAdapter) mediaCodecAdapter).lambda$setOnFrameRenderedListener$0(this.f$1, mediaCodec, j, j2);
                break;
        }
    }
}
