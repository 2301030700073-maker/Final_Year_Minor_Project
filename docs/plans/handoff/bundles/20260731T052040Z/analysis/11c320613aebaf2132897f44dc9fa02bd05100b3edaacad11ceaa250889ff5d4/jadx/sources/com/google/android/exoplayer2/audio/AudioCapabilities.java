package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.net.Uri;
import android.provider.Settings;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class AudioCapabilities {
    private static final ImmutableMap ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(new int[]{2}, 10);
    private static final int DEFAULT_MAX_CHANNEL_COUNT = 10;
    static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    private static final ImmutableList EXTERNAL_SURROUND_SOUND_ENCODINGS;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private final int maxChannelCount;
    private final int[] supportedEncodings;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Api23 {
        private Api23() {
        }

        private static final ImmutableSet getAllBluetoothDeviceTypes() {
            ImmutableSet.Builder builder = new ImmutableSet.Builder();
            Integer[] numArr = {8, 7};
            for (int i = 0; i < 2; i++) {
                builder.add$1(numArr[i]);
            }
            int i2 = Util.SDK_INT;
            if (i2 >= 31) {
                Integer[] numArr2 = {26, 27};
                for (int i3 = 0; i3 < 2; i3++) {
                    builder.add$1(numArr2[i3]);
                }
            }
            if (i2 >= 33) {
                builder.add$1(30);
            }
            return builder.build();
        }

        public static final boolean isBluetoothConnected(Context context) {
            AudioDeviceInfo[] devices = ((AudioManager) Assertions.checkNotNull((AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO))).getDevices(2);
            ImmutableSet allBluetoothDeviceTypes = getAllBluetoothDeviceTypes();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (allBluetoothDeviceTypes.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Api29 {
        private static final android.media.AudioAttributes DEFAULT_AUDIO_ATTRIBUTES = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        private Api29() {
        }

        public static ImmutableList getDirectPlaybackSupportedEncodings() {
            int i = ImmutableList.$r8$clinit;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            ImmutableMap immutableMap = AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS;
            ImmutableSet immutableSet = immutableMap.keySet;
            if (immutableSet == null) {
                immutableSet = immutableMap.createKeySet();
                immutableMap.keySet = immutableSet;
            }
            UnmodifiableIterator it = immutableSet.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int intValue = num.intValue();
                if (Util.SDK_INT >= 34 || intValue != 30) {
                    if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                        builder.m642add((Object) num);
                    }
                }
            }
            builder.m642add((Object) 2);
            return builder.build();
        }

        public static int getMaxSupportedChannelCountForPassthrough(int i, int i2) {
            for (int i3 = 10; i3 > 0; i3--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(Util.getAudioTrackChannelConfig(i3)).build(), DEFAULT_AUDIO_ATTRIBUTES)) {
                    return i3;
                }
            }
            return 0;
        }
    }

    static {
        Object[] objArr = {2, 5, 6};
        Maps.checkElementsNotNull(objArr);
        EXTERNAL_SURROUND_SOUND_ENCODINGS = ImmutableList.asImmutableList(3, objArr);
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        builder.put(5, 6);
        builder.put(17, 6);
        builder.put(7, 6);
        builder.put(30, 10);
        builder.put(18, 6);
        builder.put(6, 8);
        builder.put(8, 8);
        builder.put(14, 8);
        ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS = builder.buildOrThrow();
    }

    public AudioCapabilities(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.supportedEncodings = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i;
    }

    private static boolean deviceMaySetExternalSurroundSoundGlobalSetting() {
        if (Util.SDK_INT < 17) {
            return false;
        }
        String str = Util.MANUFACTURER;
        return "Amazon".equals(str) || "Xiaomi".equals(str);
    }

    public static AudioCapabilities getCapabilities(Context context, Intent intent) {
        int i = Util.SDK_INT;
        if (i >= 23 && Api23.isBluetoothConnected(context)) {
            return DEFAULT_AUDIO_CAPABILITIES;
        }
        ImmutableSet.Builder builder = new ImmutableSet.Builder();
        if (deviceMaySetExternalSurroundSoundGlobalSetting() && Settings.Global.getInt(context.getContentResolver(), EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) {
            builder.addAll(EXTERNAL_SURROUND_SOUND_ENCODINGS);
        }
        if (i >= 29 && (Util.isTv(context) || Util.isAutomotive(context))) {
            builder.addAll(Api29.getDirectPlaybackSupportedEncodings());
            return new AudioCapabilities(Ints.toArray(builder.build()), 10);
        }
        if (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            ImmutableSet build = builder.build();
            return !build.isEmpty() ? new AudioCapabilities(Ints.toArray(build), 10) : DEFAULT_AUDIO_CAPABILITIES;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            builder.addAll(intArrayExtra.length == 0 ? Collections.EMPTY_LIST : new Ints.IntArrayAsList(0, intArrayExtra.length, intArrayExtra));
        }
        return new AudioCapabilities(Ints.toArray(builder.build()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10));
    }

    private static int getChannelConfigForPassthrough(int i) {
        int i2 = Util.SDK_INT;
        if (i2 <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (i2 <= 26 && "fugu".equals(Util.DEVICE) && i == 1) {
            i = 2;
        }
        return Util.getAudioTrackChannelConfig(i);
    }

    public static Uri getExternalSurroundSoundGlobalSettingUri() {
        if (deviceMaySetExternalSurroundSoundGlobalSetting()) {
            return Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY);
        }
        return null;
    }

    private static int getMaxSupportedChannelCountForPassthrough(int i, int i2) {
        if (Util.SDK_INT >= 29) {
            return Api29.getMaxSupportedChannelCountForPassthrough(i, i2);
        }
        Object obj = ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.get(Integer.valueOf(i));
        return ((Integer) Assertions.checkNotNull((Integer) (obj != null ? obj : 0))).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Arrays.equals(this.supportedEncodings, audioCapabilities.supportedEncodings) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    public Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format format) {
        int encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
        if (!ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(encoding))) {
            return null;
        }
        if (encoding == 18 && !supportsEncoding(18)) {
            encoding = 6;
        } else if ((encoding == 8 && !supportsEncoding(8)) || (encoding == 30 && !supportsEncoding(30))) {
            encoding = 7;
        }
        if (!supportsEncoding(encoding)) {
            return null;
        }
        int i = format.channelCount;
        if (i == -1 || encoding == 18) {
            int i2 = format.sampleRate;
            if (i2 == -1) {
                i2 = 48000;
            }
            i = getMaxSupportedChannelCountForPassthrough(encoding, i2);
        } else if (format.sampleMimeType.equals(MimeTypes.AUDIO_DTS_X)) {
            if (i > 10) {
                return null;
            }
        } else if (i > this.maxChannelCount) {
            return null;
        }
        int channelConfigForPassthrough = getChannelConfigForPassthrough(i);
        if (channelConfigForPassthrough == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(encoding), Integer.valueOf(channelConfigForPassthrough));
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.supportedEncodings) * 31) + this.maxChannelCount;
    }

    public boolean isPassthroughPlaybackSupported(Format format) {
        return getEncodingAndChannelConfigForPassthrough(format) != null;
    }

    public boolean supportsEncoding(int i) {
        return Arrays.binarySearch(this.supportedEncodings, i) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", supportedEncodings=" + Arrays.toString(this.supportedEncodings) + "]";
    }

    public static AudioCapabilities getCapabilities(Context context) {
        return getCapabilities(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }
}
