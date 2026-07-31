package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Format$$ExternalSyntheticLambda0 implements ListenerSet.Event, Bundleable.Creator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Format$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // com.google.android.exoplayer2.Bundleable.Creator
    public Bundleable fromBundle(Bundle bundle) {
        Format fromBundle;
        DeviceInfo lambda$static$0;
        HeartRating fromBundle2;
        MediaItem fromBundle3;
        MediaItem.AdsConfiguration fromBundle4;
        MediaItem.ClippingProperties lambda$static$02;
        MediaItem.DrmConfiguration fromBundle5;
        MediaItem.LiveConfiguration lambda$static$03;
        MediaItem.LocalConfiguration fromBundle6;
        MediaItem.RequestMetadata lambda$static$04;
        MediaItem.SubtitleConfiguration fromBundle7;
        MediaMetadata fromBundle8;
        PercentageRating fromBundle9;
        PlaybackParameters lambda$static$05;
        Player.Commands fromBundle10;
        Player.PositionInfo fromBundle11;
        Rating fromBundle12;
        StarRating fromBundle13;
        ThumbRating fromBundle14;
        Timeline fromBundle15;
        Timeline.Period fromBundle16;
        Timeline.Window fromBundle17;
        Tracks lambda$static$06;
        Tracks.Group lambda$static$07;
        switch (this.$r8$classId) {
            case 0:
                fromBundle = Format.fromBundle(bundle);
                return fromBundle;
            case 1:
            case 4:
            case 5:
            default:
                lambda$static$07 = Tracks.Group.lambda$static$0(bundle);
                return lambda$static$07;
            case 2:
                lambda$static$0 = DeviceInfo.lambda$static$0(bundle);
                return lambda$static$0;
            case 3:
                return ExoPlaybackException.m481$r8$lambda$1XKy3W7SelM_FKalWARGECf72M(bundle);
            case 6:
                fromBundle2 = HeartRating.fromBundle(bundle);
                return fromBundle2;
            case 7:
                fromBundle3 = MediaItem.fromBundle(bundle);
                return fromBundle3;
            case 8:
                fromBundle4 = MediaItem.AdsConfiguration.fromBundle(bundle);
                return fromBundle4;
            case 9:
                lambda$static$02 = MediaItem.ClippingConfiguration.lambda$static$0(bundle);
                return lambda$static$02;
            case 10:
                fromBundle5 = MediaItem.DrmConfiguration.fromBundle(bundle);
                return fromBundle5;
            case 11:
                lambda$static$03 = MediaItem.LiveConfiguration.lambda$static$0(bundle);
                return lambda$static$03;
            case 12:
                fromBundle6 = MediaItem.LocalConfiguration.fromBundle(bundle);
                return fromBundle6;
            case 13:
                return StreamKey.fromBundle(bundle);
            case 14:
                lambda$static$04 = MediaItem.RequestMetadata.lambda$static$0(bundle);
                return lambda$static$04;
            case 15:
                fromBundle7 = MediaItem.SubtitleConfiguration.fromBundle(bundle);
                return fromBundle7;
            case 16:
                fromBundle8 = MediaMetadata.fromBundle(bundle);
                return fromBundle8;
            case 17:
                fromBundle9 = PercentageRating.fromBundle(bundle);
                return fromBundle9;
            case 18:
                return new PlaybackException(bundle);
            case 19:
                lambda$static$05 = PlaybackParameters.lambda$static$0(bundle);
                return lambda$static$05;
            case 20:
                fromBundle10 = Player.Commands.fromBundle(bundle);
                return fromBundle10;
            case 21:
                fromBundle11 = Player.PositionInfo.fromBundle(bundle);
                return fromBundle11;
            case 22:
                fromBundle12 = Rating.fromBundle(bundle);
                return fromBundle12;
            case 23:
                fromBundle13 = StarRating.fromBundle(bundle);
                return fromBundle13;
            case 24:
                fromBundle14 = ThumbRating.fromBundle(bundle);
                return fromBundle14;
            case 25:
                fromBundle15 = Timeline.fromBundle(bundle);
                return fromBundle15;
            case 26:
                fromBundle16 = Timeline.Period.fromBundle(bundle);
                return fromBundle16;
            case 27:
                fromBundle17 = Timeline.Window.fromBundle(bundle);
                return fromBundle17;
            case 28:
                lambda$static$06 = Tracks.lambda$static$0(bundle);
                return lambda$static$06;
        }
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        Player.Listener listener = (Player.Listener) obj;
        switch (this.$r8$classId) {
            case 1:
                ExoPlayerImpl.lambda$release$5(listener);
                break;
            default:
                listener.onRenderedFirstFrame();
                break;
        }
    }
}
