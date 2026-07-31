package com.google.android.exoplayer2.source;

import android.media.MediaParser;
import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.source.ProgressiveMediaExtractor;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.util.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TrackGroup$$ExternalSyntheticLambda0 implements Consumer, ProgressiveMediaExtractor.Factory, Bundleable.Creator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TrackGroup$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // com.google.android.exoplayer2.util.Consumer
    public void accept(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                SampleQueue.lambda$new$0((SampleQueue.SharedSampleMetadata) obj);
                break;
            default:
                SpannedData.lambda$new$0(obj);
                break;
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        return new MediaParserExtractorAdapter(playerId);
    }

    @Override // com.google.android.exoplayer2.Bundleable.Creator
    public Bundleable fromBundle(Bundle bundle) {
        TrackGroup lambda$static$0;
        TrackGroupArray lambda$static$02;
        switch (this.$r8$classId) {
            case 0:
                lambda$static$0 = TrackGroup.lambda$static$0(bundle);
                return lambda$static$0;
            default:
                lambda$static$02 = TrackGroupArray.lambda$static$0(bundle);
                return lambda$static$02;
        }
    }

    public static /* bridge */ /* synthetic */ MediaParser.SeekPoint m(Object obj) {
        return (MediaParser.SeekPoint) obj;
    }
}
