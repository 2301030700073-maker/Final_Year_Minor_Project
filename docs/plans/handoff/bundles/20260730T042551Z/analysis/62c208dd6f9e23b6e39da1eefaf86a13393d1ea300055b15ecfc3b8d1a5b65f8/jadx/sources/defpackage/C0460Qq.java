package defpackage;

/* renamed from: Qq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0460Qq {

    /* renamed from: do, reason: not valid java name */
    public final long f3046do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f3047do;

    /* renamed from: Qq$do, reason: invalid class name */
    public enum Cdo implements InterfaceC2840gy {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);


        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final int f3056for;

        Cdo(int i) {
            this.f3056for = i;
        }

        @Override // defpackage.InterfaceC2840gy
        /* renamed from: do, reason: not valid java name */
        public final int mo1993do() {
            return this.f3056for;
        }
    }

    public C0460Qq(long j, Cdo cdo) {
        this.f3046do = j;
        this.f3047do = cdo;
    }
}
