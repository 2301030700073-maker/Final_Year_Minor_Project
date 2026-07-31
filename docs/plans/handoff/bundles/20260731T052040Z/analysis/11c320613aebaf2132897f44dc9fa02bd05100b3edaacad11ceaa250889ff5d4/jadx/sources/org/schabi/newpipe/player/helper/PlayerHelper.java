package org.schabi.newpipe.player.helper;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.provider.Settings;
import androidx.compose.ui.Modifier;
import androidx.preference.PreferenceManager;
import com.android.tools.r8.RecordTag;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.util.ListHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class PlayerHelper {
    public static final VideoPlayerUi.AnonymousClass1 FORMATTERS_PROVIDER = new VideoPlayerUi.AnonymousClass1(8);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Formatters extends RecordTag {
        public final Locale locale;
        public final DecimalFormat pitch;
        public final DecimalFormat speed;

        public Formatters(Locale locale, DecimalFormat decimalFormat, DecimalFormat decimalFormat2) {
            this.locale = locale;
            this.speed = decimalFormat;
            this.pitch = decimalFormat2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Formatters)) {
                return false;
            }
            Formatters formatters = (Formatters) obj;
            return Objects.equals(this.locale, formatters.locale) && this.speed.equals(formatters.speed) && this.pitch.equals(formatters.pitch);
        }

        public final int hashCode() {
            return this.pitch.hashCode() + ((this.speed.hashCode() + (Objects.hashCode(this.locale) * 31)) * 31);
        }

        public final String toString() {
            Object[] objArr = {this.locale, this.speed, this.pitch};
            String[] split = "locale;speed;pitch".length() == 0 ? new String[0] : "locale;speed;pitch".split(";");
            StringBuilder sb = new StringBuilder();
            sb.append(Formatters.class.getSimpleName());
            sb.append("[");
            for (int i = 0; i < split.length; i++) {
                sb.append(split[i]);
                sb.append("=");
                sb.append(objArr[i]);
                if (i != split.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    public static SinglePlayQueue autoQueueOf(StreamInfo streamInfo, List list) {
        Set set = (Set) Collection.EL.stream(list).map(new Player$$ExternalSyntheticLambda28(15)).collect(Collectors.toUnmodifiableSet());
        List<InfoItem> relatedItems = streamInfo.getRelatedItems();
        if (Utils.isNullOrEmpty(relatedItems)) {
            return null;
        }
        if ((relatedItems.get(0) instanceof StreamInfoItem) && !set.contains(((InfoItem) relatedItems.get(0)).getUrl())) {
            SinglePlayQueue singlePlayQueue = new SinglePlayQueue((StreamInfoItem) relatedItems.get(0));
            PlayQueueItem item = singlePlayQueue.getItem();
            Objects.requireNonNull(item);
            item.setAutoQueued(true);
            return singlePlayQueue;
        }
        ArrayList arrayList = new ArrayList();
        for (InfoItem infoItem : relatedItems) {
            if ((infoItem instanceof StreamInfoItem) && !set.contains(infoItem.getUrl())) {
                arrayList.add((StreamInfoItem) infoItem);
            }
        }
        Collections.shuffle(arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        SinglePlayQueue singlePlayQueue2 = new SinglePlayQueue((StreamInfoItem) arrayList.get(0));
        PlayQueueItem item2 = singlePlayQueue2.getItem();
        Objects.requireNonNull(item2);
        item2.setAutoQueued(true);
        return singlePlayQueue2;
    }

    public static String captionLanguageStemOf(String str) {
        if (!str.contains("(") || !str.contains(")")) {
            return str;
        }
        if (!str.startsWith("(")) {
            return str.split("\\(")[0].trim();
        }
        return str.split("\\)")[r2.length - 1].trim();
    }

    public static String formatPitch(double d) {
        return FORMATTERS_PROVIDER.formatters().pitch.format(d);
    }

    public static String formatSpeed(double d) {
        return FORMATTERS_PROVIDER.formatters().speed.format(d);
    }

    public static int getMinimizeOnExitAction(PlayerService playerService) {
        String string = PreferenceManager.getDefaultSharedPreferences(playerService).getString(playerService.getString(R.string.minimize_on_exit_key), "");
        if (string.equals(playerService.getString(R.string.minimize_on_exit_popup_key))) {
            return 2;
        }
        return string.equals(playerService.getString(R.string.minimize_on_exit_none_key)) ? 0 : 1;
    }

    public static String getTimeString(long j) {
        long j2 = (j % 60000) / 1000;
        long j3 = (j % 3600000) / 60000;
        long j4 = (j % 86400000) / 3600000;
        long j5 = (j % 604800000) / 86400000;
        Formatters formatters = FORMATTERS_PROVIDER.formatters();
        return j5 > 0 ? String.format(formatters.locale, "%d:%02d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)) : j4 > 0 ? String.format(formatters.locale, "%d:%02d:%02d", Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)) : String.format(formatters.locale, "%02d:%02d", Long.valueOf(j3), Long.valueOf(j2));
    }

    public static boolean globalScreenOrientationLocked(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation", 0) == 0 || !context.getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer");
    }

    public static boolean isAutoplayAllowedByUser(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(context.getString(R.string.autoplay_key), "");
        if (string.equals(context.getString(R.string.autoplay_always_key))) {
            return true;
        }
        boolean z = false;
        if (string.equals(context.getString(R.string.autoplay_never_key))) {
            return false;
        }
        List list = ListHelper.VIDEO_FORMAT_QUALITY_RANKING;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(ConnectivityManager.class);
        if (connectivityManager != null && connectivityManager.getActiveNetworkInfo() != null) {
            z = connectivityManager.isActiveNetworkMetered();
        }
        return !z;
    }

    public static String resizeTypeOf(PlayerService playerService, int i) {
        if (i == 0) {
            return playerService.getString(R.string.resize_fit);
        }
        if (i == 3) {
            return playerService.getString(R.string.resize_fill);
        }
        if (i == 4) {
            return playerService.getString(R.string.resize_zoom);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Unrecognized resize mode: "));
        return null;
    }

    public static int retrieveSeekDurationFromPreferences(Player player) {
        SharedPreferences sharedPreferences = player.prefs;
        PlayerService playerService = player.context;
        String string = sharedPreferences.getString(playerService.getString(R.string.seek_duration_key), playerService.getString(R.string.seek_duration_default_value));
        Objects.requireNonNull(string);
        return Integer.parseInt(string);
    }
}
