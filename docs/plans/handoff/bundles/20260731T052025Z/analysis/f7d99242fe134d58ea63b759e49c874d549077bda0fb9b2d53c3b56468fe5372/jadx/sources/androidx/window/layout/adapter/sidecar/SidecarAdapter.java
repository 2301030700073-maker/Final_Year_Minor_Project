package androidx.window.layout.adapter.sidecar;

import android.graphics.Rect;
import androidx.window.core.AndroidLogger;
import androidx.window.core.Bounds;
import androidx.window.core.ValidSpecification;
import androidx.window.core.VerificationMode;
import androidx.window.layout.FoldingFeature$State;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SidecarAdapter {
    public final VerificationMode verificationMode = VerificationMode.QUIET;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static int getRawSidecarDevicePosture(SidecarDeviceState sidecarDeviceState) {
            sidecarDeviceState.getClass();
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return 0;
                }
            } catch (NoSuchFieldError unused2) {
                Object invoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                invoke.getClass();
                return ((Integer) invoke).intValue();
            }
        }

        public static int getSidecarDevicePosture$window_release(SidecarDeviceState sidecarDeviceState) {
            sidecarDeviceState.getClass();
            int rawSidecarDevicePosture = getRawSidecarDevicePosture(sidecarDeviceState);
            if (rawSidecarDevicePosture < 0 || rawSidecarDevicePosture > 4) {
                return 0;
            }
            return rawSidecarDevicePosture;
        }

        public static List getSidecarDisplayFeatures(SidecarWindowLayoutInfo sidecarWindowLayoutInfo) {
            List list;
            EmptyList emptyList = EmptyList.INSTANCE;
            sidecarWindowLayoutInfo.getClass();
            try {
                try {
                    list = sidecarWindowLayoutInfo.displayFeatures;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                }
                return list == null ? emptyList : list;
            } catch (NoSuchFieldError unused2) {
                Object invoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(sidecarWindowLayoutInfo, null);
                invoke.getClass();
                return (List) invoke;
            }
        }

        public static void setSidecarDevicePosture(SidecarDeviceState sidecarDeviceState, int i) {
            try {
                try {
                    sidecarDeviceState.posture = i;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                }
            } catch (NoSuchFieldError unused2) {
                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i));
            }
        }
    }

    public static boolean isEqualSidecarDisplayFeature(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (Intrinsics.areEqual(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return Intrinsics.areEqual(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    public static boolean isEqualSidecarDisplayFeatures(List list, List list2) {
        if (list == list2) {
            return true;
        }
        if (list.size() == list2.size()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (isEqualSidecarDisplayFeature((SidecarDisplayFeature) list.get(i), (SidecarDisplayFeature) list2.get(i))) {
                }
            }
            return true;
        }
        return false;
    }

    public static final boolean translate$lambda$1(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getType() == 1 || sidecarDisplayFeature.getType() == 2;
    }

    public static final boolean translate$lambda$2(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return (sidecarDisplayFeature.getRect().width() == 0 && sidecarDisplayFeature.getRect().height() == 0) ? false : true;
    }

    public static final boolean translate$lambda$3(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getType() != 1 || sidecarDisplayFeature.getRect().width() == 0 || sidecarDisplayFeature.getRect().height() == 0;
    }

    public static final boolean translate$lambda$4(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getRect().left == 0 || sidecarDisplayFeature.getRect().top == 0;
    }

    public final WindowLayoutInfo translate(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState sidecarDeviceState) {
        if (sidecarWindowLayoutInfo == null) {
            return new WindowLayoutInfo(EmptyList.INSTANCE);
        }
        SidecarDeviceState sidecarDeviceState2 = new SidecarDeviceState();
        Companion.setSidecarDevicePosture(sidecarDeviceState2, Companion.getSidecarDevicePosture$window_release(sidecarDeviceState));
        return new WindowLayoutInfo(translate(Companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo), sidecarDeviceState2));
    }

    public final HardwareFoldingFeature translate$window_release(SidecarDisplayFeature sidecarDisplayFeature, SidecarDeviceState sidecarDeviceState) {
        FoldingFeature$State foldingFeature$State;
        FoldingFeature$State foldingFeature$State2 = FoldingFeature$State.FLAT;
        sidecarDisplayFeature.getClass();
        VerificationMode verificationMode = this.verificationMode;
        verificationMode.getClass();
        SidecarDisplayFeature sidecarDisplayFeature2 = (SidecarDisplayFeature) new ValidSpecification(sidecarDisplayFeature, verificationMode, AndroidLogger.INSTANCE).require("Type must be either TYPE_FOLD or TYPE_HINGE", new SidecarAdapter$$ExternalSyntheticLambda0()).require("Feature bounds must not be 0", new SidecarAdapter$$ExternalSyntheticLambda1()).require("TYPE_FOLD must have 0 area", new SidecarAdapter$$ExternalSyntheticLambda2()).require("Feature be pinned to either left or top", new SidecarAdapter$$ExternalSyntheticLambda3()).compute();
        if (sidecarDisplayFeature2 == null) {
            return null;
        }
        int type = sidecarDisplayFeature2.getType();
        if (type == 1) {
            foldingFeature$State = FoldingFeature$State.FOLD;
        } else {
            if (type != 2) {
                return null;
            }
            foldingFeature$State = FoldingFeature$State.HINGE;
        }
        int sidecarDevicePosture$window_release = Companion.getSidecarDevicePosture$window_release(sidecarDeviceState);
        if (sidecarDevicePosture$window_release == 0 || sidecarDevicePosture$window_release == 1) {
            return null;
        }
        if (sidecarDevicePosture$window_release == 2) {
            foldingFeature$State2 = FoldingFeature$State.HALF_OPENED;
        } else if (sidecarDevicePosture$window_release != 3 && sidecarDevicePosture$window_release == 4) {
            return null;
        }
        Rect rect = sidecarDisplayFeature.getRect();
        rect.getClass();
        return new HardwareFoldingFeature(new Bounds(rect), foldingFeature$State, foldingFeature$State2);
    }

    public final ArrayList translate(List list, SidecarDeviceState sidecarDeviceState) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HardwareFoldingFeature translate$window_release = translate$window_release((SidecarDisplayFeature) it.next(), sidecarDeviceState);
            if (translate$window_release != null) {
                arrayList.add(translate$window_release);
            }
        }
        return arrayList;
    }
}
