package org.schabi.newpipe.player;

import android.util.Pair;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.source.TrackGroup;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.database.playlist.PlaylistDuplicatesEntry;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.settings.tabs.Tab;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda48 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Player$$ExternalSyntheticLambda48(int i) {
        this.$r8$classId = i;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                MediaItemTag.Quality quality = (MediaItemTag.Quality) obj;
                int i = quality.selectedVideoStreamIndex;
                if (i >= 0 && i < quality.sortedVideoStreams.size()) {
                    break;
                }
                break;
            case 1:
                if (((String[]) obj).length > 1) {
                    break;
                }
                break;
            case 2:
                String str = (String) obj;
                if (!Utils.isNullOrEmpty(str) && !str.equals("null")) {
                    break;
                }
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                if (((PlaylistDuplicatesEntry) obj).timesStreamIsContained > 0) {
                    break;
                }
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                break;
            case 12:
                break;
            case 13:
                if (3 == ((Tracks.Group) obj).getType()) {
                    break;
                }
                break;
            case 14:
                if (((TrackGroup) obj).length > 0) {
                    break;
                }
                break;
            case 15:
                break;
            case 16:
                if (((Tracks.Group) obj).getMediaTrackGroup().length >= 1) {
                    break;
                }
                break;
            case 17:
                break;
            case 18:
                Tab tab = (Tab) obj;
                if (tab instanceof Tab.KioskTab) {
                    Tab.KioskTab kioskTab = (Tab.KioskTab) tab;
                    if (kioskTab.kioskServiceId == ServiceList.SoundCloud.serviceId && kioskTab.kioskId.equals("Top 50")) {
                        z = true;
                    }
                }
                break;
            case 19:
                Tab tab2 = (Tab) obj;
                if (tab2 instanceof Tab.KioskTab) {
                    Tab.KioskTab kioskTab2 = (Tab.KioskTab) tab2;
                    if (kioskTab2.kioskServiceId == ServiceList.YouTube.serviceId && kioskTab2.kioskId.equals("Trending")) {
                        z = true;
                    }
                }
                break;
            case 20:
                break;
            case 21:
                break;
            case 22:
                break;
            case 23:
                String str2 = (String) ((Pair) obj).second;
                int length = str2.length();
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        int codePointAt = str2.codePointAt(i2);
                        if (Character.isWhitespace(codePointAt)) {
                            i2 += Character.charCount(codePointAt);
                        }
                    } else {
                        z = true;
                    }
                }
                break;
            case 24:
                if (((Stream) obj).getDeliveryMethod() == DeliveryMethod.PROGRESSIVE_HTTP) {
                    break;
                }
                break;
            case 25:
                break;
            case 26:
                Stream stream = (Stream) obj;
                if (stream.isUrl() && stream.getDeliveryMethod() != DeliveryMethod.TORRENT) {
                    break;
                }
                break;
            case 27:
                break;
            case 28:
                AudioStream audioStream = (AudioStream) obj;
                if (audioStream.getFormat() == MediaFormat.WEBMA || audioStream.getFormat() == MediaFormat.WEBMA_OPUS) {
                    break;
                }
                break;
            default:
                if (((AudioStream) obj).getFormat() == MediaFormat.M4A) {
                    break;
                }
                break;
        }
        return true;
    }
}
