package defpackage;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: Qj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0453Qj {

    /* renamed from: do, reason: not valid java name */
    public final Cif f3032do;

    /* renamed from: Qj$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public static Handler f3033do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static HandlerThread f3034do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SparseIntArray[] f3038do = new SparseIntArray[9];

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<WeakReference<Activity>> f3037do = new ArrayList<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WindowOnFrameMetricsAvailableListenerC0004do f3036do = new WindowOnFrameMetricsAvailableListenerC0004do();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f3035do = 1;

        /* renamed from: Qj$do$do, reason: invalid class name and collision with other inner class name */
        public class WindowOnFrameMetricsAvailableListenerC0004do implements Window.OnFrameMetricsAvailableListener {
            public WindowOnFrameMetricsAvailableListenerC0004do() {
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                long metric;
                long metric2;
                long metric3;
                long metric4;
                long metric5;
                long metric6;
                long metric7;
                long metric8;
                long metric9;
                Cdo cdo = Cdo.this;
                if ((cdo.f3035do & 1) != 0) {
                    SparseIntArray sparseIntArray = cdo.f3038do[0];
                    metric9 = frameMetrics.getMetric(8);
                    Cdo.m1986try(sparseIntArray, metric9);
                }
                Cdo cdo2 = Cdo.this;
                if ((cdo2.f3035do & 2) != 0) {
                    SparseIntArray sparseIntArray2 = cdo2.f3038do[1];
                    metric8 = frameMetrics.getMetric(1);
                    Cdo.m1986try(sparseIntArray2, metric8);
                }
                Cdo cdo3 = Cdo.this;
                if ((cdo3.f3035do & 4) != 0) {
                    SparseIntArray sparseIntArray3 = cdo3.f3038do[2];
                    metric7 = frameMetrics.getMetric(3);
                    Cdo.m1986try(sparseIntArray3, metric7);
                }
                Cdo cdo4 = Cdo.this;
                if ((cdo4.f3035do & 8) != 0) {
                    SparseIntArray sparseIntArray4 = cdo4.f3038do[3];
                    metric6 = frameMetrics.getMetric(4);
                    Cdo.m1986try(sparseIntArray4, metric6);
                }
                Cdo cdo5 = Cdo.this;
                if ((cdo5.f3035do & 16) != 0) {
                    SparseIntArray sparseIntArray5 = cdo5.f3038do[4];
                    metric5 = frameMetrics.getMetric(5);
                    Cdo.m1986try(sparseIntArray5, metric5);
                }
                Cdo cdo6 = Cdo.this;
                if ((cdo6.f3035do & 64) != 0) {
                    SparseIntArray sparseIntArray6 = cdo6.f3038do[6];
                    metric4 = frameMetrics.getMetric(7);
                    Cdo.m1986try(sparseIntArray6, metric4);
                }
                Cdo cdo7 = Cdo.this;
                if ((cdo7.f3035do & 32) != 0) {
                    SparseIntArray sparseIntArray7 = cdo7.f3038do[5];
                    metric3 = frameMetrics.getMetric(6);
                    Cdo.m1986try(sparseIntArray7, metric3);
                }
                Cdo cdo8 = Cdo.this;
                if ((cdo8.f3035do & 128) != 0) {
                    SparseIntArray sparseIntArray8 = cdo8.f3038do[7];
                    metric2 = frameMetrics.getMetric(0);
                    Cdo.m1986try(sparseIntArray8, metric2);
                }
                Cdo cdo9 = Cdo.this;
                if ((cdo9.f3035do & 256) != 0) {
                    SparseIntArray sparseIntArray9 = cdo9.f3038do[8];
                    metric = frameMetrics.getMetric(2);
                    Cdo.m1986try(sparseIntArray9, metric);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1986try(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }

        @Override // defpackage.C0453Qj.Cif
        /* renamed from: do, reason: not valid java name */
        public final void mo1987do(Activity activity) {
            if (f3034do == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f3034do = handlerThread;
                handlerThread.start();
                f3033do = new Handler(f3034do.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f3038do;
                if (sparseIntArrayArr[i] == null && (this.f3035do & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f3036do, f3033do);
            this.f3037do.add(new WeakReference<>(activity));
        }

        @Override // defpackage.C0453Qj.Cif
        /* renamed from: for, reason: not valid java name */
        public final SparseIntArray[] mo1988for(Activity activity) {
            ArrayList<WeakReference<Activity>> arrayList = this.f3037do;
            Iterator<WeakReference<Activity>> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it.next();
                if (next.get() == activity) {
                    arrayList.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f3036do);
            return this.f3038do;
        }

        @Override // defpackage.C0453Qj.Cif
        /* renamed from: if, reason: not valid java name */
        public final SparseIntArray[] mo1989if() {
            return this.f3038do;
        }

        @Override // defpackage.C0453Qj.Cif
        /* renamed from: new, reason: not valid java name */
        public final SparseIntArray[] mo1990new() {
            SparseIntArray[] sparseIntArrayArr = this.f3038do;
            this.f3038do = new SparseIntArray[9];
            return sparseIntArrayArr;
        }
    }

    /* renamed from: Qj$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do */
        public void mo1987do(Activity activity) {
        }

        /* renamed from: for */
        public SparseIntArray[] mo1988for(Activity activity) {
            return null;
        }

        /* renamed from: if */
        public SparseIntArray[] mo1989if() {
            return null;
        }

        /* renamed from: new */
        public SparseIntArray[] mo1990new() {
            return null;
        }
    }

    public C0453Qj() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f3032do = new Cdo();
        } else {
            this.f3032do = new Cif();
        }
    }
}
