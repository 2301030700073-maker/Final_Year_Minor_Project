package com.google.android.exoplayer2.upstream.experimental;

import android.content.Context;
import android.os.Handler;
import androidx.room.Room;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.upstream.TimeToFirstByteEstimator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.experimental.SplitParallelSampleBandwidthEstimator;
import com.google.android.exoplayer2.util.Assertions;
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
public final class ExperimentalBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final float DEFAULT_TIME_TO_FIRST_BYTE_PERCENTILE = 0.5f;
    public static final int DEFAULT_TIME_TO_FIRST_BYTE_SAMPLES = 20;
    private final BandwidthEstimator bandwidthEstimator;
    private long initialBitrateEstimate;
    private final ImmutableMap initialBitrateEstimates;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private final TimeToFirstByteEstimator timeToFirstByteEstimator;
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of((Long) 4400000L, (Long) 3200000L, (Long) 2300000L, (Long) 1600000L, (Long) 810000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of((Long) 1400000L, (Long) 990000L, (Long) 730000L, (Long) 510000L, (Long) 230000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of((Long) 2100000L, (Long) 1400000L, (Long) 1000000L, (Long) 890000L, (Long) 640000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of((Long) 2600000L, (Long) 1700000L, (Long) 1300000L, (Long) 1000000L, (Long) 700000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of((Long) 5700000L, (Long) 3700000L, (Long) 2300000L, (Long) 1700000L, (Long) 990000L);
    public static final ImmutableList DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of((Long) 2800000L, (Long) 1800000L, (Long) 1400000L, (Long) 1100000L, (Long) 870000L);

    private ExperimentalBandwidthMeter(Context context, Map<Integer, Long> map, TimeToFirstByteEstimator timeToFirstByteEstimator, BandwidthEstimator bandwidthEstimator, boolean z) {
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.timeToFirstByteEstimator = timeToFirstByteEstimator;
        this.bandwidthEstimator = bandwidthEstimator;
        this.resetOnNetworkTypeChange = z;
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.initialBitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new DefaultBandwidthMeter$$ExternalSyntheticLambda0(this, 1));
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

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        int i2 = this.networkType;
        if (i2 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i = this.networkTypeOverride;
            }
            if (i2 == i) {
                return;
            }
            this.networkType = i;
            if (i != 1 && i != 0 && i != 8) {
                long initialBitrateEstimateForNetworkType = getInitialBitrateEstimateForNetworkType(i);
                this.initialBitrateEstimate = initialBitrateEstimateForNetworkType;
                this.bandwidthEstimator.onNetworkTypeChange(initialBitrateEstimateForNetworkType);
                this.timeToFirstByteEstimator.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.bandwidthEstimator.addEventListener(handler, eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        long bandwidthEstimate;
        bandwidthEstimate = this.bandwidthEstimator.getBandwidthEstimate();
        if (bandwidthEstimate == Long.MIN_VALUE) {
            bandwidthEstimate = this.initialBitrateEstimate;
        }
        return bandwidthEstimate;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public long getTimeToFirstByteEstimateUs() {
        return this.timeToFirstByteEstimator.getTimeToFirstByteEstimateUs();
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.bandwidthEstimator.onBytesTransferred(dataSource, i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.bandwidthEstimator.onTransferEnd(dataSource);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.timeToFirstByteEstimator.onTransferInitializing(dataSpec);
            this.bandwidthEstimator.onTransferInitializing(dataSource);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.timeToFirstByteEstimator.onTransferStart(dataSpec);
            this.bandwidthEstimator.onTransferStart(dataSource);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.bandwidthEstimator.removeEventListener(eventListener);
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
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private TimeToFirstByteEstimator timeToFirstByteEstimator = new PercentileTimeToFirstByteEstimator(20, 0.5f);
        private BandwidthEstimator bandwidthEstimator = new SplitParallelSampleBandwidthEstimator.Builder().build();
        private boolean resetOnNetworkTypeChange = true;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.getCountryCode(context));
        }

        private static Map<Integer, Long> getInitialBitrateEstimatesForCountry(String str) {
            int[] initialBitrateCountryGroupAssignment = ExperimentalBandwidthMeter.getInitialBitrateCountryGroupAssignment(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            ImmutableList immutableList = ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            hashMap.put(2, (Long) immutableList.get(initialBitrateCountryGroupAssignment[0]));
            hashMap.put(3, (Long) ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1]));
            hashMap.put(4, (Long) ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2]));
            hashMap.put(5, (Long) ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3]));
            hashMap.put(10, (Long) ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4]));
            hashMap.put(9, (Long) ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5]));
            hashMap.put(7, (Long) immutableList.get(initialBitrateCountryGroupAssignment[0]));
            return hashMap;
        }

        public ExperimentalBandwidthMeter build() {
            return new ExperimentalBandwidthMeter(this.context, this.initialBitrateEstimates, this.timeToFirstByteEstimator, this.bandwidthEstimator, this.resetOnNetworkTypeChange);
        }

        public Builder setBandwidthEstimator(BandwidthEstimator bandwidthEstimator) {
            this.bandwidthEstimator = bandwidthEstimator;
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

        public Builder setTimeToFirstByteEstimator(TimeToFirstByteEstimator timeToFirstByteEstimator) {
            this.timeToFirstByteEstimator = timeToFirstByteEstimator;
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
}
