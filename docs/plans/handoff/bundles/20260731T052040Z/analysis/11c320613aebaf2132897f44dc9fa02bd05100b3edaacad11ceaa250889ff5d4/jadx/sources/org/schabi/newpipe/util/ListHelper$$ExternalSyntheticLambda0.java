package org.schabi.newpipe.util;

import android.content.Context;
import android.util.Pair;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.source.TrackGroup;
import com.grack.nanojson.JsonObject;
import j$.nio.file.Path;
import j$.util.Collection;
import j$.util.function.Function$CC;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.settings.SettingsResourceRegistry;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.settings.tabs.Tab;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Tab.Type typeFrom;
        switch (this.$r8$classId) {
            case 0:
                return ((AudioStream) obj).getAudioTrackType();
            case 1:
                return new PlayQueueItem((StreamInfoItem) obj);
            case 2:
                MediaItemTag.Quality quality = (MediaItemTag.Quality) obj;
                ArrayList arrayList = quality.sortedVideoStreams;
                int i = quality.selectedVideoStreamIndex;
                if (i < 0 || i >= arrayList.size()) {
                    return null;
                }
                return (VideoStream) arrayList.get(i);
            case 3:
                return ((AppCompatActivity) obj).getWindow();
            case 4:
                return ((StreamInfo) obj).getStreamSegments();
            case 5:
                return ((ViewGroup) ((ViewParent) obj)).getContext();
            case 6:
                return Boolean.valueOf(((List) obj).isEmpty());
            case 7:
                return (AppCompatActivity) AppCompatActivity.class.cast((Context) obj);
            case 8:
                return ((AppCompatActivity) obj).getSupportFragmentManager();
            case 9:
                return ((Tracks.Group) obj).getMediaTrackGroup();
            case 10:
                VideoStream videoStream = (VideoStream) obj;
                return MediaFormat.getNameById(videoStream.getFormatId()) + " " + videoStream.resolution;
            case 11:
                return ((MediaItemTag.Quality) obj).sortedVideoStreams;
            case 12:
                return ((TrackGroup) obj).getFormat(0).language;
            case 13:
                return ((Tracks.Group) obj).getMediaTrackGroup().getFormat(0);
            case 14:
                return Integer.valueOf(((SettingsResourceRegistry.SettingRegistryEntry) obj).preferencesResId);
            case 15:
                return ((PreferenceFuzzySearchFunction.FuzzySearchGeneralDTO) obj).item;
            case 16:
                return ((PreferenceFuzzySearchFunction.FuzzySearchSpecificDTO) obj).item;
            case 17:
                return ((PreferenceSearchItem) obj).title;
            case 18:
                return ((PreferenceSearchItem) obj).summary;
            case 19:
                return ((PreferenceSearchItem) obj).entries;
            case 20:
                JsonObject jsonObject = (JsonObject) obj;
                int i2 = jsonObject.getInt(-1, "tab_id");
                if (i2 == -1 || (typeFrom = Tab.typeFrom(i2)) == null) {
                    return null;
                }
                switch (typeFrom.ordinal()) {
                    case 6:
                        return new Tab.KioskTab(jsonObject);
                    case 7:
                        return new Tab.ChannelTab(jsonObject);
                    case 8:
                        return new Tab.PlaylistTab(jsonObject);
                    case 9:
                        return new Tab.FeedGroupTab(jsonObject);
                    default:
                        return typeFrom.getTab();
                }
            case 21:
                Pair pair = (Pair) obj;
                byte[] bytes = (((String) pair.first).toUpperCase() + "=" + ((String) pair.second).trim()).getBytes();
                ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 4);
                allocate.order(ByteOrder.LITTLE_ENDIAN);
                allocate.putInt(bytes.length);
                allocate.put(bytes);
                return allocate.array();
            case 22:
                return ((Path) obj).getFileName().toString().toLowerCase();
            case 23:
                return Collection.EL.stream((List) obj);
            case 24:
                return ((AudioStream) obj).getAudioLocale();
            case 25:
                return Boolean.valueOf(((Locale) obj).getISO3Language().equals(Locale.ENGLISH.getISO3Language()));
            case 26:
                return ((AudioStream) obj).getFormat();
            case 27:
                SerializedCache.INSTANCE.getClass();
                return SerializedCache.put((PlayQueue) obj);
            case 28:
                return (StreamingService.ServiceInfo) ServiceHelper$getNameOfServiceById$2.INSTANCE.invoke(obj);
            default:
                return (String) ServiceHelper$getNameOfServiceById$3.INSTANCE.invoke(obj);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
