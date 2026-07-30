package b.b.g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* renamed from: b.b.g.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0038b extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final C0036a f515a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f516b;

    /* renamed from: c, reason: collision with root package name */
    public ActionMenuView f517c;

    /* renamed from: d, reason: collision with root package name */
    public r f518d;
    public int e;
    public b.e.i.t f;
    public boolean g;
    public boolean h;

    public AbstractC0038b(Context context) {
        this(context, null);
    }

    public int c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, RecyclerView.UNDEFINED_DURATION), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    public int d(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public b.e.i.t e(int i, long j) {
        b.e.i.t tVar = this.f;
        if (tVar != null) {
            tVar.b();
        }
        if (i != 0) {
            b.e.i.t a2 = b.e.i.q.a(this);
            a2.a(RecentsState.NO_OFFSET);
            a2.c(j);
            C0036a c0036a = this.f515a;
            c0036a.f507c.f = a2;
            c0036a.f506b = i;
            View view = (View) a2.f781a.get();
            if (view != null) {
                a2.e(view, c0036a);
            }
            return a2;
        }
        if (getVisibility() != 0) {
            setAlpha(RecentsState.NO_OFFSET);
        }
        b.e.i.t a3 = b.e.i.q.a(this);
        a3.a(1.0f);
        a3.c(j);
        C0036a c0036a2 = this.f515a;
        c0036a2.f507c.f = a3;
        c0036a2.f506b = i;
        View view2 = (View) a3.f781a.get();
        if (view2 != null) {
            a3.e(view2, c0036a2);
        }
        return a3;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, b.b.b.f240a, R.attr.actionBarStyle, 0);
        ((ActionBarContextView) this).e = obtainStyledAttributes.getLayoutDimension(13, 0);
        obtainStyledAttributes.recycle();
        r rVar = this.f518d;
        if (rVar != null) {
            Configuration configuration2 = rVar.f574b.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            rVar.p = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            b.b.f.m.o oVar = rVar.f575c;
            if (oVar != null) {
                oVar.p(true);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.h = false;
        }
        if (!this.h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.g = false;
        }
        if (!this.g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.g = false;
        }
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            b.e.i.t tVar = this.f;
            if (tVar != null) {
                tVar.b();
            }
            super.setVisibility(i);
        }
    }

    public AbstractC0038b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0038b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f515a = new C0036a(this);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) && typedValue.resourceId != 0) {
            this.f516b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f516b = context;
        }
    }
}
