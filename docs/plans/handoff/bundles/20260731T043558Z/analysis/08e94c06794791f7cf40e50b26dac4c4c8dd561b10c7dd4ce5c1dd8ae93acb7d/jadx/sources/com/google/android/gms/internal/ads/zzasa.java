package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzasa implements zzasu {
    public static final /* synthetic */ zzasa zza;
    public static final /* synthetic */ zzasa zzb;
    public static final /* synthetic */ zzasa zzc;
    public static final /* synthetic */ zzasa zzd;
    public static final /* synthetic */ zzasa zze;
    public static final /* synthetic */ zzasa zzf;
    public static final /* synthetic */ zzasa zzg;
    public static final /* synthetic */ zzasa zzh;
    public static final /* synthetic */ zzasa zzi;
    public static final /* synthetic */ zzasa zzj;
    public static final /* synthetic */ zzasa zzk;
    public static final /* synthetic */ zzasa zzl;
    public static final /* synthetic */ zzasa zzm;
    public static final /* synthetic */ zzasa zzn;
    public static final /* synthetic */ zzasa zzo;
    public static final /* synthetic */ zzasa zzp;
    public static final /* synthetic */ zzasa zzq;
    public static final /* synthetic */ zzasa zzr;
    public static final /* synthetic */ zzasa zzs;
    public static final /* synthetic */ zzasa zzt;
    public static final /* synthetic */ zzasa zzu;
    private final /* synthetic */ int zzv;

    static {
        int i = (((((~574682290) & 203332142) | 828655825) + ((574682290 & 488280686) | 1367367889)) - 2039730118) ^ (1891066487 % 382926234);
        int i2 = (((((~138700754) & 1311190796) | 1098494210) + ((138700754 & 235277837) | 2126145)) - 1303500118) ^ (631340353 % 54449299);
        int i3 = (((((~429857344) & 761470753) | 244716435) + ((429857344 & 862030880) | 1585885407)) - (-1912977126)) ^ (1209597698 % 1200977805);
        int i4 = (((((~353056618) & 587352576) | 1209239528) + ((353056618 & 1728108930) | 1420269559)) - (-1847305937)) ^ (1896236448 % 1127167744);
        int i5 = (((((~899633766) & 123837830) | 368257288) + ((899633766 & 167810182) | 1023429240)) - 1335244442) ^ (2104001379 % 2013966848);
        int i6 = (((((~1451163042) & 1144033732) | 979119168) + ((1451163042 & 1142985108) | 17523737)) - 1635219142) ^ (1178835412 % 674426555);
        int i7 = (((((~2129768394) & 1627076842) | 1930240353) + ((2129768394 & 384997514) | 369722160)) - (-1995771891)) ^ (1450967523 % 42186306);
        zzu = new zzasa((((((~880944650) & 1717883648) | 10231720) + ((880944650 & 1718140932) | 277359766)) - 1470954277) ^ (2122533302 % 1588279465));
        zzt = new zzasa((((((~2105342203) & 63587109) | 1700430907) + ((2105342203 & 42025732) | 358031402)) - 2053339984) ^ (1059789835 % 1012707329));
        zzs = new zzasa((((((~217704412) & 144255288) | 1174857666) + ((217704412 & 1788447288) | 1667270208)) - (-1441824169)) ^ (1234644696 % 220282619));
        zzr = new zzasa(i7);
        zzq = new zzasa(i4);
        zzp = new zzasa(i5);
        zzasa zzasaVar = new zzasa(i6);
        int i8 = (((((~363159161) & 562794784) | 672605403) + ((363159161 & 25727904) | 2081572569)) - (-1616076716)) ^ (912078408 % 135177290);
        int i9 = (((((~1362243428) & 18451060) | 1179867339) + ((1362243428 & 558662325) | 550966467)) - 1623872455) ^ (1106211926 % 327305250);
        int i10 = (((((~1725362297) & 1360741300) | 1109702041) + ((1725362297 & 354116135) | 1147188355)) - (-1834394863)) ^ (1760481135 % 279527351);
        int i11 = (((((~167368542) & 67146177) | 1656237739) + ((167368542 & 1145098568) | 1113671327)) - (-1733089599)) ^ (1999038585 % 574620392);
        int i12 = (((((~1855103807) & 659964675) | 1290440236) + ((1855103807 & 588562691) | 482511980)) - 1987315200) ^ (988506952 % 614340012);
        int i13 = (((((~309667127) & 3230344) | 101519449) + ((309667127 & 607439488) | 793023522)) - 846909944) ^ (1953534826 % 1902736997);
        int i14 = (((((~682736626) & 1985796848) | 208315317) + ((682736626 & 1922324801) | 8464129)) - 2089727599) ^ (649022765 % 608034986);
        int i15 = (((((~2068224547) & 575179716) | 1587938398) + ((2068224547 & 1013484418) | 1605526586)) - (-1152499266)) ^ (1603386966 % 1010764797);
        int i16 = (((((~1281944976) & 1463473736) | 847256033) + ((1281944976 & 1698424328) | 948255187)) - (-1974214194)) ^ (1727952741 % 1091714937);
        zzo = zzasaVar;
        zzn = new zzasa(i3);
        zzm = new zzasa(i8);
        zzl = new zzasa(i9);
        zzk = new zzasa(i10);
        zzj = new zzasa(i2);
        zzi = new zzasa(i11);
        zzh = new zzasa(i12);
        zzg = new zzasa(i13);
        zzf = new zzasa(i);
        zze = new zzasa(i14);
        zzd = new zzasa(i15);
        zzc = new zzasa(i16);
        zzb = new zzasa(1);
        zza = new zzasa(0);
    }

    private /* synthetic */ zzasa(int i) {
        this.zzv = i;
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzarm zzarmVar;
        String str;
        long zzm2;
        zzasl zzaslVar;
        zzarm zzarmVar2;
        long j = 1;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        switch (this.zzv) {
                                            case 0:
                                                zzasx zzasxVar = (zzasx) obj;
                                                zzast zzastVar = zzasxVar.zzb;
                                                zzm2 = zzastVar.zzc().zzm();
                                                if (zzastVar.zzc().zzm() != 0) {
                                                    zzaslVar = zzasxVar.zzd;
                                                    zzaslVar.zza(zzm2);
                                                }
                                                return Optional.empty();
                                            case 1:
                                                try {
                                                    zzast zzastVar2 = ((zzasx) obj).zzb;
                                                    long zzm3 = zzastVar2.zzc().zzm();
                                                    zzatc zzc2 = zzastVar2.zzc();
                                                    zzatc zzc3 = zzastVar2.zzc();
                                                    List zzo2 = zzc3.zzo();
                                                    if (zzm3 < 0) {
                                                        zzm3 += zzo2.size() + 1;
                                                    }
                                                    if (zzm3 < 0 || zzm3 >= zzo2.size() + 1) {
                                                        throw new zzata();
                                                    }
                                                    zzo2.add((int) zzm3, zzc2);
                                                    zzastVar2.zzb(zzc3);
                                                    return Optional.empty();
                                                } catch (zzata unused) {
                                                    zzarmVar = zzarm.zzI;
                                                    return Optional.of(zzarmVar);
                                                }
                                            case 2:
                                                zzasx zzasxVar2 = (zzasx) obj;
                                                zzast zzastVar3 = zzasxVar2.zzb;
                                                zzm2 = zzastVar3.zzc().zzm();
                                                if (zzastVar3.zzc().zzm() == 0) {
                                                    zzaslVar = zzasxVar2.zzd;
                                                    zzaslVar.zza(zzm2);
                                                }
                                                return Optional.empty();
                                            case 3:
                                                ((zzasx) obj).zzb.zzb(zzatc.zzb(r0.zzc().zzo().size()));
                                                return Optional.empty();
                                            case 4:
                                                ((zzasx) obj).zzb.zzb(zzatc.zzb(r0.zzc().zzn().zza.length));
                                                return Optional.empty();
                                            case 5:
                                                zzast zzastVar4 = ((zzasx) obj).zzb;
                                                zzastVar4.zzb(zzatc.zzc(Math.log(zzastVar4.zzc().zzq())));
                                                return Optional.empty();
                                            case 6:
                                                zzast zzastVar5 = ((zzasx) obj).zzb;
                                                long zzm4 = zzastVar5.zzc().zzm();
                                                long zzm5 = zzastVar5.zzc().zzm();
                                                if (zzm4 == 0 || zzm5 == 0) {
                                                    j = 0;
                                                }
                                                zzastVar5.zzb(zzatc.zzb(j));
                                                return Optional.empty();
                                            case 7:
                                                zzast zzastVar6 = ((zzasx) obj).zzb;
                                                if (zzastVar6.zzc().zzm() != 0) {
                                                    j = 0;
                                                }
                                                zzastVar6.zzb(zzatc.zzb(j));
                                                return Optional.empty();
                                            case 8:
                                                zzast zzastVar7 = ((zzasx) obj).zzb;
                                                long zzm6 = zzastVar7.zzc().zzm();
                                                long zzm7 = zzastVar7.zzc().zzm();
                                                if (zzm6 == 0 && zzm7 == 0) {
                                                    j = 0;
                                                }
                                                zzastVar7.zzb(zzatc.zzb(j));
                                                return Optional.empty();
                                            case 9:
                                                zzasx zzasxVar3 = (zzasx) obj;
                                                zzast zzastVar8 = zzasxVar3.zzb;
                                                try {
                                                    int compare = new zzasy(false).compare(zzastVar8.zzc(), zzastVar8.zzc());
                                                    zzast zzastVar9 = zzasxVar3.zzb;
                                                    if (compare >= 0) {
                                                        j = 0;
                                                    }
                                                    zzastVar9.zzb(zzatc.zzb(j));
                                                    return Optional.empty();
                                                } catch (IllegalArgumentException unused2) {
                                                    return Optional.of(zzarm.zzd);
                                                }
                                            case 10:
                                                int[] iArr = {1944216249, 348137722, 926438168, 13122018, 1882968836, -1273372307, 246144337, 1723705710, 1677157265};
                                                int i = iArr[0];
                                                int i2 = iArr[1];
                                                int i3 = iArr[2];
                                                int i4 = iArr[3];
                                                int i5 = iArr[4];
                                                int i6 = iArr[5];
                                                int i7 = iArr[6];
                                                int i8 = iArr[7];
                                                int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
                                                int i10 = i8 % 1677157265;
                                                zzasx zzasxVar4 = (zzasx) obj;
                                                try {
                                                    zzast zzastVar10 = zzasxVar4.zzb;
                                                    long zzm8 = zzastVar10.zzc().zzm();
                                                    zzars zzarsVar = zzasxVar4.zza;
                                                    zzast zzastVar11 = new zzast(i10 ^ i9);
                                                    for (int i11 = 0; i11 < zzastVar10.zzb; i11++) {
                                                        try {
                                                            zzastVar11.zzb(zzatc.zzj((zzatc) zzastVar10.zza.get(i11)));
                                                        } catch (zzass e) {
                                                            throw new AssertionError(zzase.zza("CEiv6BFfPnitUE+D"), e);
                                                        }
                                                    }
                                                    zzasl zzaslVar2 = zzasxVar4.zzd;
                                                    new zzasx(zzarsVar, zzastVar11, new zzasl(zzaslVar2.zzb, zzaslVar2.zza, zzaslVar2.zzc.zzc(), zzaslVar2.zzd)).zzd.zza(zzm8);
                                                    zzastVar10.zzb(zzatc.zza(new zzasc()));
                                                    return Optional.empty();
                                                } catch (zzasj | zzask unused3) {
                                                    zzarmVar = zzarm.zzt;
                                                    return Optional.of(zzarmVar);
                                                }
                                            case 11:
                                                try {
                                                    zzast zzastVar12 = ((zzasx) obj).zzb;
                                                    zzastVar12.zzb(zzatc.zza(zzastVar12.zzc().zzi((Class) zzastVar12.zzc().zzl())));
                                                    return Optional.empty();
                                                } catch (zzasz unused4) {
                                                    zzarmVar = zzarm.zzp;
                                                    return Optional.of(zzarmVar);
                                                }
                                            case 12:
                                                zzast zzastVar13 = ((zzasx) obj).zzb;
                                                long zzm9 = zzastVar13.zzc().zzm();
                                                long zzm10 = zzastVar13.zzc().zzm();
                                                if (zzm9 == 0) {
                                                    return Optional.of(zzarm.zzF);
                                                }
                                                zzastVar13.zzb(zzatc.zzb(zzm10 % zzm9));
                                                return Optional.empty();
                                            case 13:
                                                zzast zzastVar14 = ((zzasx) obj).zzb;
                                                zzastVar14.zzb(zzatc.zzc(zzastVar14.zzc().zzq() * zzastVar14.zzc().zzq()));
                                                return Optional.empty();
                                            case 14:
                                                zzast zzastVar15 = ((zzasx) obj).zzb;
                                                zzastVar15.zzb(zzatc.zzb(zzastVar15.zzc().zzm() * zzastVar15.zzc().zzm()));
                                                return Optional.empty();
                                            case 15:
                                                zzast zzastVar16 = ((zzasx) obj).zzb;
                                                long zzm11 = zzastVar16.zzc().zzm();
                                                ArrayList arrayList = new ArrayList();
                                                for (long j2 = 0; j2 < zzm11; j2++) {
                                                    arrayList.add(zzastVar16.zzc());
                                                }
                                                Collections.reverse(arrayList);
                                                zzastVar16.zzb(zzatc.zze(arrayList));
                                                return Optional.empty();
                                            case 16:
                                                zzast zzastVar17 = ((zzasx) obj).zzb;
                                                zzastVar17.zzb(zzatc.zzc(Math.pow(zzastVar17.zzc().zzq(), zzastVar17.zzc().zzq())));
                                                return Optional.empty();
                                            case 17:
                                                ((zzasx) obj).zzb.zzb(zzatc.zza(null));
                                                return Optional.empty();
                                            case 18:
                                                zzasx zzasxVar5 = (zzasx) obj;
                                                ByteBuffer wrap = ByteBuffer.wrap(zzasxVar5.zzd.zzf((((((~1201162069L) & 403189074) | 1043752718) + ((1201162069 & 95979632) | 900760100)) - 1766798336) ^ (507611410 % 329370448)).zza());
                                                wrap.order(ByteOrder.LITTLE_ENDIAN);
                                                zzasxVar5.zzb.zzb(zzatc.zzc(Double.longBitsToDouble(wrap.getLong())));
                                                return Optional.empty();
                                            case 19:
                                                zzasx zzasxVar6 = (zzasx) obj;
                                                zzasxVar6.zzb.zzb(zzatc.zzb(zzasxVar6.zzd.zze()));
                                                return Optional.empty();
                                            default:
                                                long j3 = ((((~346030096L) & 203234088) | 575197286) + ((346030096 & 2352425736L) | 2745332883L)) - 1505840317;
                                                long j4 = 1246101662 % 372004513;
                                                long j5 = ((((~1810821955L) & 1747262537) | 563863662) + ((1810821955 & 1295301633) | 94020008)) - 1690999106;
                                                long j6 = 1675644664 % 749217043;
                                                zzasx zzasxVar7 = (zzasx) obj;
                                                zzasl zzaslVar3 = zzasxVar7.zzd;
                                                str = "CEiv6BFfPnitUE+D";
                                                try {
                                                    long zze2 = zzaslVar3.zze();
                                                    if (zze2 >= 0 && zze2 <= (j3 ^ j4)) {
                                                        if (((j5 ^ j6) & zze2) != 0) {
                                                            zzarmVar2 = zzarm.zze;
                                                            return Optional.of(zzarmVar2);
                                                        }
                                                        zzasxVar7.zzb.zzb(zzatc.zzd(zzaslVar3.zzf(zze2)));
                                                        return Optional.empty();
                                                    }
                                                    zzarmVar2 = zzarm.zzz;
                                                    return Optional.of(zzarmVar2);
                                                } catch (zzasj e2) {
                                                    e = e2;
                                                    throw new AssertionError(zzase.zza(str), e);
                                                }
                                        }
                                    } catch (zzasj e3) {
                                        e = e3;
                                        str = "CEiv6BFfPnitUE+D";
                                        throw new AssertionError(zzase.zza(str), e);
                                    }
                                } catch (zzasj | zzask unused5) {
                                    zzarmVar = zzarm.zzi;
                                }
                            } catch (zzask unused6) {
                                zzarmVar = zzarm.zzz;
                            }
                        } catch (zzass unused7) {
                            zzarmVar = zzarm.zza;
                        }
                    } catch (zzass e4) {
                        e = e4;
                        str = "CEiv6BFfPnitUE+D";
                        throw new AssertionError(zzase.zza(str), e);
                    }
                } catch (zzasi unused8) {
                    zzarmVar = zzarm.zzD;
                }
            } catch (zzasz unused9) {
                zzarmVar = zzarm.zzy;
            }
        } catch (zzasr unused10) {
            zzarmVar = zzarm.zzx;
        }
    }
}
