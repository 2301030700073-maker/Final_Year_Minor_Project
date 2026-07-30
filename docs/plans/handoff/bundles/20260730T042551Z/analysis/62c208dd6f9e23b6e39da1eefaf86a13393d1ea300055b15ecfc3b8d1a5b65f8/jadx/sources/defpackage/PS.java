package defpackage;

import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzs;

/* loaded from: classes3.dex */
public final /* synthetic */ class PS {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int[] f2786do;

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int[] f2787for;

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ int[] f2788if;

    static {
        int[] iArr = new int[zzfr.zza.zzd.values().length];
        f2787for = iArr;
        try {
            iArr[zzfr.zza.zzd.DENIED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f2787for[zzfr.zza.zzd.GRANTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[zzfr.zza.zze.values().length];
        f2788if = iArr2;
        try {
            iArr2[zzfr.zza.zze.AD_STORAGE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f2788if[zzfr.zza.zze.ANALYTICS_STORAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f2788if[zzfr.zza.zze.AD_USER_DATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f2788if[zzfr.zza.zze.AD_PERSONALIZATION.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr3 = new int[zzs.values().length];
        f2786do = iArr3;
        try {
            iArr3[zzs.DEBUG.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f2786do[zzs.ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f2786do[zzs.WARN.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f2786do[zzs.VERBOSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
