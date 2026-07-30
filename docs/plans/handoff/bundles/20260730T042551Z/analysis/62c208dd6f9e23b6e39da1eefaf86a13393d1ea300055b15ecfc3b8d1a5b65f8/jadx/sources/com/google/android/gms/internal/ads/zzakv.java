package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import defpackage.Cpublic;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzakv implements zzakf {
    private static final Pattern zza = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final boolean zzb;
    private final zzaku zzc;
    private final zzdy zzd;
    private Map zze;
    private float zzf;
    private float zzg;

    public zzakv() {
        this(null);
    }

    private static float zzb(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    private static int zzc(long j, List list, List list2) {
        int i;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) list.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) list.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i - 1)));
        return i;
    }

    private static long zzd(String str) {
        Matcher matcher = zza.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        int i = zzei.zza;
        long parseLong = Long.parseLong(group) * 3600000000L;
        long parseLong2 = Long.parseLong(matcher.group(2)) * 60000000;
        return parseLong + parseLong2 + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0050, code lost:
    
        if (r3.equals("playresx") != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zze(com.google.android.gms.internal.ads.zzdy r7, java.nio.charset.Charset r8) {
        /*
            r6 = this;
        L0:
            java.lang.String r0 = r7.zzz(r8)
            if (r0 == 0) goto Ldf
            java.lang.String r1 = "[Script Info]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            r2 = 91
            if (r1 == 0) goto L75
        L10:
            java.lang.String r0 = r7.zzz(r8)
            if (r0 == 0) goto L0
            int r1 = r7.zzb()
            if (r1 == 0) goto L22
            char r1 = r7.zza(r8)
            if (r1 == r2) goto L0
        L22:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r3 = 2
            if (r1 != r3) goto L10
            r1 = 0
            r3 = r0[r1]
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = com.google.android.gms.internal.ads.zzftt.zza(r3)
            int r4 = r3.hashCode()
            r5 = 1
            switch(r4) {
                case 1879649548: goto L4a;
                case 1879649549: goto L40;
                default: goto L3f;
            }
        L3f:
            goto L53
        L40:
            java.lang.String r1 = "playresy"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L53
            r1 = 1
            goto L54
        L4a:
            java.lang.String r4 = "playresx"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L53
            goto L54
        L53:
            r1 = -1
        L54:
            if (r1 == 0) goto L68
            if (r1 == r5) goto L59
            goto L10
        L59:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L66
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L66
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L66
            r6.zzg = r0     // Catch: java.lang.NumberFormatException -> L66
            goto L10
        L66:
            goto L10
        L68:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L66
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L66
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L66
            r6.zzf = r0     // Catch: java.lang.NumberFormatException -> L66
            goto L10
        L75:
            java.lang.String r1 = "[V4+ Styles]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            java.lang.String r3 = "SsaParser"
            if (r1 == 0) goto Lc8
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            r1 = 0
        L85:
            java.lang.String r4 = r7.zzz(r8)
            if (r4 == 0) goto Lc4
            int r5 = r7.zzb()
            if (r5 == 0) goto L97
            char r5 = r7.zza(r8)
            if (r5 == r2) goto Lc4
        L97:
            java.lang.String r5 = "Format:"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto La4
            com.google.android.gms.internal.ads.zzakw r1 = com.google.android.gms.internal.ads.zzakw.zza(r4)
            goto L85
        La4:
            java.lang.String r5 = "Style:"
            boolean r5 = r4.startsWith(r5)
            if (r5 == 0) goto L85
            if (r1 != 0) goto Lb8
            java.lang.String r5 = "Skipping 'Style:' line before 'Format:' line: "
            java.lang.String r4 = r5.concat(r4)
            com.google.android.gms.internal.ads.zzdo.zzf(r3, r4)
            goto L85
        Lb8:
            com.google.android.gms.internal.ads.zzaky r4 = com.google.android.gms.internal.ads.zzaky.zzb(r4, r1)
            if (r4 == 0) goto L85
            java.lang.String r5 = r4.zza
            r0.put(r5, r4)
            goto L85
        Lc4:
            r6.zze = r0
            goto L0
        Lc8:
            java.lang.String r1 = "[V4 Styles]"
            boolean r1 = r1.equalsIgnoreCase(r0)
            if (r1 == 0) goto Ld7
            java.lang.String r0 = "[V4 Styles] are not supported"
            com.google.android.gms.internal.ads.zzdo.zze(r3, r0)
            goto L0
        Ld7:
            java.lang.String r1 = "[Events]"
            boolean r0 = r1.equalsIgnoreCase(r0)
            if (r0 == 0) goto L0
        Ldf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakv.zze(com.google.android.gms.internal.ads.zzdy, java.nio.charset.Charset):void");
    }

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        int i3;
        Charset charset;
        zzdy zzdyVar;
        zzaku zzakuVar;
        long j;
        Layout.Alignment alignment;
        int i4;
        int i5;
        int i6;
        Integer num;
        int i7;
        zzakv zzakvVar = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        zzakvVar.zzd.zzJ(bArr, i + i2);
        zzakvVar.zzd.zzL(i);
        Charset zzC = zzakvVar.zzd.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        if (!zzakvVar.zzb) {
            zzakvVar.zze(zzakvVar.zzd, zzC);
        }
        zzdy zzdyVar2 = zzakvVar.zzd;
        zzaku zzakuVar2 = zzakvVar.zzb ? zzakvVar.zzc : null;
        while (true) {
            String zzz = zzdyVar2.zzz(zzC);
            if (zzz == null) {
                int i8 = 0;
                while (i8 < arrayList.size()) {
                    List list = (List) arrayList.get(i8);
                    if (list.isEmpty()) {
                        if (i8 != 0) {
                            i3 = 1;
                            i8 += i3;
                        } else {
                            i8 = 0;
                        }
                    }
                    if (i8 == arrayList.size() - 1) {
                        throw new IllegalStateException();
                    }
                    zzdbVar.zza(new zzajx(list, ((Long) arrayList2.get(i8)).longValue(), ((Long) arrayList2.get(i8 + 1)).longValue() - ((Long) arrayList2.get(i8)).longValue()));
                    i3 = 1;
                    i8 += i3;
                }
                return;
            }
            if (zzz.startsWith("Format:")) {
                zzakuVar2 = zzaku.zza(zzz);
            } else {
                if (zzz.startsWith("Dialogue:")) {
                    if (zzakuVar2 == null) {
                        zzdo.zzf("SsaParser", "Skipping dialogue line before complete format: ".concat(zzz));
                    } else {
                        zzcw.zzd(zzz.startsWith("Dialogue:"));
                        String[] split = zzz.substring(9).split(",", zzakuVar2.zze);
                        if (split.length != zzakuVar2.zze) {
                            zzdo.zzf("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(zzz));
                        } else {
                            long zzd = zzd(split[zzakuVar2.zza]);
                            if (zzd == -9223372036854775807L) {
                                zzdo.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                            } else {
                                long zzd2 = zzd(split[zzakuVar2.zzb]);
                                if (zzd2 == -9223372036854775807L) {
                                    zzdo.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                                } else {
                                    Map map = zzakvVar.zze;
                                    zzaky zzakyVar = (map == null || (i7 = zzakuVar2.zzc) == -1) ? null : (zzaky) map.get(split[i7].trim());
                                    String str = split[zzakuVar2.zzd];
                                    zzakx zza2 = zzakx.zza(str);
                                    String replace = zzakx.zzb(str).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f = zzakvVar.zzf;
                                    float f2 = zzakvVar.zzg;
                                    SpannableString spannableString = new SpannableString(replace);
                                    zzcm zzcmVar = new zzcm();
                                    zzcmVar.zzl(spannableString);
                                    if (zzakyVar != null) {
                                        charset = zzC;
                                        Integer num2 = zzakyVar.zzc;
                                        if (num2 != null) {
                                            zzdyVar = zzdyVar2;
                                            zzakuVar = zzakuVar2;
                                            j = zzd2;
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        } else {
                                            zzdyVar = zzdyVar2;
                                            zzakuVar = zzakuVar2;
                                            j = zzd2;
                                        }
                                        if (zzakyVar.zzj == 3 && (num = zzakyVar.zzd) != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        float f3 = zzakyVar.zze;
                                        if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                                            zzcmVar.zzn(f3 / f2, 1);
                                        }
                                        if (!zzakyVar.zzf) {
                                            i5 = 33;
                                            i6 = 0;
                                            if (zzakyVar.zzg) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        } else if (zzakyVar.zzg) {
                                            i5 = 33;
                                            i6 = 0;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            i5 = 33;
                                            i6 = 0;
                                            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                        }
                                        if (zzakyVar.zzh) {
                                            spannableString.setSpan(new UnderlineSpan(), i6, spannableString.length(), i5);
                                        }
                                        if (zzakyVar.zzi) {
                                            spannableString.setSpan(new StrikethroughSpan(), i6, spannableString.length(), i5);
                                        }
                                    } else {
                                        charset = zzC;
                                        zzdyVar = zzdyVar2;
                                        zzakuVar = zzakuVar2;
                                        j = zzd2;
                                    }
                                    int i9 = zza2.zza;
                                    if (i9 == -1) {
                                        i9 = zzakyVar != null ? zzakyVar.zzb : -1;
                                    }
                                    switch (i9) {
                                        case 0:
                                        default:
                                            Cpublic.m7824goto("Unknown alignment: ", i9, "SsaParser");
                                        case -1:
                                            alignment = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            break;
                                    }
                                    zzcmVar.zzm(alignment);
                                    int i10 = Integer.MIN_VALUE;
                                    switch (i9) {
                                        case 0:
                                        default:
                                            Cpublic.m7824goto("Unknown alignment: ", i9, "SsaParser");
                                        case -1:
                                            i4 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i4 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i4 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i4 = 2;
                                            break;
                                    }
                                    zzcmVar.zzi(i4);
                                    switch (i9) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            Cpublic.m7824goto("Unknown alignment: ", i9, "SsaParser");
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i10 = 2;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i10 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i10 = 0;
                                            break;
                                    }
                                    zzcmVar.zzf(i10);
                                    PointF pointF = zza2.zzb;
                                    if (pointF == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
                                        zzcmVar.zzh(zzb(zzcmVar.zzb()));
                                        zzcmVar.zze(zzb(zzcmVar.zza()), 0);
                                    } else {
                                        zzcmVar.zzh(pointF.x / f);
                                        zzcmVar.zze(zza2.zzb.y / f2, 0);
                                    }
                                    zzco zzp = zzcmVar.zzp();
                                    int zzc = zzc(j, arrayList2, arrayList);
                                    for (int zzc2 = zzc(zzd, arrayList2, arrayList); zzc2 < zzc; zzc2++) {
                                        ((List) arrayList.get(zzc2)).add(zzp);
                                    }
                                    zzakvVar = this;
                                    zzC = charset;
                                    zzdyVar2 = zzdyVar;
                                    zzakuVar2 = zzakuVar;
                                }
                            }
                        }
                    }
                }
                charset = zzC;
                zzdyVar = zzdyVar2;
                zzakuVar = zzakuVar2;
                zzakvVar = this;
                zzC = charset;
                zzdyVar2 = zzdyVar;
                zzakuVar2 = zzakuVar;
            }
        }
    }

    public zzakv(List list) {
        this.zzf = -3.4028235E38f;
        this.zzg = -3.4028235E38f;
        this.zzd = new zzdy();
        if (list == null || list.isEmpty()) {
            this.zzb = false;
            this.zzc = null;
            return;
        }
        this.zzb = true;
        String zzB = zzei.zzB((byte[]) list.get(0));
        zzcw.zzd(zzB.startsWith("Format:"));
        zzaku zza2 = zzaku.zza(zzB);
        zza2.getClass();
        this.zzc = zza2;
        zze(new zzdy((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }
}
