package org.schabi.newpipe.util;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import androidx.preference.PreferenceManager;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.function.Predicate;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.AudioTrackType;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListHelper {
    public static final List AUDIO_FORMAT_EFFICIENCY_RANKING;
    public static final List AUDIO_FORMAT_QUALITY_RANKING;
    public static final List AUDIO_TRACK_TYPE_RANKING;
    public static final List AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE;
    public static final Set HIGH_RESOLUTION_LIST;
    public static final List SUPPORTED_ITAG_IDS;
    public static final List VIDEO_FORMAT_QUALITY_RANKING;

    /* renamed from: $r8$lambda$Ym_K-TWtQOXZPWZ4u_KnchNzCxw, reason: not valid java name */
    public static /* synthetic */ List m879$r8$lambda$Ym_KTWtQOXZPWZ4u_KnchNzCxw(Comparator comparator, List list) {
        return (List) Collection.EL.stream(list).sorted(comparator).collect(Collectors.toList());
    }

    static {
        Object[] objArr = {MediaFormat.v3GPP, MediaFormat.WEBM, MediaFormat.MPEG_4};
        ArrayList arrayList = new ArrayList(3);
        int i = 0;
        while (i < 3) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        VIDEO_FORMAT_QUALITY_RANKING = DesugarCollections.unmodifiableList(arrayList);
        MediaFormat mediaFormat = MediaFormat.MP3;
        MediaFormat mediaFormat2 = MediaFormat.WEBMA;
        MediaFormat mediaFormat3 = MediaFormat.M4A;
        Object[] objArr2 = {mediaFormat, mediaFormat2, mediaFormat3};
        ArrayList arrayList2 = new ArrayList(3);
        int i2 = 0;
        while (i2 < 3) {
            Object obj2 = objArr2[i2];
            i2 = RecordTag.m(obj2, arrayList2, obj2, i2, 1);
        }
        AUDIO_FORMAT_QUALITY_RANKING = DesugarCollections.unmodifiableList(arrayList2);
        Object[] objArr3 = {mediaFormat, mediaFormat3, mediaFormat2};
        ArrayList arrayList3 = new ArrayList(3);
        int i3 = 0;
        while (i3 < 3) {
            Object obj3 = objArr3[i3];
            i3 = RecordTag.m(obj3, arrayList3, obj3, i3, 1);
        }
        AUDIO_FORMAT_EFFICIENCY_RANKING = DesugarCollections.unmodifiableList(arrayList3);
        Object[] objArr4 = {"1440p", "2160p"};
        HashSet hashSet = new HashSet(2);
        for (int i4 = 0; i4 < 2; i4++) {
            Object obj4 = objArr4[i4];
            Objects.requireNonNull(obj4);
            if (!hashSet.add(obj4)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(obj4, "duplicate element: "));
                return;
            }
        }
        HIGH_RESOLUTION_LIST = DesugarCollections.unmodifiableSet(hashSet);
        AudioTrackType audioTrackType = AudioTrackType.DESCRIPTIVE;
        AudioTrackType audioTrackType2 = AudioTrackType.SECONDARY;
        AudioTrackType audioTrackType3 = AudioTrackType.DUBBED;
        AudioTrackType audioTrackType4 = AudioTrackType.ORIGINAL;
        Object[] objArr5 = {audioTrackType, audioTrackType2, audioTrackType3, audioTrackType4};
        ArrayList arrayList4 = new ArrayList(4);
        int i5 = 0;
        while (i5 < 4) {
            Object obj5 = objArr5[i5];
            i5 = RecordTag.m(obj5, arrayList4, obj5, i5, 1);
        }
        AUDIO_TRACK_TYPE_RANKING = DesugarCollections.unmodifiableList(arrayList4);
        Object[] objArr6 = {audioTrackType2, audioTrackType3, audioTrackType4, audioTrackType};
        ArrayList arrayList5 = new ArrayList(4);
        int i6 = 0;
        while (i6 < 4) {
            Object obj6 = objArr6[i6];
            i6 = RecordTag.m(obj6, arrayList5, obj6, i6, 1);
        }
        AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE = DesugarCollections.unmodifiableList(arrayList5);
        Integer[] numArr = {17, 36, 18, 34, 35, 59, 78, 22, 37, 38, 43, 44, 45, 46, Integer.valueOf(Token.ARRAYCOMP), 172, Integer.valueOf(Token.VOID), 140, Integer.valueOf(Token.EMPTY), 249, Integer.valueOf(Context.VERSION_ECMASCRIPT), 251, 160, Integer.valueOf(Token.BREAK), 134, 135, 212, Integer.valueOf(Token.WITH), 298, Integer.valueOf(Token.CATCH), 299, 266, 278, 242, 243, 244, 245, 246, 247, 248, 271, 272, 302, 303, 308, 313, 315};
        ArrayList arrayList6 = new ArrayList(47);
        for (int i7 = 0; i7 < 47; i7++) {
            Integer num = numArr[i7];
            Objects.requireNonNull(num);
            arrayList6.add(num);
        }
        SUPPORTED_ITAG_IDS = DesugarCollections.unmodifiableList(arrayList6);
    }

    public static int compareVideoStreamResolution(String str, String str2) {
        try {
            return Integer.parseInt(str.replaceAll("0p\\d+$", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE).replaceAll("[^\\d.]", "")) - Integer.parseInt(str2.replaceAll("0p\\d+$", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE).replaceAll("[^\\d.]", ""));
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public static String computeDefaultResolution(android.content.Context context, int i, int i2) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences != null ? defaultSharedPreferences.getString(context.getString(i), context.getString(i2)) : context.getString(R.string.best_resolution_key);
        String resolutionLimit = getResolutionLimit(context);
        return (resolutionLimit == null || (!string.equals(context.getString(R.string.best_resolution_key)) && compareVideoStreamResolution(resolutionLimit, string) >= 1)) ? string : resolutionLimit;
    }

    public static Comparator getAudioFormatComparator(MediaFormat mediaFormat, boolean z) {
        List list = z ? AUDIO_FORMAT_EFFICIENCY_RANKING : AUDIO_FORMAT_QUALITY_RANKING;
        Comparator comparingInt = Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(0));
        if (z) {
            comparingInt = Comparator.EL.reversed(comparingInt);
        }
        return Comparator.EL.thenComparingInt(Comparator.EL.thenComparing(Comparator.CC.comparing(new ListHelper$$ExternalSyntheticLambda0(26), new ListHelper$$ExternalSyntheticLambda8(mediaFormat, 0)), comparingInt), new ListHelper$$ExternalSyntheticLambda4(list, 1));
    }

    public static int getAudioFormatIndex(PlayerService playerService, List list, String str) {
        if (str != null) {
            for (int i = 0; i < list.size(); i++) {
                AudioStream audioStream = (AudioStream) list.get(i);
                if (audioStream.getAudioTrackId() != null && audioStream.getAudioTrackId().equals(str)) {
                    return i;
                }
            }
        }
        return getDefaultAudioFormat(playerService, list);
    }

    public static java.util.Comparator getAudioTrackComparator(android.content.Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Locale preferredLocale = Localization.getPreferredLocale(context);
        final boolean z = defaultSharedPreferences.getBoolean(context.getString(R.string.prefer_original_audio_key), true);
        int i = 0;
        boolean z2 = defaultSharedPreferences.getBoolean(context.getString(R.string.prefer_descriptive_audio_key), false);
        String iSO3Language = preferredLocale.getISO3Language();
        List list = z2 ? AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE : AUDIO_TRACK_TYPE_RANKING;
        int i2 = 24;
        java.util.Comparator thenComparing = Comparator.EL.thenComparing(Comparator.CC.comparing(new ListHelper$$ExternalSyntheticLambda0(i), new java.util.Comparator() { // from class: org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                AudioTrackType audioTrackType = (AudioTrackType) obj;
                AudioTrackType audioTrackType2 = (AudioTrackType) obj2;
                if (!z) {
                    return 0;
                }
                AudioTrackType audioTrackType3 = AudioTrackType.ORIGINAL;
                return Boolean.compare(audioTrackType == audioTrackType3, audioTrackType2 == audioTrackType3);
            }
        }), new ListHelper$$ExternalSyntheticLambda0(i2), Comparator.CC.nullsFirst(Comparator.CC.comparing(new ListHelper$$ExternalSyntheticLambda3(iSO3Language, i))));
        ListHelper$$ExternalSyntheticLambda0 listHelper$$ExternalSyntheticLambda0 = new ListHelper$$ExternalSyntheticLambda0(i);
        Objects.requireNonNull(list);
        return Comparator.EL.thenComparing(Comparator.EL.thenComparing(thenComparing, listHelper$$ExternalSyntheticLambda0, Comparator.CC.nullsFirst(Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda4(list, i)))), new ListHelper$$ExternalSyntheticLambda0(i2), Comparator.CC.nullsFirst(Comparator.CC.comparing(new ListHelper$$ExternalSyntheticLambda0(25))));
    }

    public static java.util.Comparator getAudioTrackNameComparator() {
        return Comparator.EL.thenComparing(Comparator.CC.comparing(new ListHelper$$ExternalSyntheticLambda0(24), Comparator.CC.nullsLast(Comparator.CC.comparing(new Player$$ExternalSyntheticLambda41(Localization.getAppLocale(), 13)))), new ListHelper$$ExternalSyntheticLambda0(0), Comparator.CC.nullsLast(Comparator.CC.naturalOrder()));
    }

    public static int getDefaultAudioFormat(android.content.Context context, List list) {
        java.util.Comparator thenComparing = Comparator.EL.thenComparing(getAudioTrackComparator(context), getAudioFormatComparator(context));
        if (list == null || list.isEmpty()) {
            return -1;
        }
        return list.indexOf((AudioStream) Collection.EL.stream(list).max(thenComparing).orElse(null));
    }

    public static int getDefaultAudioTrackGroup(android.content.Context context, List list) {
        if (list.isEmpty()) {
            return -1;
        }
        return list.indexOf((List) Collection.EL.stream(list).max(new ListHelper$$ExternalSyntheticLambda10(0, getAudioTrackComparator(context))).orElse(null));
    }

    public static MediaFormat getDefaultFormat(android.content.Context context, int i, int i2) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(context.getString(i), context.getString(i2));
        if (string.equals(context.getString(R.string.video_webm_key))) {
            return MediaFormat.WEBM;
        }
        if (string.equals(context.getString(R.string.video_mp4_key))) {
            return MediaFormat.MPEG_4;
        }
        if (string.equals(context.getString(R.string.video_3gp_key))) {
            return MediaFormat.v3GPP;
        }
        if (string.equals(context.getString(R.string.audio_webm_key))) {
            return MediaFormat.WEBMA;
        }
        if (string.equals(context.getString(R.string.audio_m4a_key))) {
            return MediaFormat.M4A;
        }
        return null;
    }

    public static int getDefaultResolutionWithDefaultFormat(android.content.Context context, String str, List list) {
        MediaFormat defaultFormat = getDefaultFormat(context, R.string.default_video_format_key, R.string.default_video_format_value);
        String string = context.getString(R.string.best_resolution_key);
        if (list.isEmpty()) {
            return -1;
        }
        sortStreamList(list);
        if (str.equals(string)) {
            return 0;
        }
        String replaceAll = str.replaceAll("p\\d+$", TtmlNode.TAG_P);
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < list.size(); i6++) {
            MediaFormat format = defaultFormat == null ? null : ((VideoStream) list.get(i6)).getFormat();
            String str2 = ((VideoStream) list.get(i6)).resolution;
            String replaceAll2 = str2.replaceAll("p\\d+$", TtmlNode.TAG_P);
            if (format == defaultFormat && str2.equals(str)) {
                i = i6;
            }
            if (format == defaultFormat && replaceAll2.equals(replaceAll)) {
                i2 = i6;
            }
            if (i3 == -1 && str2.equals(str)) {
                i3 = i6;
            }
            if (i4 == -1 && replaceAll2.equals(replaceAll)) {
                i4 = i6;
            }
            if (i5 == -1 && compareVideoStreamResolution(replaceAll2, replaceAll) < 0) {
                i5 = i6;
            }
        }
        if (i == -1) {
            i = i2 != -1 ? i2 : i3 != -1 ? i3 : i4 != -1 ? i4 : i5;
        }
        if (i == -1) {
            return 0;
        }
        return i;
    }

    public static List getFilteredAudioStreams(android.content.Context context, List list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        HashMap hashMap = new HashMap();
        java.util.Comparator audioFormatComparator = getAudioFormatComparator(context);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AudioStream audioStream = (AudioStream) it.next();
            if (audioStream.getDeliveryMethod() != DeliveryMethod.TORRENT && (audioStream.getDeliveryMethod() != DeliveryMethod.HLS || audioStream.getFormat() != MediaFormat.OPUS)) {
                String objects = Objects.toString(audioStream.getAudioTrackId(), "");
                AudioStream audioStream2 = (AudioStream) hashMap.get(objects);
                if (audioStream2 == null || audioFormatComparator.compare(audioStream, audioStream2) > 0) {
                    hashMap.put(objects, audioStream);
                }
            }
        }
        if (hashMap.size() > 1) {
            hashMap.remove("");
        }
        return (List) Collection.EL.stream(hashMap.values()).sorted(getAudioTrackNameComparator()).collect(Collectors.toList());
    }

    public static List getFilteredStreamList(List list, Predicate predicate) {
        return list == null ? Collections.EMPTY_LIST : (List) Collection.EL.stream(list).filter(predicate).collect(Collectors.toList());
    }

    public static List getGroupedAudioStreams(android.content.Context context, List list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AudioStream audioStream = (AudioStream) it.next();
            String objects = Objects.toString(audioStream.getAudioTrackId(), "");
            if (hashMap.containsKey(objects)) {
                ((List) hashMap.get(objects)).add(audioStream);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(audioStream);
                hashMap.put(objects, arrayList);
            }
        }
        if (hashMap.size() > 1) {
            hashMap.remove("");
        }
        return (List) Collection.EL.stream(hashMap.values()).sorted(new ListHelper$$ExternalSyntheticLambda10(1, getAudioTrackNameComparator())).map(new Player$$ExternalSyntheticLambda41(getAudioFormatComparator(context), 12)).collect(Collectors.toList());
    }

    public static String getResolutionLimit(android.content.Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(ConnectivityManager.class);
        if (!((connectivityManager == null || connectivityManager.getActiveNetworkInfo() == null) ? false : connectivityManager.isActiveNetworkMetered())) {
            return null;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        String string = context.getString(R.string.limit_data_usage_none_key);
        String string2 = sharedPreferences.getString(context.getString(R.string.limit_mobile_data_usage_key), string);
        if (string.equals(string2)) {
            return null;
        }
        return string2;
    }

    public static ArrayList getSortedResolutionList(Resources resources, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(Arrays.asList(resources.getStringArray(i)));
        if (!z) {
            return arrayList;
        }
        arrayList.addAll(1, Arrays.asList(resources.getStringArray(i2)));
        return arrayList;
    }

    public static ArrayList getSortedStreamVideosList(android.content.Context context, List list, List list2, boolean z) {
        int i = 0;
        boolean z2 = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(context.getString(R.string.show_higher_resolutions_key), false);
        MediaFormat defaultFormat = getDefaultFormat(context, R.string.default_video_format_key, R.string.default_video_format_value);
        List<VideoStream> list3 = (List) Collection.EL.stream(z ? Arrays.asList(list, list2) : Arrays.asList(list2, list)).filter(new Player$$ExternalSyntheticLambda48(25)).flatMap(new ListHelper$$ExternalSyntheticLambda0(23)).filter(new ListHelper$$ExternalSyntheticLambda14(z2, i)).collect(Collectors.toList());
        HashMap hashMap = new HashMap();
        for (VideoStream videoStream : list3) {
            hashMap.put(videoStream.resolution, videoStream);
        }
        for (VideoStream videoStream2 : list3) {
            if (videoStream2.getFormat() == defaultFormat) {
                hashMap.put(videoStream2.resolution, videoStream2);
            }
        }
        ArrayList arrayList = new ArrayList(hashMap.values());
        sortStreamList(arrayList);
        return arrayList;
    }

    public static List getUrlAndNonTorrentStreams(List list) {
        return getFilteredStreamList(list, new Player$$ExternalSyntheticLambda48(26));
    }

    public static void sortStreamList(List list) {
        Collections.sort(list, Comparator.EL.reversed(Comparator.CC.nullsLast(Comparator.EL.thenComparingInt(Comparator.CC.comparing(new Utils$$ExternalSyntheticLambda1(24), new LayoutNode$$ExternalSyntheticLambda3(12)), new ListHelper$$ExternalSyntheticLambda6(8)))));
    }

    public static java.util.Comparator getAudioFormatComparator(android.content.Context context) {
        return getAudioFormatComparator(getDefaultFormat(context, R.string.default_audio_format_key, R.string.default_audio_format_value), getResolutionLimit(context) != null);
    }
}
