package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes3.dex */
public final class RU {

    /* renamed from: do, reason: not valid java name */
    public long f3185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f3186do;

    public RU(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.f3186do = clock;
    }
}
