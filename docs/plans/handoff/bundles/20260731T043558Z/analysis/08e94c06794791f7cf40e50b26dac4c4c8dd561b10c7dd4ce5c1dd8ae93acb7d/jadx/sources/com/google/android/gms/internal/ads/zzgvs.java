package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgvs implements zzgwf {
    private static final Charset zza = Charset.forName("UTF-8");
    private final InputStream zzb;

    private zzgvs(InputStream inputStream) {
        this.zzb = inputStream;
    }

    public static zzgvs zza(String str) {
        return new zzgvs(new ByteArrayInputStream(str.getBytes(zza)));
    }

    private static int zzc(zzhtg zzhtgVar) throws IOException {
        if (!(zzhtgVar instanceof zzhtk)) {
            throw new IOException("invalid key id: not a JSON primitive");
        }
        if (!zzhtgVar.zzg().zzc()) {
            throw new IOException("invalid key id: not a JSON number");
        }
        try {
            long zzc = zzhdv.zzc(zzhtgVar.zzg().zzh());
            if (zzc > BodyPartID.bodyIdMax || zzc < -2147483648L) {
                throw new IOException("invalid key id");
            }
            return (int) zzc;
        } catch (NumberFormatException e) {
            throw new IOException(e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzgwf
    public final zzhlg zzb() throws IOException {
        char c;
        int i;
        char c2;
        zzhlt zzhltVar;
        char c3;
        zzhkw zzhkwVar;
        String str = "status";
        String str2 = "keyData";
        try {
            try {
                InputStream inputStream = this.zzb;
                int i2 = zzgwq.zza;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    InputStream inputStream2 = inputStream;
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                    inputStream = inputStream2;
                }
                zzhti zze = zzhdv.zzb(new String(byteArrayOutputStream.toByteArray(), zza)).zze();
                if (!zze.zzc(SDKConstants.PARAM_KEY)) {
                    throw new zzhtj("invalid keyset: no key");
                }
                zzhtg zzh = zze.zzh(SDKConstants.PARAM_KEY);
                if (!(zzh instanceof zzhtf)) {
                    throw new zzhtj("invalid keyset: key must be an array");
                }
                zzhtf zzf = zzh.zzf();
                if (zzf.zzb() == 0) {
                    throw new zzhtj("invalid keyset: key is empty");
                }
                zzhld zzh2 = zzhlg.zzh();
                if (zze.zzc("primaryKeyId")) {
                    zzh2.zza(zzc(zze.zzh("primaryKeyId")));
                }
                int i3 = 0;
                while (i3 < zzf.zzb()) {
                    zzhti zze2 = zzf.zzc(i3).zze();
                    if (!zze2.zzc(str2) || !zze2.zzc(str) || !zze2.zzc("keyId") || !zze2.zzc("outputPrefixType")) {
                        throw new zzhtj("invalid key");
                    }
                    zzhtg zzh3 = zze2.zzh(str2);
                    if (!(zzh3 instanceof zzhti)) {
                        throw new zzhtj("invalid key: keyData must be an object");
                    }
                    zzhle zze3 = zzhlf.zze();
                    String zzd = zze2.zzh(str).zzd();
                    String str3 = str;
                    int hashCode = zzd.hashCode();
                    String str4 = str2;
                    zzhtf zzhtfVar = zzf;
                    if (hashCode == -891611359) {
                        if (zzd.equals("ENABLED")) {
                            c = 0;
                        }
                        c = 65535;
                    } else if (hashCode != 478389753) {
                        if (hashCode == 1053567612 && zzd.equals("DISABLED")) {
                            c = 1;
                        }
                        c = 65535;
                    } else {
                        if (zzd.equals("DESTROYED")) {
                            c = 2;
                        }
                        c = 65535;
                    }
                    if (c == 0) {
                        i = 3;
                    } else if (c == 1) {
                        i = 4;
                    } else {
                        if (c != 2) {
                            String.valueOf(zzd);
                            throw new zzhtj("unknown status: ".concat(String.valueOf(zzd)));
                        }
                        i = 5;
                    }
                    zze3.zze(i);
                    zze3.zzc(zzc(zze2.zzh("keyId")));
                    String zzd2 = zze2.zzh("outputPrefixType").zzd();
                    switch (zzd2.hashCode()) {
                        case -2053249079:
                            if (zzd2.equals("LEGACY")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 80904:
                            if (zzd2.equals("RAW")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 2575090:
                            if (zzd2.equals("TINK")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1761684556:
                            if (zzd2.equals("CRUNCHY")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 == 0) {
                        zzhltVar = zzhlt.TINK;
                    } else if (c2 == 1) {
                        zzhltVar = zzhlt.RAW;
                    } else if (c2 == 2) {
                        zzhltVar = zzhlt.LEGACY;
                    } else {
                        if (c2 != 3) {
                            String.valueOf(zzd2);
                            throw new zzhtj("unknown output prefix type: ".concat(String.valueOf(zzd2)));
                        }
                        zzhltVar = zzhlt.CRUNCHY;
                    }
                    zze3.zzd(zzhltVar);
                    zzhti zze4 = zzh3.zze();
                    if (!zze4.zzc("typeUrl") || !zze4.zzc("value") || !zze4.zzc("keyMaterialType")) {
                        throw new zzhtj("invalid keyData");
                    }
                    byte[] zza2 = zzhrl.zza(zze4.zzh("value").zzd(), 2);
                    zzhkv zzd3 = zzhkx.zzd();
                    zzd3.zza(zze4.zzh("typeUrl").zzd());
                    zzhvi zzhviVar = zzhvi.zzb;
                    zzd3.zzb(zzhvi.zzr(zza2, 0, zza2.length));
                    String zzd4 = zze4.zzh("keyMaterialType").zzd();
                    switch (zzd4.hashCode()) {
                        case -1881281466:
                            if (zzd4.equals("REMOTE")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1609477353:
                            if (zzd4.equals("SYMMETRIC")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 249237018:
                            if (zzd4.equals("ASYMMETRIC_PRIVATE")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 1534613202:
                            if (zzd4.equals("ASYMMETRIC_PUBLIC")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    if (c3 == 0) {
                        zzhkwVar = zzhkw.SYMMETRIC;
                    } else if (c3 == 1) {
                        zzhkwVar = zzhkw.ASYMMETRIC_PRIVATE;
                    } else if (c3 == 2) {
                        zzhkwVar = zzhkw.ASYMMETRIC_PUBLIC;
                    } else {
                        if (c3 != 3) {
                            String.valueOf(zzd4);
                            throw new zzhtj("unknown key material type: ".concat(String.valueOf(zzd4)));
                        }
                        zzhkwVar = zzhkw.REMOTE;
                    }
                    zzd3.zzc(zzhkwVar);
                    zze3.zza((zzhkx) zzd3.zzbu());
                    zzh2.zzb((zzhlf) zze3.zzbu());
                    i3++;
                    str = str3;
                    str2 = str4;
                    zzf = zzhtfVar;
                }
                return (zzhlg) zzh2.zzbu();
            } finally {
                this.zzb.close();
            }
        } catch (zzhtj | IllegalStateException e) {
            throw new IOException(e);
        }
    }
}
