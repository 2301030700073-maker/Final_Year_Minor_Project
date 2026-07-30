package defpackage;

import com.google.auto.value.AutoValue;
import java.util.Map;
import java.util.Set;

@AutoValue
/* renamed from: wB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3905wB {

    @AutoValue
    /* renamed from: wB$do, reason: invalid class name */
    public static abstract class Cdo {

        @AutoValue.Builder
        /* renamed from: wB$do$do, reason: invalid class name and collision with other inner class name */
        public static abstract class AbstractC0090do {
        }

        /* renamed from: do */
        public abstract long mo7931do();

        /* renamed from: for */
        public abstract long mo7932for();

        /* renamed from: if */
        public abstract Set<Cif> mo7933if();
    }

    /* renamed from: wB$if, reason: invalid class name */
    public enum Cif {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: do */
    public abstract InterfaceC2792g8 mo7850do();

    /* renamed from: for */
    public abstract Map<Ex, Cdo> mo7851for();

    /* renamed from: if, reason: not valid java name */
    public final long m8565if(Ex ex, long j, int i) {
        long mo445do = j - mo7850do().mo445do();
        Cdo cdo = mo7851for().get(ex);
        long mo7931do = cdo.mo7931do();
        return Math.min(Math.max((long) (Math.pow(3.0d, i - 1) * mo7931do * Math.max(1.0d, Math.log(10000.0d) / Math.log((mo7931do > 1 ? mo7931do : 2L) * r12))), mo445do), cdo.mo7932for());
    }
}
