package com.google.android.gms.internal.ads;

import io.sentry.profilemeasurements.ProfileMeasurement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Optional;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzarz implements zzasu {
    public static final /* synthetic */ zzarz zza;
    public static final /* synthetic */ zzarz zzb;
    public static final /* synthetic */ zzarz zzc;
    public static final /* synthetic */ zzarz zzd;
    public static final /* synthetic */ zzarz zze;
    public static final /* synthetic */ zzarz zzf;
    public static final /* synthetic */ zzarz zzg;
    public static final /* synthetic */ zzarz zzh;
    public static final /* synthetic */ zzarz zzi;
    public static final /* synthetic */ zzarz zzj;
    public static final /* synthetic */ zzarz zzk;
    public static final /* synthetic */ zzarz zzl;
    public static final /* synthetic */ zzarz zzm;
    public static final /* synthetic */ zzarz zzn;
    public static final /* synthetic */ zzarz zzo;
    public static final /* synthetic */ zzarz zzp;
    public static final /* synthetic */ zzarz zzq;
    public static final /* synthetic */ zzarz zzr;
    public static final /* synthetic */ zzarz zzs;
    public static final /* synthetic */ zzarz zzt;
    public static final /* synthetic */ zzarz zzu;
    private final /* synthetic */ int zzv;

    static {
        int i = (((((~1272469786) & 1097507524) | 723881402) + ((1272469786 & 1078604356) | 746642480)) - (-1830851820)) ^ (1544617505 % 243268139);
        int i2 = (((((~1722060049) & 1087578905) | 70644109) + ((1722060049 & 1625428690) | 673239279)) - 1747544094) ^ (860516127 % 777720504);
        int i3 = (((((~168057522) & 567809569) | 2007585082) + ((168057522 & 1112917761) | 1200484666)) - (-1753249985)) ^ (1761250573 % 1089653714);
        int i4 = (((((~386839851) & 502322088) | 1879579687) + ((386839851 & 1341449096) | 1376723987)) - (-1804183292)) ^ (2118801173 % 1119399015);
        int i5 = (((((~627992393) & 399075139) | 1263590114) + ((627992393 & 1418280193) | 1644468862)) - (-1502362592)) ^ (1449228398 % 989241888);
        int i6 = (((((~1687776787) & 1627592001) | 771768986) + ((1687776787 & 1226806633) | 136094264)) - 1910482017) ^ (992028067 % 180785147);
        int i7 = (((((~1111088131) & 1881672142) | 1222111317) + ((1111088131 & 807995786) | 38123124)) - 1508183881) ^ (1348361729 % 788380902);
        zzu = new zzarz((((((~636453333) & 363983206) | 1075208291) + ((636453333 & 2146013964) | 1783382730)) - (-1139191409)) ^ (1564003050 % 99885196));
        zzt = new zzarz((((((~338346092) & 646267944) | 2030210865) + ((338346092 & 109431182) | 1768591350)) - (-956795148)) ^ (1912163036 % 671068506));
        zzs = new zzarz((((((~1374600938) & 269492393) | 962980710) + ((1374600938 & (-2079309685)) | (-1096234186))) - (-724963331)) ^ (1587992726 % 995234140));
        zzr = new zzarz(i7);
        zzq = new zzarz(i4);
        zzp = new zzarz(i5);
        zzarz zzarzVar = new zzarz(i6);
        int i8 = (((((~406011017) & 1269108768) | 73167649) + ((406011017 & 2074166272) | 872470299)) - 1878158194) ^ (1615935710 % 639806732);
        int i9 = (((((~257675105) & 286888065) | 1680106172) + ((257675105 & 353998857) | 216033710)) - (-2120570644)) ^ (2033505236 % 29777560);
        int i10 = (((((~2137100237) & 243279585) | 1476690352) + ((2137100237 & 1182836297) | 1215531406)) - (-1785612177)) ^ (1251300606 % 959372260);
        int i11 = (((((~1280321648) & 1509448282) | 1074834725) + ((1280321648 & 434689663) | 67544101)) - 1396684682) ^ (1309383303 % 1129033333);
        int i12 = (((((~1635905385) & 436500164) | 1627617040) + ((1635905385 & 1527677388) | 1092341018)) - (-1251599253)) ^ (1253207672 % 570073850);
        int i13 = (((((~2058657199) & 1077280871) | 426331554) + ((2058657199 & 1242960213) | 260153146)) - 1453981149) ^ (711845894 % 404158660);
        int i14 = (((((~2077486715) & 1348527492) | 196553360) + ((2077486715 & 1547749134) | 218380923)) - 1621461405) ^ (1713258270 % 1573363368);
        int i15 = (((((~1194953865) & 541827704) | 1410336387) + ((1194953865 & 676044922) | 221517442)) - 2090845028) ^ (485560280 % 402724286);
        int i16 = (((((~1424268980) & 433259076) | 136627722) + ((1424268980 & 299303110) | 33824130)) - 448747429) ^ (1129566413 % 184803526);
        zzo = zzarzVar;
        zzn = new zzarz(i3);
        zzm = new zzarz(i8);
        zzl = new zzarz(i9);
        zzk = new zzarz(i10);
        zzj = new zzarz(i2);
        zzi = new zzarz(i11);
        zzh = new zzarz(i12);
        zzg = new zzarz(i13);
        zzf = new zzarz(i);
        zze = new zzarz(i14);
        zzd = new zzarz(i15);
        zzc = new zzarz(i16);
        zzb = new zzarz(1);
        zza = new zzarz(0);
    }

    private /* synthetic */ zzarz(int i) {
        this.zzv = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        zzarm zzarmVar;
        zzast zzastVar;
        zzatc zzb2;
        zzast zzastVar2;
        zzatc zzb3;
        zzast zzastVar3;
        zzatc zzb4;
        zzast zzastVar4;
        zzatc zza2;
        zzarm zzarmVar2;
        zzast zzastVar5;
        zzatc zzj2;
        Class<?> cls;
        zzarm zzarmVar3;
        long j = 1;
        int i = 0;
        try {
            try {
                try {
                    try {
                        switch (this.zzv) {
                            case 0:
                                zzastVar = ((zzasx) obj).zzb;
                                zzb2 = zzatc.zzb(zzastVar.zzc().zzm() + zzastVar.zzc().zzm());
                                zzastVar.zzb(zzb2);
                                return Optional.empty();
                            case 1:
                                zzastVar = ((zzasx) obj).zzb;
                                zzb2 = zzatc.zzc(zzastVar.zzc().zzq() + zzastVar.zzc().zzq());
                                zzastVar.zzb(zzb2);
                                return Optional.empty();
                            case 2:
                                zzastVar = ((zzasx) obj).zzb;
                                zzb2 = zzatc.zzd(zzastVar.zzc().zzn().zzd(zzastVar.zzc().zzn()));
                                zzastVar.zzb(zzb2);
                                return Optional.empty();
                            case 3:
                                zzasx zzasxVar = (zzasx) obj;
                                try {
                                    long zze2 = zzasxVar.zzd.zze();
                                    for (long j2 = 0; j2 < zze2; j2++) {
                                        zzasxVar.zzb.zzb(zzatc.zza(null));
                                    }
                                    return Optional.empty();
                                } catch (zzass unused) {
                                    zzarmVar = zzarm.zza;
                                    return Optional.of(zzarmVar);
                                }
                            case 4:
                                zzastVar2 = ((zzasx) obj).zzb;
                                zzb3 = zzatc.zzb(zzastVar2.zzc().zzm() & zzastVar2.zzc().zzm());
                                zzastVar2.zzb(zzb3);
                                return Optional.empty();
                            case 5:
                                long[] jArr = {916768482, 1259538933, 805446160, -15648283, -1266372608, 883303887, 6538657, 384868448, 102194872};
                                long j3 = jArr[0];
                                long j4 = jArr[1];
                                long j5 = jArr[2];
                                long j6 = jArr[3];
                                long j7 = jArr[4];
                                long j8 = jArr[5];
                                long j9 = jArr[6];
                                long j10 = jArr[7];
                                long j11 = j9 + (((((~j3) & j4) | j5) + ((j3 & j6) | j7)) - j8);
                                long j12 = j10 % 102194872;
                                zzastVar2 = ((zzasx) obj).zzb;
                                zzb3 = zzatc.zzb(zzastVar2.zzc().zzm() ^ (j11 ^ j12));
                                zzastVar2.zzb(zzb3);
                                return Optional.empty();
                            case 6:
                                zzastVar3 = ((zzasx) obj).zzb;
                                zzb4 = zzatc.zzb(zzastVar3.zzc().zzm() | zzastVar3.zzc().zzm());
                                zzastVar3.zzb(zzb4);
                                return Optional.empty();
                            case 7:
                                zzastVar3 = ((zzasx) obj).zzb;
                                zzb4 = zzatc.zzb(zzastVar3.zzc().zzm() ^ zzastVar3.zzc().zzm());
                                zzastVar3.zzb(zzb4);
                                return Optional.empty();
                            case 8:
                                zzasx zzasxVar2 = (zzasx) obj;
                                try {
                                    long zzm2 = zzasxVar2.zzb.zzc().zzm();
                                    zzasq zzasqVar = zzasxVar2.zzc;
                                    zzasl zzaslVar = zzasxVar2.zzd;
                                    zzasqVar.zza(zzaslVar.zzb(), 0L, r2.zzb);
                                    zzaslVar.zza(zzm2);
                                    return Optional.empty();
                                } catch (zzasj | zzask unused2) {
                                    zzarmVar = zzarm.zzr;
                                    return Optional.of(zzarmVar);
                                } catch (zzaso unused3) {
                                    zzarmVar = zzarm.zzB;
                                    return Optional.of(zzarmVar);
                                }
                            case 9:
                                zzasx zzasxVar3 = (zzasx) obj;
                                try {
                                    zzast zzastVar6 = zzasxVar3.zzb;
                                    long zzm3 = zzastVar6.zzc().zzm();
                                    List zzo2 = zzastVar6.zzc().zzo();
                                    int size = zzo2.size();
                                    Object zzh2 = zzastVar6.zzc().zzh();
                                    Object zzl2 = zzastVar6.zzc().zzl();
                                    if (zzl2 instanceof Method) {
                                        Method method = (Method) zzl2;
                                        Class<?>[] parameterTypes = method.getParameterTypes();
                                        if (parameterTypes.length == size) {
                                            Object[] objArr = new Object[size];
                                            if (zzh2 instanceof Constructor) {
                                                Class<?>[] parameterTypes2 = ((Constructor) zzh2).getParameterTypes();
                                                int length = parameterTypes2.length;
                                                Object[] objArr2 = new Object[length];
                                                List zzo3 = ((zzatc) zzo2.get(0)).zzo();
                                                if (zzo3.size() == length) {
                                                    for (int i2 = 0; i2 < zzo3.size(); i2++) {
                                                        objArr2[i2] = ((zzatc) zzo3.get(i2)).zzi(parameterTypes2[i2]);
                                                    }
                                                    objArr[0] = objArr2;
                                                }
                                            } else {
                                                while (i < size) {
                                                    objArr[i] = ((zzatc) zzo2.get(i)).zzi(parameterTypes[i]);
                                                    i++;
                                                }
                                            }
                                            try {
                                                Object invoke = method.invoke(zzh2, objArr);
                                                if (method.getReturnType() == Void.class || method.getReturnType() == Void.TYPE) {
                                                    zzastVar4 = zzasxVar3.zzb;
                                                    zza2 = zzatc.zza(null);
                                                } else if (zzm3 != 0) {
                                                    zzastVar4 = zzasxVar3.zzb;
                                                    zza2 = zzatc.zzg(invoke);
                                                } else {
                                                    zzastVar4 = zzasxVar3.zzb;
                                                    zza2 = zzatc.zza(invoke);
                                                }
                                                zzastVar4.zzb(zza2);
                                                return Optional.empty();
                                            } catch (Throwable unused4) {
                                                zzarmVar = zzarm.zzq;
                                                return Optional.of(zzarmVar);
                                            }
                                        }
                                    }
                                    return Optional.of(zzarm.zzp);
                                } catch (zzasz unused5) {
                                    zzarmVar = zzarm.zzp;
                                }
                                break;
                            case 10:
                                int i3 = ((((~2084546560) & 73475461) | 438076064) + ((2084546560 & 611428101) | 2023412224)) - (-1830321789);
                                int i4 = 1073781763 % 1003463633;
                                int i5 = ((((~461273879) & 107429921) | 378966045) + ((461273879 & 283197472) | 1937909388)) - 2133058944;
                                int i6 = 1917305981 % 575705360;
                                zzasx zzasxVar4 = (zzasx) obj;
                                zzast zzastVar7 = zzasxVar4.zzb;
                                int intExact = Math.toIntExact(zzastVar7.zzc().zzm());
                                zzasg zzn2 = zzastVar7.zzc().zzn();
                                zzasg zzn3 = zzastVar7.zzc().zzn();
                                if (zzn2.zza.length != (i3 ^ i4)) {
                                    return Optional.of(zzarm.zzH);
                                }
                                int[] iArr = new int[i5 ^ i6];
                                ByteBuffer.wrap(zzn2.zza()).asIntBuffer().get(iArr);
                                zzary zzaryVar = new zzary(intExact, iArr);
                                int i7 = ((((~1183912267) & 781500673) | 1683555012) + ((1183912267 & 180666625) | 541077750)) - (-1949988574);
                                int i8 = 1527793660 % 245277883;
                                int i9 = ((((~95266356) & 568641509) | 183483904) + ((95266356 & 553669093) | 504469010)) - 874379764;
                                int i10 = 2026478004 % 1659239833;
                                byte[] zza3 = zzn3.zza();
                                int i11 = (((((~1787189168) & 1360184381) | 611517270) + ((1787189168 & 1426637867) | 612056018)) - 1771476931) ^ (1821115873 % 1010014811);
                                byte[] bArr = new byte[i11];
                                int i12 = 0;
                                while (i12 < zza3.length) {
                                    if (i12 % i11 != 0) {
                                        if (i12 == 0) {
                                            i12 = 0;
                                        } else {
                                            int i13 = i9 ^ i10;
                                            zza3[i12] = (byte) (((zza3[i12] ^ bArr[i12 % i11]) << i13) >> i13);
                                            i12++;
                                        }
                                    }
                                    zzaryVar.zza(i12 >>> (i7 ^ i8), bArr);
                                    int i132 = i9 ^ i10;
                                    zza3[i12] = (byte) (((zza3[i12] ^ bArr[i12 % i11]) << i132) >> i132);
                                    i12++;
                                }
                                zzasg zze3 = zzasg.zze(zza3);
                                zzastVar4 = zzasxVar4.zzb;
                                zza2 = zzatc.zzd(zze3);
                                zzastVar4.zzb(zza2);
                                return Optional.empty();
                            case 11:
                                zzastVar3 = ((zzasx) obj).zzb;
                                double zzq2 = zzastVar3.zzc().zzq();
                                double zzq3 = zzastVar3.zzc().zzq();
                                if (zzq2 == 0.0d) {
                                    zzarmVar2 = zzarm.zzF;
                                    return Optional.of(zzarmVar2);
                                }
                                zzb4 = zzatc.zzc(zzq3 / zzq2);
                                zzastVar3.zzb(zzb4);
                                return Optional.empty();
                            case 12:
                                zzastVar3 = ((zzasx) obj).zzb;
                                long zzm4 = zzastVar3.zzc().zzm();
                                long zzm5 = zzastVar3.zzc().zzm();
                                if (zzm4 == 0) {
                                    zzarmVar2 = zzarm.zzF;
                                    return Optional.of(zzarmVar2);
                                }
                                zzb4 = zzatc.zzb(zzm5 / zzm4);
                                zzastVar3.zzb(zzb4);
                                return Optional.empty();
                            case 13:
                                try {
                                    ((zzasx) obj).zzb.zzc();
                                    return Optional.empty();
                                } catch (zzasr unused6) {
                                    zzarmVar = zzarm.zzA;
                                    return Optional.of(zzarmVar);
                                }
                            case 14:
                                zzasx zzasxVar5 = (zzasx) obj;
                                long zzm6 = zzasxVar5.zzb.zzc().zzm();
                                zzast zzastVar8 = zzasxVar5.zzb;
                                zzastVar8.zzb(zzatc.zzj(zzastVar8.zzd(zzm6)));
                                return Optional.empty();
                            case 15:
                                zzasx zzasxVar6 = (zzasx) obj;
                                long zzm7 = zzasxVar6.zzc.zzb().zzb + zzasxVar6.zzb.zzc().zzm();
                                zzastVar5 = zzasxVar6.zzb;
                                zzj2 = zzatc.zzj(zzastVar5.zzd(-zzm7));
                                zzastVar5.zzb(zzj2);
                                return Optional.empty();
                            case 16:
                                zzasx zzasxVar7 = (zzasx) obj;
                                long zze4 = zzasxVar7.zzc.zzb().zzb + zzasxVar7.zzd.zze();
                                zzastVar5 = zzasxVar7.zzb;
                                zzj2 = zzatc.zzj(zzastVar5.zzd(-zze4));
                                zzastVar5.zzb(zzj2);
                                return Optional.empty();
                            case 17:
                                try {
                                    zzast zzastVar9 = ((zzasx) obj).zzb;
                                    if (new zzasy(true).compare(zzastVar9.zzc(), zzastVar9.zzc()) != 0) {
                                        j = 0;
                                    }
                                    zzastVar9.zzb(zzatc.zzb(j));
                                    return Optional.empty();
                                } catch (IllegalArgumentException unused7) {
                                    zzarmVar = zzarm.zzd;
                                    return Optional.of(zzarmVar);
                                }
                            case 18:
                                try {
                                    zzast zzastVar10 = ((zzasx) obj).zzb;
                                    String zzc2 = zzastVar10.zzc().zzn().zzc();
                                    switch (zzc2.hashCode()) {
                                        case -1325958191:
                                            if (zzc2.equals("double")) {
                                                cls = Double.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 104431:
                                            if (zzc2.equals("int")) {
                                                cls = Integer.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 3039496:
                                            if (zzc2.equals(ProfileMeasurement.UNIT_BYTES)) {
                                                cls = Byte.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 3052374:
                                            if (zzc2.equals("char")) {
                                                cls = Character.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 3327612:
                                            if (zzc2.equals("long")) {
                                                cls = Long.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 3625364:
                                            if (zzc2.equals("void")) {
                                                cls = Void.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 64711720:
                                            if (zzc2.equals("boolean")) {
                                                cls = Boolean.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 97526364:
                                            if (zzc2.equals("float")) {
                                                cls = Float.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        case 109413500:
                                            if (zzc2.equals("short")) {
                                                cls = Short.TYPE;
                                                break;
                                            }
                                            cls = Class.forName(zzc2);
                                            break;
                                        default:
                                            cls = Class.forName(zzc2);
                                            break;
                                    }
                                    zzastVar10.zzb(zzatc.zza(cls));
                                    return Optional.empty();
                                } catch (zzasz unused8) {
                                    zzarmVar = zzarm.zzl;
                                    return Optional.of(zzarmVar);
                                } catch (ClassNotFoundException unused9) {
                                    zzarmVar = zzarm.zzm;
                                    return Optional.of(zzarmVar);
                                }
                            case 19:
                                try {
                                    zzast zzastVar11 = ((zzasx) obj).zzb;
                                    List zzo4 = zzastVar11.zzc().zzo();
                                    Class<?>[] clsArr = new Class[zzo4.size()];
                                    while (true) {
                                        if (i >= zzo4.size()) {
                                            String zzc3 = zzastVar11.zzc().zzn().zzc();
                                            Object zzl3 = zzastVar11.zzc().zzl();
                                            if (zzl3 instanceof Class) {
                                                zzastVar11.zzb(zzatc.zza(((Class) zzl3).getMethod(zzc3, clsArr)));
                                                break;
                                            } else {
                                                zzarmVar3 = zzarm.zzn;
                                            }
                                        } else {
                                            Object zzl4 = ((zzatc) zzo4.get(i)).zzl();
                                            if (zzl4 instanceof Class) {
                                                clsArr[i] = (Class) zzl4;
                                                i++;
                                            } else {
                                                zzarmVar3 = zzarm.zzn;
                                            }
                                        }
                                    }
                                    return Optional.of(zzarmVar3);
                                } catch (zzasz unused10) {
                                    zzarmVar = zzarm.zzn;
                                    return Optional.of(zzarmVar);
                                } catch (NoSuchMethodException unused11) {
                                    zzarmVar = zzarm.zzo;
                                    return Optional.of(zzarmVar);
                                } catch (SecurityException unused12) {
                                    zzarmVar = zzarm.zzC;
                                    return Optional.of(zzarmVar);
                                }
                            default:
                                int i14 = ((((~306851320) & 2040670728) | 1372152390) + ((306851320 & (-1473639347)) | (-2036492681))) - 244167092;
                                int i15 = 1764892438 % 764851988;
                                zzast zzastVar12 = ((zzasx) obj).zzb;
                                long zzm8 = zzastVar12.zzc().zzm();
                                zzatc zzc4 = zzastVar12.zzc();
                                zzatc zzc5 = zzastVar12.zzc();
                                int i16 = zzc5.zza;
                                int i17 = (i14 ^ i15) + i16;
                                if (i16 == 0) {
                                    throw null;
                                }
                                if (i17 == 3) {
                                    zzasg zzn4 = zzc5.zzn();
                                    int i18 = ((((~284327308) & 44384696) | 1708231444) + ((284327308 & 1647591593) | 1951966997)) - (-1088446899);
                                    int i19 = 2085308422 % 531900034;
                                    if (zzm8 < 0) {
                                        zzm8 += zzn4.zza.length;
                                    }
                                    if (zzc4.zza != (i18 ^ i19)) {
                                        throw new zzasz();
                                    }
                                    if (zzm8 >= 0 && zzm8 < zzn4.zza.length) {
                                        char charAt = zzn4.zzc().charAt((int) zzm8);
                                        StringBuilder sb = new StringBuilder(String.valueOf(charAt).length());
                                        sb.append(charAt);
                                        zzc4 = zzatc.zzd(zzasg.zzf(sb.toString()));
                                    }
                                } else {
                                    if (i17 != 4) {
                                        throw new zzasz();
                                    }
                                    List zzo5 = zzc5.zzo();
                                    if (zzm8 < 0) {
                                        zzm8 += zzo5.size();
                                    }
                                    if (zzm8 >= 0 && zzm8 < zzo5.size()) {
                                        zzc4 = (zzatc) zzo5.get((int) zzm8);
                                    }
                                }
                                zzastVar12.zzb(zzc4);
                                return Optional.empty();
                        }
                    } catch (zzasi | zzask | zzasz unused13) {
                        zzarmVar = zzarm.zzy;
                    }
                } catch (zzass e) {
                    throw new AssertionError(zzase.zza("CEiv6BFfPnitUE+D"), e);
                }
            } catch (zzasp | zzasr unused14) {
                zzarmVar = zzarm.zzx;
            }
        } catch (zzasr unused15) {
            zzarmVar = zzarm.zzf;
        }
    }
}
