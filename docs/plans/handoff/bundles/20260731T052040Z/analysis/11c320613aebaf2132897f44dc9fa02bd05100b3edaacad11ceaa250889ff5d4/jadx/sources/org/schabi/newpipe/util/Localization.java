package org.schabi.newpipe.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.icu.text.CompactDecimalFormat;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import com.google.android.exoplayer2.C;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.ocpsoft.prettytime.PrettyTime;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.format.SimpleTimeFormat;
import org.ocpsoft.prettytime.units.Decade;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Localization {
    public static final String TAG = Localization.class.toString();
    public static PrettyTime prettyTime;

    public static String audioTrackName(Context context, AudioStream audioStream) {
        String string;
        String displayName = audioStream.getAudioLocale() != null ? audioStream.getAudioLocale().getDisplayName() : audioStream.getAudioTrackName() != null ? audioStream.getAudioTrackName() : context.getString(R.string.unknown_audio_track);
        if (audioStream.getAudioTrackType() == null) {
            return displayName;
        }
        int ordinal = audioStream.getAudioTrackType().ordinal();
        if (ordinal == 0) {
            string = context.getString(R.string.audio_track_type_original);
        } else if (ordinal == 1) {
            string = context.getString(R.string.audio_track_type_dubbed);
        } else if (ordinal == 2) {
            string = context.getString(R.string.audio_track_type_descriptive);
        } else {
            if (ordinal != 3) {
                throw new RuntimeException(null, null);
            }
            string = context.getString(R.string.audio_track_type_secondary);
        }
        return context.getString(R.string.audio_track_name, displayName, string);
    }

    public static String concatenateStrings(String str, List list) {
        return (String) Collection.EL.stream(list).filter(new Player$$ExternalSyntheticLambda48(27)).collect(Collectors.joining(str));
    }

    public static Locale getAppLocale() {
        Locale locale = AppCompatDelegate.getApplicationLocales().mImpl.get(0);
        return locale != null ? locale : Locale.getDefault();
    }

    public static String getDurationString(long j, boolean z) {
        return Owner.CC.m("⏱ ", getDurationString(j), z ? "" : "+");
    }

    public static ContentCountry getPreferredContentCountry(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(context.getString(R.string.content_country_key), context.getString(R.string.default_localization_key));
        return string.equals(context.getString(R.string.default_localization_key)) ? new ContentCountry(Locale.getDefault().getCountry()) : new ContentCountry(string);
    }

    public static Locale getPreferredLocale(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = context.getString(R.string.default_localization_key);
        String string2 = defaultSharedPreferences.getString(context.getString(R.string.content_language_key), string);
        return string2.equals(string) ? Locale.getDefault() : Locale.forLanguageTag(string2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r5 > 2147483647L) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getQuantity(android.content.Context r2, int r3, int r4, long r5, java.lang.String r7) {
        /*
            r0 = 0
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r0 != 0) goto Ld
            if (r4 == 0) goto Ld
            java.lang.String r2 = r2.getString(r4)
            return r2
        Ld:
            r0 = -2147483648(0xffffffff80000000, double:NaN)
            int r4 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r4 >= 0) goto L16
        L14:
            r5 = r0
            goto L1e
        L16:
            r0 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r4 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r4 <= 0) goto L1e
            goto L14
        L1e:
            int r4 = (int) r5
            android.content.res.Resources r2 = r2.getResources()
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 0
            r5[r6] = r7
            java.lang.String r2 = r2.getQuantityString(r3, r4, r5)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.util.Localization.getQuantity(android.content.Context, int, int, long, java.lang.String):java.lang.String");
    }

    public static void initPrettyTime(PrettyTime prettyTime2) {
        prettyTime = prettyTime2;
        for (TimeUnit timeUnit : prettyTime2.units.keySet()) {
            if (Decade.class.isAssignableFrom(timeUnit.getClass())) {
                prettyTime2.cachedUnits = null;
                return;
            }
        }
    }

    public static String localizeNumber(double d) {
        return NumberFormat.getInstance(getAppLocale()).format(d);
    }

    public static String localizeStreamCount(Context context, long j) {
        int i = (int) j;
        return i != -3 ? i != -2 ? i != -1 ? getQuantity(context, R.plurals.videos, R.string.no_videos, j, localizeNumber(j)) : "" : context.getString(R.string.infinite_videos) : context.getString(R.string.more_than_100_videos);
    }

    public static String localizeStreamCountMini(Context context, long j) {
        int i = (int) j;
        return i != -3 ? i != -2 ? i != -1 ? String.valueOf(j) : "" : context.getString(R.string.infinite_videos_mini) : context.getString(R.string.more_than_100_videos_mini);
    }

    public static PrettyTime resolvePrettyTime() {
        Locale appLocale = getAppLocale();
        PrettyTime prettyTime2 = new PrettyTime();
        if (appLocale == null) {
            appLocale = Locale.getDefault();
        }
        prettyTime2.locale = appLocale;
        for (Object obj : prettyTime2.units.keySet()) {
            if (obj instanceof SimpleTimeFormat) {
                ((SimpleTimeFormat) obj).setLocale(appLocale);
            }
        }
        for (TimeFormat timeFormat : prettyTime2.units.values()) {
            if (timeFormat instanceof SimpleTimeFormat) {
                ((SimpleTimeFormat) timeFormat).setLocale(appLocale);
            }
        }
        prettyTime2.cachedUnits = null;
        return prettyTime2;
    }

    public static String shortCount(Context context, long j) {
        if (Build.VERSION.SDK_INT >= 24) {
            return CompactDecimalFormat.getInstance(getAppLocale(), CompactDecimalFormat.CompactStyle.SHORT).format(j);
        }
        double d = j;
        if (j >= C.NANOS_PER_SECOND) {
            double d2 = d / 1.0E9d;
            return context.getString(R.string.short_billion, localizeNumber(new BigDecimal(d2).setScale(d2 >= 100.0d ? 0 : 1, RoundingMode.HALF_UP).doubleValue()));
        }
        if (j >= 1000000) {
            double d3 = d / 1000000.0d;
            return context.getString(R.string.short_million, localizeNumber(new BigDecimal(d3).setScale(d3 >= 100.0d ? 0 : 1, RoundingMode.HALF_UP).doubleValue()));
        }
        if (j < 1000) {
            return localizeNumber(d);
        }
        double d4 = d / 1000.0d;
        return context.getString(R.string.short_thousand, localizeNumber(new BigDecimal(d4).setScale(d4 >= 100.0d ? 0 : 1, RoundingMode.HALF_UP).doubleValue()));
    }

    public static String shortSubscriberCount(Context context, long j) {
        return getQuantity(context, R.plurals.subscribers, R.string.no_subscribers, j, shortCount(context, j));
    }

    public static String getDurationString(long j) {
        return DateUtils.formatElapsedTime(Math.max(j, 0L));
    }

    public static String concatenateStrings(String... strArr) {
        return concatenateStrings(" • ", Arrays.asList(strArr));
    }
}
