package c.b.a.b.a.a.a.a.c;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import android.util.FloatProperty;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* renamed from: c.b.a.b.a.a.a.a.c.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0380t extends FrameLayout {
    public static final FloatProperty o = new C0377p("highlightProgress");
    public static final Interpolator p;

    /* renamed from: a, reason: collision with root package name */
    public final Paint f2497a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f2498b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f2499c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f2500d;
    public final List e;
    public final float f;
    public final RectF g;
    public final Rect h;
    public float i;

    @Nullable
    public r j;
    public float k;
    public float l;

    @Nullable
    public Path m;

    @Nullable
    public Path n;

    static {
        new C0378q("pathChangeProgress");
        p = new PathInterpolator(0.71f, RecentsState.NO_OFFSET, 0.13f, 1.0f);
    }

    public C0380t(Context context) {
        super(context, null, 0, 0);
        this.f2500d = new ArrayList();
        this.e = new ArrayList();
        this.g = new RectF();
        this.h = new Rect();
        this.k = RecentsState.NO_OFFSET;
        this.l = RecentsState.NO_OFFSET;
        Paint paint = new Paint();
        this.f2497a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f2497a.setColor(context.getColor(R.color.default_gleam_background_color));
        this.f = context.getResources().getDimensionPixelSize(R.dimen.selection_padding);
        this.f2499c = new Paint();
        Paint paint2 = new Paint();
        this.f2498b = paint2;
        paint2.setColor(context.getColor(R.color.default_gleam_highlight_color));
        this.f2499c.setBlendMode(BlendMode.PLUS);
        this.f2499c.setColor(this.f2498b.getColor());
        this.f2499c.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f2499c.setStrokeJoin(Paint.Join.ROUND);
        this.f2499c.setStrokeCap(Paint.Cap.ROUND);
        this.f2499c.setStrokeWidth(this.f * 2.0f);
        setWillNotDraw(false);
    }

    public final void a(float f, float f2) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((InterfaceC0379s) it.next()).a(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        r rVar = this.j;
        return rVar == null ? super.dispatchHoverEvent(motionEvent) : rVar.b(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        r rVar = this.j;
        return rVar == null ? super.dispatchKeyEvent(keyEvent) : rVar.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setOnTouchListener(new View.OnTouchListener(this) { // from class: c.b.a.b.a.a.a.a.c.n

            /* renamed from: a, reason: collision with root package name */
            public final C0380t f2489a;

            {
                this.f2489a = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                C0380t c0380t = this.f2489a;
                Objects.requireNonNull(c0380t);
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                c0380t.performClick();
                c0380t.a(motionEvent.getX(), motionEvent.getY());
                return true;
            }
        });
        setAlpha(RecentsState.NO_OFFSET);
        animate().alpha(0.2f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getHeight() == 0) {
            return;
        }
        getDrawingRect(this.h);
        this.g.set(this.h);
        RectF rectF = this.g;
        float f = this.i;
        canvas.drawRoundRect(rectF, f, f, this.f2497a);
        float f2 = this.k * 1.1f;
        for (int i = 0; i < this.f2500d.size(); i++) {
            float height = (f2 - (((RectF) this.f2500d.get(i)).top / getHeight())) * 10.0f;
            float f3 = RecentsState.NO_OFFSET;
            if (height >= RecentsState.NO_OFFSET) {
                f3 = Math.min(1.0f, height);
            }
            this.f2498b.setAlpha(Math.round(f3 * 255.0f));
            RectF rectF2 = (RectF) this.f2500d.get(i);
            float f4 = this.f;
            canvas.drawRoundRect(rectF2, f4, f4, this.f2498b);
        }
        if (this.n != null) {
            this.f2499c.setAlpha((int) ((1.0f - this.l) * 255.0f));
            canvas.drawPath(this.n, this.f2499c);
        }
        if (this.m != null) {
            this.f2499c.setAlpha((int) (this.l * 255.0f));
            canvas.drawPath(this.m, this.f2499c);
        }
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        r rVar = this.j;
        if (rVar != null) {
            rVar.d(z, i, rect);
        }
    }
}
