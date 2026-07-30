package b.b.g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class N extends SeekBar {

    /* renamed from: a, reason: collision with root package name */
    public final O f469a;

    public N(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        V0.a(this, getContext());
        O o = new O(this);
        this.f469a = o;
        o.a(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        O o = this.f469a;
        Drawable drawable = o.e;
        if (drawable != null && drawable.isStateful() && drawable.setState(o.f471d.getDrawableState())) {
            o.f471d.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f469a.e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f469a.d(canvas);
    }
}
