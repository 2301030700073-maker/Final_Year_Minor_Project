package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.auto.value.AutoValue;

@AutoValue
/* renamed from: Ag, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0099Ag {

    /* renamed from: do, reason: not valid java name */
    public static final X3 f120do;

    static {
        Long l = 10485760L;
        Integer num = 200;
        Integer num2 = 10000;
        Long l2 = 604800000L;
        Integer num3 = 81920;
        String str = l == null ? " maxStorageSizeInBytes" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (num == null) {
            str = str.concat(" loadBatchSize");
        }
        if (num2 == null) {
            str = Cpublic.m7816case(str, " criticalSectionEnterTimeoutMs");
        }
        if (l2 == null) {
            str = Cpublic.m7816case(str, " eventCleanUpAge");
        }
        if (num3 == null) {
            str = Cpublic.m7816case(str, " maxBlobByteSizePerRow");
        }
        if (!str.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(str));
        }
        f120do = new X3(l.longValue(), num.intValue(), num2.intValue(), l2.longValue(), num3.intValue());
    }

    /* renamed from: do, reason: not valid java name */
    public abstract int mo83do();

    /* renamed from: for, reason: not valid java name */
    public abstract int mo84for();

    /* renamed from: if, reason: not valid java name */
    public abstract long mo85if();

    /* renamed from: new, reason: not valid java name */
    public abstract int mo86new();

    /* renamed from: try, reason: not valid java name */
    public abstract long mo87try();
}
