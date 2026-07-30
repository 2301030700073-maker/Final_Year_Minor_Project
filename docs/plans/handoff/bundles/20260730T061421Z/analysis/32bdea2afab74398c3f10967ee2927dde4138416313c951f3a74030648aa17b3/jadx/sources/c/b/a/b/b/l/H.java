package c.b.a.b.b.l;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher3.Utilities;
import com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;

/* loaded from: classes.dex */
public abstract class H extends A implements FlingAndHoldTouchController.FeedbackHandler {
    public static final String N = H.class.getSimpleName();
    public static final boolean O = Utilities.isPropertyEnabled("DoodleLogging");
    public static final FloatProperty P = new E("doodleAlpha");
    public static final FloatProperty Q = new F("doodleAlphaMultiplier");
    public final int I;
    public c.b.a.b.b.f.f J;
    public ImageView K;
    public float L;
    public float M;

    public H(Context context) {
        this(context, null);
    }

    public static void s(H h) {
        if (h.J == null) {
            h.K.setImageAlpha(255);
            return;
        }
        float f = h.M * h.L;
        h.K.setImageAlpha((int) ((1.0f - f) * 255.0f));
        h.J.setAlpha(f);
    }

    @Override // c.b.a.b.b.l.A, c.b.a.b.b.l.O
    public void a() {
        t();
        super.a();
    }

    @Override // c.b.a.b.b.l.A
    public boolean l() {
        c.b.a.b.b.f.f fVar = this.J;
        if (fVar != null) {
            if (fVar.n && fVar.k.isRunning()) {
                return true;
            }
        }
        return false;
    }

    @Override // c.b.a.b.b.l.A, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        t();
        super.onAttachedToWindow();
    }

    @Override // c.b.a.b.b.l.A, android.view.View
    public void onFinishInflate() {
        this.K = (ImageView) findViewById(R.id.g_icon);
        super.onFinishInflate();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i != 0) {
            Q.setValue(this, RecentsState.NO_OFFSET);
        }
    }

    @Override // c.b.a.b.b.l.A
    public void q(String str, int i) {
        this.A = 0;
        NexusLauncherActivity h = h();
        D d2 = new D(this, false, str, i);
        if (h.mOverlayManager.startSearch(d2.a(), d2.e)) {
            h.f3288a.f2534b.b();
            return;
        }
        Context context = getContext();
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        rect.offset(iArr[0], iArr[1]);
        rect.inset(getPaddingLeft(), getPaddingTop());
        View findViewById = findViewById(R.id.g_icon);
        View view = this.q;
        Intent intent = new Intent("com.google.nexuslauncher.FAST_TEXT_SEARCH");
        intent.setSourceBounds(rect);
        if (view.getVisibility() != 0) {
            intent.putExtra("source_mic_alpha", RecentsState.NO_OFFSET);
        }
        context.sendOrderedBroadcast(intent.putExtra("source_round_left", true).putExtra("source_round_right", true).putExtra("source_logo_offset", D.f(findViewById, rect)).putExtra("source_mic_offset", D.f(view, rect)).putExtra("use_fade_animation", true).setPackage("com.google.android.googlequicksearchbox").addFlags(1342177280), null, new G(this, h), null, 0, null, null);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController.FeedbackHandler
    public void resetFeedback() {
        getBackground().setVisible(false, false);
        getBackground().setVisible(true, false);
        this.q.getBackground().setVisible(false, false);
        this.q.getBackground().setVisible(true, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x01d5, code lost:
    
        if ((r1.f2549c.h != 0) == false) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void t() {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.H.t():void");
    }

    public H(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public H(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.L = 1.0f;
        this.M = RecentsState.NO_OFFSET;
        this.I = b.l.W.getAttrColor(context, R.attr.hotseatQsbFillColor);
        setAccessibilityDelegate(new I());
    }
}
