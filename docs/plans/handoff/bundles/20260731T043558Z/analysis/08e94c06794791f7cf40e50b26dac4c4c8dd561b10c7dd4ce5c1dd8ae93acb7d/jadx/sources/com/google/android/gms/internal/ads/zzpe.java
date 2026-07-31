package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.SparseArray;
import androidx.media3.extractor.OpusUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzpe {
    static final zzgph zzb;
    private final SparseArray zzd = new SparseArray();
    private final int zze;
    public static final zzpe zza = new zzpe(zzgpe.zzj(zzpd.zza));
    private static final zzgpe zzc = zzgpe.zzl(2, 5, 6);

    static {
        zzgpg zzgpgVar = new zzgpg();
        zzgpgVar.zza(5, 6);
        zzgpgVar.zza(17, 6);
        zzgpgVar.zza(7, 6);
        zzgpgVar.zza(30, 10);
        zzgpgVar.zza(18, 6);
        zzgpgVar.zza(6, 8);
        zzgpgVar.zza(8, 8);
        zzgpgVar.zza(14, 8);
        zzb = zzgpgVar.zzc();
    }

    private zzpe(List list) {
        for (int i = 0; i < list.size(); i++) {
            zzpd zzpdVar = (zzpd) list.get(i);
            this.zzd.put(zzpdVar.zzb, zzpdVar);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzd.size(); i3++) {
            i2 = Math.max(i2, ((zzpd) this.zzd.valueAt(i3)).zzc);
        }
        this.zze = i2;
    }

    static zzpe zza(Context context, zzd zzdVar, AudioDeviceInfo audioDeviceInfo) {
        return zzb(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), zzdVar, audioDeviceInfo);
    }

    static zzpe zzb(Context context, Intent intent, zzd zzdVar, AudioDeviceInfo audioDeviceInfo) {
        AudioManager zza2 = zzcb.zza(context);
        if (audioDeviceInfo == null) {
            if (Build.VERSION.SDK_INT >= 33) {
                List<AudioDeviceInfo> audioDevicesForAttributes = zza2.getAudioDevicesForAttributes(zzdVar.zza());
                if (!audioDevicesForAttributes.isEmpty()) {
                    audioDeviceInfo = audioDevicesForAttributes.get(0);
                }
            }
            audioDeviceInfo = null;
        }
        if (Build.VERSION.SDK_INT >= 33 && (zzep.zzN(context) || zzep.zzO(context))) {
            List<AudioProfile> directProfilesForAttributes = zza2.getDirectProfilesForAttributes(zzdVar.zza());
            HashMap hashMap = new HashMap();
            hashMap.put(2, new HashSet(zzgst.zzg(12)));
            for (int i = 0; i < directProfilesForAttributes.size(); i++) {
                AudioProfile audioProfile = directProfilesForAttributes.get(i);
                if (audioProfile.getEncapsulationType() != 1) {
                    int format = audioProfile.getFormat();
                    if (zzep.zzA(format) || zzb.containsKey(Integer.valueOf(format))) {
                        Integer valueOf = Integer.valueOf(format);
                        if (hashMap.containsKey(valueOf)) {
                            Set set = (Set) hashMap.get(valueOf);
                            set.getClass();
                            set.addAll(zzgst.zzg(audioProfile.getChannelMasks()));
                        } else {
                            hashMap.put(valueOf, new HashSet(zzgst.zzg(audioProfile.getChannelMasks())));
                        }
                    }
                }
            }
            int i2 = zzgpe.zzd;
            zzgpb zzgpbVar = new zzgpb();
            for (Map.Entry entry : hashMap.entrySet()) {
                zzgpbVar.zzf(new zzpd(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new zzpe(zzgpbVar.zzi());
        }
        AudioDeviceInfo[] devices = audioDeviceInfo == null ? zza2.getDevices(2) : new AudioDeviceInfo[]{audioDeviceInfo};
        zzgpn zzgpnVar = new zzgpn();
        zzgpnVar.zzg(8, 7);
        if (Build.VERSION.SDK_INT >= 31) {
            zzgpnVar.zzg(26, 27);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            zzgpnVar.zzf((Object) 30);
        }
        zzgpo zzi = zzgpnVar.zzi();
        for (AudioDeviceInfo audioDeviceInfo2 : devices) {
            if (zzi.contains(Integer.valueOf(audioDeviceInfo2.getType()))) {
                return zza;
            }
        }
        zzgpn zzgpnVar2 = new zzgpn();
        zzgpnVar2.zzf((Object) 2);
        if (Build.VERSION.SDK_INT >= 29 && (zzep.zzN(context) || zzep.zzO(context))) {
            int i3 = zzgpe.zzd;
            zzgpb zzgpbVar2 = new zzgpb();
            zzgrs it = zzb.keySet().iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                if (Build.VERSION.SDK_INT >= zzep.zzD(intValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(OpusUtil.SAMPLE_RATE).build(), zzdVar.zza())) {
                    zzgpbVar2.zzf(Integer.valueOf(intValue));
                }
            }
            zzgpbVar2.zzf((Object) 2);
            zzgpnVar2.zzh(zzgpbVar2.zzi());
            return new zzpe(zzf(zzgst.zzf(zzgpnVar2.zzi()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if ((z || zze()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            zzgpnVar2.zzh(zzc);
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new zzpe(zzf(zzgst.zzf(zzgpnVar2.zzi()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            zzgpnVar2.zzh(zzgst.zzg(intArrayExtra));
        }
        return new zzpe(zzf(zzgst.zzf(zzgpnVar2.zzi()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    static Uri zzc() {
        if (zze()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    private static boolean zze() {
        return Build.MANUFACTURER.equals("Amazon") || Build.MANUFACTURER.equals("Xiaomi");
    }

    private static zzgpe zzf(int[] iArr, int i) {
        int i2 = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        for (int i3 : iArr) {
            zzgpbVar.zzf(new zzpd(i3, i));
        }
        return zzgpbVar.zzi();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        if (r1.contentEquals(r3) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 1
            if (r8 != r9) goto L4
            return r0
        L4:
            boolean r1 = r9 instanceof com.google.android.gms.internal.ads.zzpe
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.google.android.gms.internal.ads.zzpe r9 = (com.google.android.gms.internal.ads.zzpe) r9
            android.util.SparseArray r1 = r8.zzd
            android.util.SparseArray r3 = r9.zzd
            java.lang.String r4 = com.google.android.gms.internal.ads.zzep.zza
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 31
            if (r4 < r5) goto L1f
            boolean r1 = r1.contentEquals(r3)
            if (r1 == 0) goto L48
            goto L41
        L1f:
            int r4 = r1.size()
            int r5 = r3.size()
            if (r4 != r5) goto L48
            r5 = r2
        L2a:
            if (r5 >= r4) goto L41
            int r6 = r1.keyAt(r5)
            java.lang.Object r7 = r1.valueAt(r5)
            java.lang.Object r6 = r3.get(r6)
            boolean r6 = java.util.Objects.equals(r7, r6)
            if (r6 == 0) goto L48
            int r5 = r5 + 1
            goto L2a
        L41:
            int r1 = r8.zze
            int r9 = r9.zze
            if (r1 != r9) goto L48
            return r0
        L48:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i;
        String str = zzep.zza;
        int i2 = Build.VERSION.SDK_INT;
        SparseArray sparseArray = this.zzd;
        if (i2 >= 31) {
            i = sparseArray.contentHashCode();
        } else {
            int i3 = 17;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                i3 = (((i3 * 31) + sparseArray.keyAt(i4)) * 31) + Objects.hashCode(sparseArray.valueAt(i4));
            }
            i = i3;
        }
        return this.zze + (i * 31);
    }

    public final String toString() {
        String obj = this.zzd.toString();
        int i = this.zze;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 50 + obj.length() + 1);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", audioProfiles=");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009c, code lost:
    
        if (r7 != 5) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0047, code lost:
    
        if (com.google.android.gms.internal.ads.zzep.zza(r9.zzd, 30) == false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair zzd(com.google.android.gms.internal.ads.zzv r10, com.google.android.gms.internal.ads.zzd r11) {
        /*
            r9 = this;
            java.lang.String r0 = r10.zzo
            r0.getClass()
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            java.lang.String r1 = r10.zzk
            int r1 = com.google.android.gms.internal.ads.zzas.zzh(r0, r1)
            com.google.android.gms.internal.ads.zzgph r2 = com.google.android.gms.internal.ads.zzpe.zzb
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            boolean r2 = r2.containsKey(r3)
            if (r2 != 0) goto L1c
            goto Lc7
        L1c:
            r2 = 7
            r3 = 6
            r4 = 8
            r5 = 18
            if (r1 != r5) goto L2f
            android.util.SparseArray r1 = r9.zzd
            boolean r1 = com.google.android.gms.internal.ads.zzep.zza(r1, r5)
            if (r1 != 0) goto L2e
            r1 = r3
            goto L4a
        L2e:
            r1 = r5
        L2f:
            if (r1 != r4) goto L3d
            android.util.SparseArray r1 = r9.zzd
            boolean r1 = com.google.android.gms.internal.ads.zzep.zza(r1, r4)
            if (r1 == 0) goto L3b
            r1 = r4
            goto L3d
        L3b:
            r1 = r2
            goto L4a
        L3d:
            r6 = 30
            if (r1 != r6) goto L4a
            android.util.SparseArray r7 = r9.zzd
            boolean r6 = com.google.android.gms.internal.ads.zzep.zza(r7, r6)
            if (r6 != 0) goto L4a
            goto L3b
        L4a:
            android.util.SparseArray r6 = r9.zzd
            boolean r7 = com.google.android.gms.internal.ads.zzep.zza(r6, r1)
            if (r7 == 0) goto Lc7
            java.lang.Object r6 = r6.get(r1)
            com.google.android.gms.internal.ads.zzpd r6 = (com.google.android.gms.internal.ads.zzpd) r6
            r6.getClass()
            r7 = r6
            com.google.android.gms.internal.ads.zzpd r7 = (com.google.android.gms.internal.ads.zzpd) r7
            int r7 = r10.zzG
            r8 = -1
            if (r7 == r8) goto L80
            if (r1 != r5) goto L66
            goto L80
        L66:
            java.lang.String r10 = "audio/vnd.dts.uhd;profile=p2"
            boolean r10 = r0.equals(r10)
            if (r10 == 0) goto L79
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 33
            if (r10 >= r11) goto L79
            r10 = 10
            if (r7 <= r10) goto L8b
            goto Lc7
        L79:
            boolean r10 = r6.zza(r7)
            if (r10 != 0) goto L8b
            goto Lc7
        L80:
            int r10 = r10.zzH
            if (r10 != r8) goto L87
            r10 = 48000(0xbb80, float:6.7262E-41)
        L87:
            int r7 = r6.zzb(r10, r11)
        L8b:
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 28
            if (r10 > r11) goto L9f
            if (r7 != r2) goto L95
            r3 = r4
            goto La0
        L95:
            r10 = 3
            if (r7 == r10) goto La0
            r10 = 4
            if (r7 == r10) goto La0
            r10 = 5
            if (r7 != r10) goto L9f
            goto La0
        L9f:
            r3 = r7
        La0:
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 26
            if (r10 > r11) goto Lb4
            java.lang.String r10 = "fugu"
            java.lang.String r11 = android.os.Build.DEVICE
            boolean r10 = r10.equals(r11)
            if (r10 == 0) goto Lb4
            r10 = 1
            if (r3 != r10) goto Lb4
            r3 = 2
        Lb4:
            int r10 = com.google.android.gms.internal.ads.zzep.zzB(r3)
            if (r10 == 0) goto Lc7
            java.lang.Integer r11 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            android.util.Pair r10 = android.util.Pair.create(r11, r10)
            return r10
        Lc7:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.zzd(com.google.android.gms.internal.ads.zzv, com.google.android.gms.internal.ads.zzd):android.util.Pair");
    }
}
