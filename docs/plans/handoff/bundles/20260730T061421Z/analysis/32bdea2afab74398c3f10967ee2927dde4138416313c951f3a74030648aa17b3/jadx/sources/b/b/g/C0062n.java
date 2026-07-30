package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.systemui.shared.R;

/* renamed from: b.b.g.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0062n extends H implements InterfaceC0071s {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f563c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0062n(r rVar, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f563c = rVar;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        setTooltipText(getContentDescription());
        setOnTouchListener(new C0060m(this, this, rVar));
    }

    @Override // b.b.g.InterfaceC0071s
    public boolean a() {
        return false;
    }

    @Override // b.b.g.InterfaceC0071s
    public boolean c() {
        return false;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f563c.n();
        return true;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
