package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* renamed from: yD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4025yD extends AbstractC3848vD {

    /* renamed from: yD$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {
        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            C4025yD c4025yD = C4025yD.this;
            if (((AbstractC3848vD) c4025yD).f16034do.isEmpty()) {
                return;
            }
            outline.setPath(((AbstractC3848vD) c4025yD).f16034do);
        }
    }

    public C4025yD(View view) {
        m8705new(view);
    }

    /* renamed from: new, reason: not valid java name */
    private void m8705new(View view) {
        view.setOutlineProvider(new Cdo());
    }

    @Override // defpackage.AbstractC3848vD
    /* renamed from: do */
    public final void mo8440do(View view) {
        view.setClipToOutline(!((AbstractC3848vD) this).f16037do);
        if (((AbstractC3848vD) this).f16037do) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // defpackage.AbstractC3848vD
    /* renamed from: if */
    public final boolean mo8442if() {
        return ((AbstractC3848vD) this).f16037do;
    }
}
