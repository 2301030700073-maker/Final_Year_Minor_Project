package b.b.g;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class T0 extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final View f480a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f481b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f482c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f483d;
    public final int e;
    public boolean f;

    public T0(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f481b = new Rect();
        this.f483d = new Rect();
        this.f482c = new Rect();
        a(rect, rect2);
        this.f480a = view;
    }

    public void a(Rect rect, Rect rect2) {
        this.f481b.set(rect);
        this.f483d.set(rect);
        Rect rect3 = this.f483d;
        int i = this.e;
        rect3.inset(-i, -i);
        this.f482c.set(rect2);
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z3 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z2 = this.f;
                if (z2 && !this.f483d.contains(x, y)) {
                    z3 = z2;
                    z = false;
                }
            } else {
                if (action == 3) {
                    z2 = this.f;
                    this.f = false;
                }
                z = true;
                z3 = false;
            }
            z3 = z2;
            z = true;
        } else {
            if (this.f481b.contains(x, y)) {
                this.f = true;
                z = true;
            }
            z = true;
            z3 = false;
        }
        if (!z3) {
            return false;
        }
        if (!z || this.f482c.contains(x, y)) {
            Rect rect = this.f482c;
            motionEvent.setLocation(x - rect.left, y - rect.top);
        } else {
            motionEvent.setLocation(this.f480a.getWidth() / 2, this.f480a.getHeight() / 2);
        }
        return this.f480a.dispatchTouchEvent(motionEvent);
    }
}
