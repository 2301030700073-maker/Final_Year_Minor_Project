package defpackage;

import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.auto.value.AutoValue;
import defpackage.C4075z4;

@AutoValue
/* renamed from: uI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3794uI {

    @AutoValue.Builder
    /* renamed from: uI$do, reason: invalid class name */
    public static abstract class Cdo {
    }

    /* renamed from: do, reason: not valid java name */
    public static C4075z4.Cdo m8379do() {
        C4075z4.Cdo cdo = new C4075z4.Cdo();
        cdo.m8784for(Ex.DEFAULT);
        return cdo;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract byte[] mo8380for();

    /* renamed from: if, reason: not valid java name */
    public abstract String mo8381if();

    /* renamed from: new, reason: not valid java name */
    public abstract Ex mo8382new();

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = mo8381if();
        objArr[1] = mo8382new();
        objArr[2] = mo8380for() == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : Base64.encodeToString(mo8380for(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }

    /* renamed from: try, reason: not valid java name */
    public final C4075z4 m8383try(Ex ex) {
        C4075z4.Cdo m8379do = m8379do();
        m8379do.m8785if(mo8381if());
        m8379do.m8784for(ex);
        m8379do.f16859do = mo8380for();
        return m8379do.m8783do();
    }
}
