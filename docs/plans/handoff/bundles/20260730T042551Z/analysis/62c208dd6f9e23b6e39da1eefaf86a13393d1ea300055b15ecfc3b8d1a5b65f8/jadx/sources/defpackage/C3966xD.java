package defpackage;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

/* renamed from: xD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3966xD extends AbstractC3848vD {

    /* renamed from: for, reason: not valid java name */
    public boolean f16530for = false;

    /* renamed from: do, reason: not valid java name */
    public float f16529do = 0.0f;

    /* renamed from: xD$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {
        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            C3966xD c3966xD = C3966xD.this;
            if (((AbstractC3848vD) c3966xD).f16036do == null || ((AbstractC3848vD) c3966xD).f16035do.isEmpty()) {
                return;
            }
            RectF rectF = ((AbstractC3848vD) c3966xD).f16035do;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, c3966xD.f16529do);
        }
    }

    public C3966xD(View view) {
        m8623new(view);
    }

    /* renamed from: new, reason: not valid java name */
    private void m8623new(View view) {
        view.setOutlineProvider(new Cdo());
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0100, code lost:
    
        if (r0 == false) goto L69;
     */
    @Override // defpackage.AbstractC3848vD
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8440do(android.view.View r10) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3966xD.mo8440do(android.view.View):void");
    }

    @Override // defpackage.AbstractC3848vD
    /* renamed from: if */
    public final boolean mo8442if() {
        return !this.f16530for || ((AbstractC3848vD) this).f16037do;
    }
}
