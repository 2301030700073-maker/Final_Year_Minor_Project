package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;

/* renamed from: Vo, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0568Vo {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED),
    BYTE_STRING(AbstractC3370n6.class, AbstractC3370n6.f14461do),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f4201do;

    EnumC0568Vo(Class cls, Serializable serializable) {
        this.f4201do = serializable;
    }
}
