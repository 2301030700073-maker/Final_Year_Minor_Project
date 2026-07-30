package defpackage;

import android.text.TextUtils;
import defpackage.A0;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f12973do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12974do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Date f12975do;

    /* renamed from: for, reason: not valid java name */
    public final String f12976for;

    /* renamed from: if, reason: not valid java name */
    public final long f12977if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f12978if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f12972do = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: do, reason: not valid java name */
    public static final SimpleDateFormat f12971do = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    public Cfinally(String str, String str2, String str3, Date date, long j, long j2) {
        this.f12974do = str;
        this.f12978if = str2;
        this.f12976for = str3;
        this.f12975do = date;
        this.f12973do = j;
        this.f12977if = j2;
    }

    /* renamed from: do, reason: not valid java name */
    public final A0.Cif m6679do(String str) {
        A0.Cif cif = new A0.Cif();
        cif.f6do = str;
        cif.f8for = this.f12975do.getTime();
        cif.f13if = this.f12974do;
        cif.f5do = this.f12978if;
        String str2 = this.f12976for;
        if (TextUtils.isEmpty(str2)) {
            str2 = null;
        }
        cif.f10for = str2;
        cif.f3do = this.f12973do;
        cif.f11if = this.f12977if;
        return cif;
    }
}
