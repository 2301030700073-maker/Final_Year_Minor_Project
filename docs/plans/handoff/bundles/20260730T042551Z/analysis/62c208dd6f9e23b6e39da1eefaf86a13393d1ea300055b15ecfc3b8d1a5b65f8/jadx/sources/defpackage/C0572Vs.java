package defpackage;

/* renamed from: Vs, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0572Vs {

    /* renamed from: case, reason: not valid java name */
    public final String f4205case;

    /* renamed from: do, reason: not valid java name */
    public final int f4206do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f4207do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f4208do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f4209do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f4210do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f4211do;

    /* renamed from: else, reason: not valid java name */
    public final String f4212else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f4214for;

    /* renamed from: if, reason: not valid java name */
    public final int f4215if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f4217if;

    /* renamed from: new, reason: not valid java name */
    public final String f4218new;

    /* renamed from: try, reason: not valid java name */
    public final String f4219try;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f4216if = 0;

    /* renamed from: for, reason: not valid java name */
    public final long f4213for = 0;

    /* renamed from: Vs$do, reason: invalid class name */
    public enum Cdo implements InterfaceC2840gy {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        /* JADX INFO: Fake field, exist only in values array */
        MESSAGE_OPEN(2);


        /* renamed from: for, reason: not valid java name */
        public final int f4222for;

        Cdo(int i) {
            this.f4222for = i;
        }

        @Override // defpackage.InterfaceC2840gy
        /* renamed from: do */
        public final int mo1993do() {
            return this.f4222for;
        }
    }

    /* renamed from: Vs$for, reason: invalid class name */
    public enum Cfor implements InterfaceC2840gy {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN_OS(0),
        ANDROID(1),
        /* JADX INFO: Fake field, exist only in values array */
        IOS(2),
        /* JADX INFO: Fake field, exist only in values array */
        WEB(3);


        /* renamed from: for, reason: not valid java name */
        public final int f4225for;

        Cfor(int i) {
            this.f4225for = i;
        }

        @Override // defpackage.InterfaceC2840gy
        /* renamed from: do */
        public final int mo1993do() {
            return this.f4225for;
        }
    }

    /* renamed from: Vs$if, reason: invalid class name */
    public enum Cif implements InterfaceC2840gy {
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN(0),
        DATA_MESSAGE(1),
        /* JADX INFO: Fake field, exist only in values array */
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);


        /* renamed from: for, reason: not valid java name */
        public final int f4229for;

        Cif(int i) {
            this.f4229for = i;
        }

        @Override // defpackage.InterfaceC2840gy
        /* renamed from: do */
        public final int mo1993do() {
            return this.f4229for;
        }
    }

    public C0572Vs(long j, String str, String str2, Cif cif, Cfor cfor, String str3, String str4, int i, int i2, String str5, Cdo cdo, String str6, String str7) {
        this.f4207do = j;
        this.f4211do = str;
        this.f4217if = str2;
        this.f4210do = cif;
        this.f4209do = cfor;
        this.f4214for = str3;
        this.f4218new = str4;
        this.f4206do = i;
        this.f4215if = i2;
        this.f4219try = str5;
        this.f4208do = cdo;
        this.f4205case = str6;
        this.f4212else = str7;
    }
}
