package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import androidx.room.Room;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final ImmutableMap initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of((Long) 4400000L, (Long) 3200000L, (Long) 2300000L, (Long) 1600000L, (Long) 810000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of((Long) 1400000L, (Long) 990000L, (Long) 730000L, (Long) 510000L, (Long) 230000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of((Long) 2100000L, (Long) 1400000L, (Long) 1000000L, (Long) 890000L, (Long) 640000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of((Long) 2600000L, (Long) 1700000L, (Long) 1300000L, (Long) 1000000L, (Long) 700000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of((Long) 5700000L, (Long) 3700000L, (Long) 2300000L, (Long) 1700000L, (Long) 990000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of((Long) 2800000L, (Long) 1800000L, (Long) 1400000L, (Long) 1100000L, (Long) 870000L);

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> map, int i, Clock clock, boolean z) {
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(i);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z;
        int i2 = 0;
        if (context == null) {
            this.networkType = 0;
            this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(0);
            return;
        }
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new DefaultBandwidthMeter$$ExternalSyntheticLambda0(this, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] getInitialBitrateCountryGroupAssignment(String str) {
        str.getClass();
        switch (str) {
            case "AD":
            case "CW":
                return new int[]{2, 2, 0, 0, 2, 2};
            case "AE":
                return new int[]{1, 4, 3, 4, 4, 2};
            case "AF":
            case "PG":
                return new int[]{4, 3, 3, 3, 2, 2};
            case "AG":
                return new int[]{2, 4, 3, 4, 2, 2};
            case "AI":
            case "BB":
            case "BM":
            case "BQ":
            case "DM":
            case "FO":
                return new int[]{0, 2, 0, 0, 2, 2};
            case "AL":
                return new int[]{1, 1, 1, 3, 2, 2};
            case "AM":
                return new int[]{2, 3, 2, 3, 2, 2};
            case "AO":
                return new int[]{4, 4, 4, 3, 2, 2};
            case "AQ":
            case "ER":
            case "SH":
                return new int[]{4, 2, 2, 2, 2, 2};
            case "AS":
                return new int[]{2, 2, 3, 3, 2, 2};
            case "AT":
                return new int[]{1, 2, 1, 4, 1, 4};
            case "AU":
                return new int[]{0, 2, 1, 1, 3, 0};
            case "AW":
            case "GU":
                return new int[]{1, 2, 4, 4, 2, 2};
            case "AX":
            case "CX":
            case "LI":
            case "MP":
            case "MS":
            case "PM":
            case "SM":
            case "VA":
                return new int[]{0, 2, 2, 2, 2, 2};
            case "AZ":
            case "BF":
            case "DZ":
                return new int[]{3, 3, 4, 4, 2, 2};
            case "BA":
            case "IE":
                return new int[]{1, 1, 1, 1, 2, 2};
            case "BD":
            case "KZ":
                return new int[]{2, 1, 2, 2, 2, 2};
            case "BE":
                return new int[]{0, 1, 4, 4, 3, 2};
            case "BG":
            case "ES":
            case "GR":
            case "SI":
                return new int[]{0, 0, 0, 0, 1, 2};
            case "BH":
                return new int[]{1, 3, 1, 4, 4, 2};
            case "BI":
            case "HT":
            case "MG":
            case "NE":
            case "TD":
            case "VE":
            case "YE":
                return new int[]{4, 4, 4, 4, 2, 2};
            case "BJ":
                return new int[]{4, 4, 2, 3, 2, 2};
            case "BL":
            case "MF":
            case "PY":
                return new int[]{1, 2, 2, 2, 2, 2};
            case "BN":
                return new int[]{3, 2, 0, 1, 2, 2};
            case "BO":
                return new int[]{1, 2, 3, 2, 2, 2};
            case "BR":
                return new int[]{1, 1, 2, 1, 1, 0};
            case "BS":
            case "LB":
                return new int[]{3, 2, 1, 2, 2, 2};
            case "BT":
            case "MZ":
            case "WS":
                return new int[]{3, 1, 2, 1, 2, 2};
            case "BW":
                return new int[]{3, 2, 1, 0, 2, 2};
            case "BY":
                return new int[]{1, 1, 2, 3, 2, 2};
            case "BZ":
            case "CK":
                return new int[]{2, 2, 2, 1, 2, 2};
            case "CA":
                return new int[]{0, 2, 3, 3, 3, 3};
            case "CD":
            case "KM":
                return new int[]{4, 3, 3, 2, 2, 2};
            case "CF":
            case "SB":
                return new int[]{4, 2, 4, 2, 2, 2};
            case "CG":
            case "GH":
                return new int[]{3, 3, 3, 3, 2, 2};
            case "CH":
                return new int[]{0, 0, 0, 0, 0, 3};
            case "CI":
            case "EG":
                return new int[]{3, 4, 3, 3, 2, 2};
            case "CL":
                return new int[]{1, 1, 2, 1, 3, 2};
            case "CM":
                return new int[]{4, 3, 3, 4, 2, 2};
            case "CN":
                return new int[]{2, 0, 4, 3, 3, 1};
            case "CO":
                return new int[]{2, 3, 4, 2, 2, 2};
            case "CR":
                return new int[]{2, 4, 4, 4, 2, 2};
            case "CU":
            case "KI":
                return new int[]{4, 2, 4, 3, 2, 2};
            case "CV":
                return new int[]{2, 3, 0, 1, 2, 2};
            case "CY":
            case "HR":
            case "LV":
                return new int[]{1, 0, 0, 0, 0, 2};
            case "CZ":
                return new int[]{0, 0, 2, 0, 1, 2};
            case "DE":
                return new int[]{0, 1, 3, 2, 2, 2};
            case "DJ":
            case "SY":
            case "TJ":
                return new int[]{4, 3, 4, 4, 2, 2};
            case "DK":
            case "EE":
            case "HU":
            case "LT":
            case "MT":
                return new int[]{0, 0, 0, 0, 0, 2};
            case "DO":
                return new int[]{3, 4, 4, 4, 4, 2};
            case "EC":
                return new int[]{1, 3, 2, 1, 2, 2};
            case "ET":
            case "SN":
                return new int[]{4, 4, 3, 2, 2, 2};
            case "FI":
                return new int[]{0, 0, 0, 2, 0, 2};
            case "FJ":
                return new int[]{3, 1, 2, 3, 2, 2};
            case "FM":
                return new int[]{4, 2, 3, 0, 2, 2};
            case "FR":
                return new int[]{1, 1, 2, 1, 1, 2};
            case "GA":
            case "TG":
                return new int[]{3, 4, 1, 0, 2, 2};
            case "GB":
                return new int[]{0, 1, 1, 2, 1, 2};
            case "GD":
            case "KN":
            case "KY":
            case "LC":
            case "SX":
            case "VC":
                return new int[]{1, 2, 0, 0, 2, 2};
            case "GE":
                return new int[]{1, 0, 0, 2, 2, 2};
            case "GF":
            case "PK":
            case "SL":
                return new int[]{3, 2, 3, 3, 2, 2};
            case "GG":
                return new int[]{0, 2, 1, 0, 2, 2};
            case "GI":
            case "JE":
                return new int[]{1, 2, 0, 1, 2, 2};
            case "GL":
            case "TK":
                return new int[]{2, 2, 2, 4, 2, 2};
            case "GM":
                return new int[]{4, 3, 2, 4, 2, 2};
            case "GN":
                return new int[]{4, 4, 4, 2, 2, 2};
            case "GP":
                return new int[]{3, 1, 1, 3, 2, 2};
            case "GQ":
                return new int[]{4, 4, 3, 3, 2, 2};
            case "GT":
                return new int[]{2, 2, 2, 1, 1, 2};
            case "GW":
                return new int[]{4, 4, 2, 2, 2, 2};
            case "GY":
                return new int[]{3, 0, 1, 1, 2, 2};
            case "HK":
                return new int[]{0, 1, 1, 3, 2, 0};
            case "HN":
                return new int[]{3, 3, 2, 2, 2, 2};
            case "ID":
                return new int[]{3, 1, 1, 2, 3, 2};
            case "IL":
                return new int[]{1, 2, 2, 3, 4, 2};
            case "IM":
                return new int[]{0, 2, 0, 1, 2, 2};
            case "IN":
                return new int[]{1, 1, 2, 1, 2, 1};
            case "IO":
            case "TV":
            case "WF":
                return new int[]{4, 2, 2, 4, 2, 2};
            case "IQ":
            case "SJ":
                return new int[]{3, 2, 2, 2, 2, 2};
            case "IR":
                return new int[]{4, 2, 3, 3, 4, 2};
            case "IS":
                return new int[]{0, 0, 1, 0, 0, 2};
            case "IT":
                return new int[]{0, 0, 1, 1, 1, 2};
            case "JM":
                return new int[]{2, 4, 2, 1, 2, 2};
            case "JO":
                return new int[]{2, 0, 1, 1, 2, 2};
            case "JP":
                return new int[]{0, 3, 3, 3, 4, 4};
            case "KE":
                return new int[]{3, 2, 2, 1, 2, 2};
            case "KG":
            case "MQ":
                return new int[]{2, 1, 1, 2, 2, 2};
            case "KH":
                return new int[]{1, 0, 4, 2, 2, 2};
            case "KR":
                return new int[]{0, 2, 2, 4, 4, 4};
            case "KW":
                return new int[]{1, 0, 1, 0, 0, 2};
            case "LA":
                return new int[]{1, 2, 1, 3, 2, 2};
            case "LK":
                return new int[]{3, 2, 3, 4, 4, 2};
            case "LR":
                return new int[]{3, 4, 3, 4, 2, 2};
            case "LS":
            case "UG":
                return new int[]{3, 3, 3, 2, 2, 2};
            case "LU":
                return new int[]{1, 1, 4, 2, 0, 2};
            case "LY":
            case "TO":
            case "ZW":
                return new int[]{3, 2, 4, 3, 2, 2};
            case "MA":
                return new int[]{3, 3, 2, 1, 2, 2};
            case "MC":
                return new int[]{0, 2, 2, 0, 2, 2};
            case "MD":
                return new int[]{1, 0, 0, 0, 2, 2};
            case "ME":
                return new int[]{2, 0, 0, 1, 1, 2};
            case "MH":
                return new int[]{4, 2, 1, 3, 2, 2};
            case "MK":
                return new int[]{2, 0, 0, 1, 3, 2};
            case "ML":
            case "TZ":
                return new int[]{3, 4, 2, 2, 2, 2};
            case "MM":
                return new int[]{2, 2, 2, 3, 4, 2};
            case "MN":
                return new int[]{2, 0, 1, 2, 2, 2};
            case "MO":
                return new int[]{0, 2, 4, 4, 4, 2};
            case "MR":
                return new int[]{4, 2, 3, 4, 2, 2};
            case "MU":
            case "SA":
                return new int[]{3, 1, 1, 2, 2, 2};
            case "MV":
                return new int[]{3, 4, 1, 3, 3, 2};
            case "MW":
                return new int[]{4, 2, 3, 3, 2, 2};
            case "MX":
                return new int[]{3, 4, 4, 4, 2, 2};
            case "MY":
                return new int[]{1, 0, 4, 1, 2, 2};
            case "NA":
                return new int[]{3, 4, 3, 2, 2, 2};
            case "NC":
                return new int[]{3, 2, 3, 4, 2, 2};
            case "NG":
                return new int[]{3, 4, 2, 1, 2, 2};
            case "NI":
                return new int[]{2, 3, 4, 3, 2, 2};
            case "NL":
                return new int[]{0, 2, 3, 3, 0, 4};
            case "NO":
                return new int[]{0, 1, 2, 1, 1, 2};
            case "NP":
                return new int[]{2, 1, 4, 3, 2, 2};
            case "NR":
                return new int[]{4, 0, 3, 2, 2, 2};
            case "NU":
                return new int[]{4, 2, 2, 1, 2, 2};
            case "NZ":
                return new int[]{1, 0, 2, 2, 4, 2};
            case "OM":
                return new int[]{2, 3, 1, 3, 4, 2};
            case "PA":
                return new int[]{2, 3, 3, 3, 2, 2};
            case "PE":
                return new int[]{1, 2, 4, 4, 3, 2};
            case "PF":
            case "SV":
                return new int[]{2, 3, 3, 1, 2, 2};
            case "PH":
                return new int[]{2, 1, 3, 2, 2, 0};
            case "PL":
                return new int[]{2, 1, 2, 2, 4, 2};
            case "PR":
                return new int[]{2, 0, 2, 0, 2, 1};
            case "PS":
                return new int[]{3, 4, 1, 4, 2, 2};
            case "PT":
                return new int[]{1, 0, 0, 0, 1, 2};
            case "PW":
                return new int[]{2, 2, 4, 2, 2, 2};
            case "QA":
                return new int[]{1, 4, 4, 4, 4, 2};
            case "RE":
                return new int[]{1, 2, 2, 3, 1, 2};
            case "RO":
                return new int[]{0, 0, 1, 2, 1, 2};
            case "RS":
                return new int[]{2, 0, 0, 0, 2, 2};
            case "RU":
                return new int[]{1, 0, 0, 0, 3, 3};
            case "RW":
                return new int[]{3, 3, 1, 0, 2, 2};
            case "SC":
                return new int[]{4, 3, 1, 1, 2, 2};
            case "SD":
                return new int[]{4, 3, 4, 2, 2, 2};
            case "SE":
                return new int[]{0, 1, 1, 1, 0, 2};
            case "SG":
                return new int[]{2, 3, 3, 3, 3, 3};
            case "SK":
                return new int[]{1, 1, 1, 1, 3, 2};
            case "SO":
                return new int[]{3, 2, 2, 4, 4, 2};
            case "SR":
                return new int[]{2, 4, 3, 0, 2, 2};
            case "SS":
            case "TM":
                return new int[]{4, 2, 2, 3, 2, 2};
            case "ST":
                return new int[]{2, 2, 1, 2, 2, 2};
            case "SZ":
                return new int[]{4, 4, 3, 4, 2, 2};
            case "TC":
                return new int[]{2, 2, 1, 3, 2, 2};
            case "TH":
                return new int[]{0, 1, 2, 1, 2, 2};
            case "TL":
                return new int[]{4, 2, 4, 4, 2, 2};
            case "TN":
            case "UY":
                return new int[]{2, 1, 1, 1, 2, 2};
            case "TR":
                return new int[]{1, 0, 0, 1, 3, 2};
            case "TT":
                return new int[]{1, 4, 0, 0, 2, 2};
            case "TW":
                return new int[]{0, 2, 0, 0, 0, 0};
            case "UA":
                return new int[]{0, 1, 1, 2, 4, 2};
            case "US":
                return new int[]{1, 1, 4, 1, 3, 1};
            case "UZ":
                return new int[]{2, 2, 3, 4, 3, 2};
            case "VG":
                return new int[]{2, 2, 0, 1, 2, 2};
            case "VI":
                return new int[]{0, 2, 1, 2, 2, 2};
            case "VN":
                return new int[]{0, 0, 1, 2, 2, 1};
            case "VU":
                return new int[]{4, 3, 3, 1, 2, 2};
            case "XK":
                return new int[]{1, 2, 1, 1, 2, 2};
            case "YT":
                return new int[]{2, 3, 3, 4, 2, 2};
            case "ZA":
                return new int[]{2, 3, 2, 1, 2, 2};
            case "ZM":
                return new int[]{4, 4, 4, 3, 3, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    private long getInitialBitrateEstimateForNetworkType(int i) {
        Long l = (Long) this.initialBitrateEstimates.get(Integer.valueOf(i));
        if (l == null) {
            l = (Long) this.initialBitrateEstimates.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        DefaultBandwidthMeter defaultBandwidthMeter;
        synchronized (DefaultBandwidthMeter.class) {
            try {
                if (singletonInstance == null) {
                    singletonInstance = new Builder(context).build();
                }
                defaultBandwidthMeter = singletonInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return defaultBandwidthMeter;
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    private void maybeNotifyBandwidthSample(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j2;
        this.eventDispatcher.bandwidthSample(i, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        DefaultBandwidthMeter defaultBandwidthMeter;
        Throwable th;
        try {
            try {
                int i2 = this.networkType;
                if (i2 != 0) {
                    try {
                        if (!this.resetOnNetworkTypeChange) {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        defaultBandwidthMeter = this;
                        throw th;
                    }
                }
                if (this.networkTypeOverrideSet) {
                    i = this.networkTypeOverride;
                }
                if (i2 == i) {
                    return;
                }
                this.networkType = i;
                if (i == 1 || i == 0 || i == 8) {
                    return;
                }
                this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i);
                long elapsedRealtime = this.clock.elapsedRealtime();
                maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = elapsedRealtime;
                this.sampleBytesTransferred = 0L;
                this.totalBytesTransferred = 0L;
                this.totalElapsedTimeMs = 0L;
                this.slidingPercentile.reset();
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            defaultBandwidthMeter = this;
            th = th;
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public final /* synthetic */ long getTimeToFirstByteEstimateUs() {
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.sampleBytesTransferred += i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
    
        if (r10.totalBytesTransferred >= 524288) goto L22;
     */
    @Override // com.google.android.exoplayer2.upstream.TransferListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void onTransferEnd(com.google.android.exoplayer2.upstream.DataSource r11, com.google.android.exoplayer2.upstream.DataSpec r12, boolean r13) {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r11 = isTransferAtFullNetworkSpeed(r12, r13)     // Catch: java.lang.Throwable -> L72
            if (r11 != 0) goto L9
            monitor-exit(r10)
            return
        L9:
            int r11 = r10.streamCount     // Catch: java.lang.Throwable -> L72
            r12 = 1
            if (r11 <= 0) goto L10
            r11 = r12
            goto L11
        L10:
            r11 = 0
        L11:
            com.google.android.exoplayer2.util.Assertions.checkState(r11)     // Catch: java.lang.Throwable -> L72
            com.google.android.exoplayer2.util.Clock r11 = r10.clock     // Catch: java.lang.Throwable -> L72
            long r0 = r11.elapsedRealtime()     // Catch: java.lang.Throwable -> L72
            long r2 = r10.sampleStartTimeMs     // Catch: java.lang.Throwable -> L72
            long r2 = r0 - r2
            int r5 = (int) r2     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalElapsedTimeMs     // Catch: java.lang.Throwable -> L72
            long r6 = (long) r5     // Catch: java.lang.Throwable -> L72
            long r2 = r2 + r6
            r10.totalElapsedTimeMs = r2     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r6 = r10.sampleBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r2 = r2 + r6
            r10.totalBytesTransferred = r2     // Catch: java.lang.Throwable -> L72
            if (r5 <= 0) goto L75
            float r11 = (float) r6     // Catch: java.lang.Throwable -> L72
            r13 = 1174011904(0x45fa0000, float:8000.0)
            float r11 = r11 * r13
            float r13 = (float) r5     // Catch: java.lang.Throwable -> L72
            float r11 = r11 / r13
            com.google.android.exoplayer2.upstream.SlidingPercentile r13 = r10.slidingPercentile     // Catch: java.lang.Throwable -> L72
            double r2 = (double) r6     // Catch: java.lang.Throwable -> L72
            double r2 = java.lang.Math.sqrt(r2)     // Catch: java.lang.Throwable -> L72
            int r2 = (int) r2     // Catch: java.lang.Throwable -> L72
            r13.addSample(r2, r11)     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalElapsedTimeMs     // Catch: java.lang.Throwable -> L72
            r6 = 2000(0x7d0, double:9.88E-321)
            int r11 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r11 >= 0) goto L55
            long r2 = r10.totalBytesTransferred     // Catch: java.lang.Throwable -> L51
            r6 = 524288(0x80000, double:2.590327E-318)
            int r11 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r11 < 0) goto L60
            goto L55
        L51:
            r0 = move-exception
            r11 = r0
            r4 = r10
            goto L7d
        L55:
            com.google.android.exoplayer2.upstream.SlidingPercentile r11 = r10.slidingPercentile     // Catch: java.lang.Throwable -> L72
            r13 = 1056964608(0x3f000000, float:0.5)
            float r11 = r11.getPercentile(r13)     // Catch: java.lang.Throwable -> L72
            long r2 = (long) r11     // Catch: java.lang.Throwable -> L72
            r10.bitrateEstimate = r2     // Catch: java.lang.Throwable -> L72
        L60:
            long r6 = r10.sampleBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r8 = r10.bitrateEstimate     // Catch: java.lang.Throwable -> L72
            r4 = r10
            r4.maybeNotifyBandwidthSample(r5, r6, r8)     // Catch: java.lang.Throwable -> L6f
            r4.sampleStartTimeMs = r0     // Catch: java.lang.Throwable -> L6f
            r10 = 0
            r4.sampleBytesTransferred = r10     // Catch: java.lang.Throwable -> L6f
            goto L76
        L6f:
            r0 = move-exception
        L70:
            r11 = r0
            goto L7d
        L72:
            r0 = move-exception
            r4 = r10
            goto L70
        L75:
            r4 = r10
        L76:
            int r10 = r4.streamCount     // Catch: java.lang.Throwable -> L6f
            int r10 = r10 - r12
            r4.streamCount = r10     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r4)
            return
        L7d:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6f
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.onTransferEnd(com.google.android.exoplayer2.upstream.DataSource, com.google.android.exoplayer2.upstream.DataSpec, boolean):void");
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        try {
            if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
                if (this.streamCount == 0) {
                    this.sampleStartTimeMs = this.clock.elapsedRealtime();
                }
                this.streamCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i) {
        this.networkTypeOverride = i;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Builder {
        private Clock clock;
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.getCountryCode(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
        }

        private static Map<Integer, Long> getInitialBitrateEstimatesForCountry(String str) {
            int[] initialBitrateCountryGroupAssignment = DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            ImmutableList immutableList = DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            hashMap.put(2, (Long) immutableList.get(initialBitrateCountryGroupAssignment[0]));
            hashMap.put(3, (Long) DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1]));
            hashMap.put(4, (Long) DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2]));
            hashMap.put(5, (Long) DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3]));
            hashMap.put(10, (Long) DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4]));
            hashMap.put(9, (Long) DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5]));
            hashMap.put(7, (Long) immutableList.get(initialBitrateCountryGroupAssignment[0]));
            return hashMap;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j) {
            Iterator<Integer> it = this.initialBitrateEstimates.keySet().iterator();
            while (it.hasNext()) {
                setInitialBitrateEstimate(it.next().intValue(), j);
            }
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z) {
            this.resetOnNetworkTypeChange = z;
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i) {
            this.slidingWindowMaxWeight = i;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i, long j) {
            this.initialBitrateEstimates.put(Integer.valueOf(i), Long.valueOf(j));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Room.toUpperCase(str));
            return this;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
    }
}
