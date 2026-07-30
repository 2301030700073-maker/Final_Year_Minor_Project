package defpackage;

import java.util.concurrent.TimeUnit;

/* renamed from: of, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC3460of {
    NANOSECONDS(TimeUnit.NANOSECONDS),
    /* JADX INFO: Fake field, exist only in values array */
    MICROSECONDS(TimeUnit.MICROSECONDS),
    MILLISECONDS(TimeUnit.MILLISECONDS),
    SECONDS(TimeUnit.SECONDS),
    MINUTES(TimeUnit.MINUTES),
    HOURS(TimeUnit.HOURS),
    DAYS(TimeUnit.DAYS);


    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeUnit f14822do;

    EnumC3460of(TimeUnit timeUnit) {
        this.f14822do = timeUnit;
    }
}
