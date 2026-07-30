package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class My {

    /* renamed from: do, reason: not valid java name */
    public final long f2276do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeUnit f2277do;

    /* renamed from: if, reason: not valid java name */
    public final long f2278if;

    /* renamed from: My$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f2279do;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f2279do = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2279do[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2279do[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public My(long j, long j2, TimeUnit timeUnit) {
        this.f2276do = j;
        this.f2278if = j2;
        this.f2277do = timeUnit;
    }
}
