package b.e.j;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.animation.AnimationUtils;
import b.e.i.q;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f794a;

    public b(c cVar) {
        this.f794a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.f794a;
        if (cVar.o) {
            if (cVar.m) {
                cVar.m = false;
                a aVar = cVar.f795a;
                Objects.requireNonNull(aVar);
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                aVar.e = currentAnimationTimeMillis;
                aVar.i = -1L;
                aVar.f = currentAnimationTimeMillis;
                aVar.j = 0.5f;
                aVar.g = 0;
                aVar.h = 0;
            }
            a aVar2 = this.f794a.f795a;
            if ((aVar2.i > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar2.i + ((long) aVar2.k)) || !this.f794a.g()) {
                this.f794a.o = false;
                return;
            }
            c cVar2 = this.f794a;
            if (cVar2.n) {
                cVar2.n = false;
                Objects.requireNonNull(cVar2);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 0);
                cVar2.f797c.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (aVar2.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            float a2 = aVar2.a(currentAnimationTimeMillis2);
            long j = currentAnimationTimeMillis2 - aVar2.f;
            aVar2.f = currentAnimationTimeMillis2;
            float f = j * ((a2 * 4.0f) + ((-4.0f) * a2 * a2));
            aVar2.g = (int) (aVar2.f792c * f);
            int i = (int) (f * aVar2.f793d);
            aVar2.h = i;
            this.f794a.q.scrollListBy(i);
            q.z(this.f794a.f797c, this);
        }
    }
}
