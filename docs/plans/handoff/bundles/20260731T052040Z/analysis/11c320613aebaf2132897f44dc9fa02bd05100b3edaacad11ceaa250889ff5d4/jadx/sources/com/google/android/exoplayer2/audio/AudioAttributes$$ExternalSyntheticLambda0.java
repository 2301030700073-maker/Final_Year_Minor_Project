package com.google.android.exoplayer2.audio;

import android.database.SQLException;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.amr.AmrExtractor;
import com.google.android.exoplayer2.extractor.flac.FlacExtractor;
import com.google.android.exoplayer2.extractor.flv.FlvExtractor;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer2.extractor.ogg.OggExtractor;
import com.google.android.exoplayer2.extractor.ts.Ac3Extractor;
import com.google.android.exoplayer2.extractor.ts.Ac4Extractor;
import com.google.android.exoplayer2.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.extractor.wav.WavExtractor;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor;
import com.google.android.exoplayer2.source.hls.HlsExtractorFactory;
import com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor;
import com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.lang.reflect.Constructor;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AudioAttributes$$ExternalSyntheticLambda0 implements ListenerSet.IterationFinishedEvent, Bundleable.Creator, DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, ExtractorsFactory, Id3Decoder.FramePredicate, ChunkExtractor.Factory, HlsExtractorFactory {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AudioAttributes$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m(SQLException sQLException) {
        throw new DatabaseIOException(sQLException);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, ExtractorInput extractorInput, PlayerId playerId) {
        HlsMediaChunkExtractor lambda$static$0;
        lambda$static$0 = MediaParserHlsMediaChunkExtractor.lambda$static$0(uri, format, list, timestampAdjuster, map, extractorInput, playerId);
        return lambda$static$0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        Extractor[] lambda$static$0;
        Extractor[] lambda$static$02;
        Extractor[] lambda$static$03;
        Extractor[] lambda$static$04;
        Extractor[] lambda$static$05;
        Extractor[] lambda$static$06;
        Extractor[] lambda$static$07;
        Extractor[] lambda$static$08;
        Extractor[] lambda$static$09;
        Extractor[] lambda$static$010;
        Extractor[] lambda$static$011;
        Extractor[] lambda$static$012;
        Extractor[] lambda$static$013;
        Extractor[] lambda$static$014;
        switch (this.$r8$classId) {
            case 7:
                return new Extractor[0];
            case 8:
                lambda$static$0 = AmrExtractor.lambda$static$0();
                return lambda$static$0;
            case 9:
                lambda$static$02 = FlacExtractor.lambda$static$0();
                return lambda$static$02;
            case 10:
                lambda$static$03 = FlvExtractor.lambda$static$0();
                return lambda$static$03;
            case 11:
                lambda$static$04 = MatroskaExtractor.lambda$static$0();
                return lambda$static$04;
            case 12:
                lambda$static$05 = Mp3Extractor.lambda$static$0();
                return lambda$static$05;
            case 13:
            default:
                lambda$static$014 = WavExtractor.lambda$static$0();
                return lambda$static$014;
            case 14:
                lambda$static$06 = FragmentedMp4Extractor.lambda$static$0();
                return lambda$static$06;
            case 15:
                lambda$static$07 = Mp4Extractor.lambda$static$0();
                return lambda$static$07;
            case 16:
                lambda$static$08 = OggExtractor.lambda$static$0();
                return lambda$static$08;
            case 17:
                lambda$static$09 = Ac3Extractor.lambda$static$0();
                return lambda$static$09;
            case 18:
                lambda$static$010 = Ac4Extractor.lambda$static$0();
                return lambda$static$010;
            case 19:
                lambda$static$011 = AdtsExtractor.lambda$static$0();
                return lambda$static$011;
            case 20:
                lambda$static$012 = PsExtractor.lambda$static$0();
                return lambda$static$012;
            case 21:
                lambda$static$013 = TsExtractor.lambda$static$0();
                return lambda$static$013;
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory
    public ChunkExtractor createProgressiveMediaExtractor(int i, Format format, boolean z, List list, TrackOutput trackOutput, PlayerId playerId) {
        ChunkExtractor lambda$static$0;
        ChunkExtractor lambda$static$02;
        switch (this.$r8$classId) {
            case 26:
                lambda$static$0 = BundledChunkExtractor.lambda$static$0(i, format, z, list, trackOutput, playerId);
                return lambda$static$0;
            default:
                lambda$static$02 = MediaParserChunkExtractor.lambda$static$0(i, format, z, list, trackOutput, playerId);
                return lambda$static$02;
        }
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
    public boolean evaluate(int i, int i2, int i3, int i4, int i5) {
        boolean lambda$static$1;
        boolean lambda$static$0;
        switch (this.$r8$classId) {
            case 13:
                lambda$static$1 = Mp3Extractor.lambda$static$1(i, i2, i3, i4, i5);
                return lambda$static$1;
            default:
                lambda$static$0 = Id3Decoder.lambda$static$0(i, i2, i3, i4, i5);
                return lambda$static$0;
        }
    }

    @Override // com.google.android.exoplayer2.Bundleable.Creator
    public Bundleable fromBundle(Bundle bundle) {
        AudioAttributes lambda$static$0;
        AdPlaybackState fromBundle;
        AdPlaybackState.AdGroup fromBundle2;
        switch (this.$r8$classId) {
            case 0:
                lambda$static$0 = AudioAttributes.lambda$static$0(bundle);
                return lambda$static$0;
            case 24:
                fromBundle = AdPlaybackState.fromBundle(bundle);
                return fromBundle;
            default:
                fromBundle2 = AdPlaybackState.AdGroup.fromBundle(bundle);
                return fromBundle2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor getConstructor() {
        Constructor flacExtractorConstructor;
        Constructor midiExtractorConstructor;
        switch (this.$r8$classId) {
            case 5:
                flacExtractorConstructor = DefaultExtractorsFactory.getFlacExtractorConstructor();
                return flacExtractorConstructor;
            default:
                midiExtractorConstructor = DefaultExtractorsFactory.getMidiExtractorConstructor();
                return midiExtractorConstructor;
        }
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        DefaultAnalyticsCollector.lambda$new$0((AnalyticsListener) obj, flagSet);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public Extractor[] createExtractors(Uri uri, Map map) {
        Extractor[] lambda$static$0;
        Extractor[] lambda$static$02;
        Extractor[] lambda$static$03;
        Extractor[] lambda$static$04;
        Extractor[] lambda$static$05;
        Extractor[] lambda$static$06;
        Extractor[] lambda$static$07;
        Extractor[] lambda$static$08;
        Extractor[] lambda$static$09;
        Extractor[] lambda$static$010;
        Extractor[] lambda$static$011;
        Extractor[] lambda$static$012;
        Extractor[] lambda$static$013;
        Extractor[] lambda$static$014;
        switch (this.$r8$classId) {
            case 7:
                return createExtractors();
            case 8:
                lambda$static$0 = AmrExtractor.lambda$static$0();
                return lambda$static$0;
            case 9:
                lambda$static$02 = FlacExtractor.lambda$static$0();
                return lambda$static$02;
            case 10:
                lambda$static$03 = FlvExtractor.lambda$static$0();
                return lambda$static$03;
            case 11:
                lambda$static$04 = MatroskaExtractor.lambda$static$0();
                return lambda$static$04;
            case 12:
                lambda$static$05 = Mp3Extractor.lambda$static$0();
                return lambda$static$05;
            case 13:
            default:
                lambda$static$014 = WavExtractor.lambda$static$0();
                return lambda$static$014;
            case 14:
                lambda$static$06 = FragmentedMp4Extractor.lambda$static$0();
                return lambda$static$06;
            case 15:
                lambda$static$07 = Mp4Extractor.lambda$static$0();
                return lambda$static$07;
            case 16:
                lambda$static$08 = OggExtractor.lambda$static$0();
                return lambda$static$08;
            case 17:
                lambda$static$09 = Ac3Extractor.lambda$static$0();
                return lambda$static$09;
            case 18:
                lambda$static$010 = Ac4Extractor.lambda$static$0();
                return lambda$static$010;
            case 19:
                lambda$static$011 = AdtsExtractor.lambda$static$0();
                return lambda$static$011;
            case 20:
                lambda$static$012 = PsExtractor.lambda$static$0();
                return lambda$static$012;
            case 21:
                lambda$static$013 = TsExtractor.lambda$static$0();
                return lambda$static$013;
        }
    }
}
