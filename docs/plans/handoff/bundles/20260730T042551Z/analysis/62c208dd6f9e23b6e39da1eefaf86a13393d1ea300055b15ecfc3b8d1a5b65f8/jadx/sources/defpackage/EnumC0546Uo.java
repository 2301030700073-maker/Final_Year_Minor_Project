package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* renamed from: Uo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC0546Uo {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(AbstractC3429o6.class, AbstractC3429o6.f14685do),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f3989do;

    EnumC0546Uo(Class cls, Serializable serializable) {
        this.f3989do = serializable;
    }
}
