package defpackage;

import android.view.VelocityTracker;
import j$.util.DesugarCollections;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: jK, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3148jK {

    /* renamed from: do, reason: not valid java name */
    public static final Map<VelocityTracker, C3207kK> f13674do = DesugarCollections.synchronizedMap(new WeakHashMap());

    /* renamed from: jK$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static float m7052do(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getAxisVelocity(i);
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m7053for(VelocityTracker velocityTracker, int i) {
            return velocityTracker.isAxisSupported(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static float m7054if(VelocityTracker velocityTracker, int i, int i2) {
            return velocityTracker.getAxisVelocity(i, i2);
        }
    }
}
