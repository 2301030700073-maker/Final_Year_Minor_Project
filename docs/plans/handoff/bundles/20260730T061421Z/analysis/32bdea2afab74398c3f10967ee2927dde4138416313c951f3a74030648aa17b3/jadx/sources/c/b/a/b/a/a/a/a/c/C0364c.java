package c.b.a.b.a.a.a.a.c;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.quickstep.views.TaskMenuView;
import com.google.android.apps.miphone.aiai.matchmaker.overview.ui.DebugDisplay$DebugLevel;

/* renamed from: c.b.a.b.a.a.a.a.c.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0364c extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f2438a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f2439b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f2440c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f2441d;
    public final Paint e;
    public final RectF f;
    public final float g;
    public final FrameLayout h;
    public DebugDisplay$DebugLevel i;

    @Nullable
    public C0368g j;

    public C0364c(Context context, FrameLayout frameLayout) {
        super(context);
        this.f = new RectF();
        this.i = DebugDisplay$DebugLevel.NONE;
        Paint paint = new Paint();
        this.e = paint;
        paint.setColor(-16711936);
        this.e.setStrokeWidth(2.0f);
        this.e.setStyle(Paint.Style.STROKE);
        this.f2440c = a(-16776961, 30);
        this.f2441d = a(-65536, 30);
        Paint paint2 = new Paint();
        this.f2439b = paint2;
        paint2.setColor(-65536);
        this.f2439b.setStyle(Paint.Style.FILL);
        this.f2439b.setAlpha(TaskMenuView.REVEAL_OPEN_DURATION);
        this.f2438a = a(-1, 30);
        this.g = TypedValue.applyDimension(1, 5.0f, context.getResources().getDisplayMetrics());
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.h = frameLayout;
    }

    public final Paint a(@ColorInt int i, int i2) {
        Paint paint = new Paint(65);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        paint.setTextAlign(Paint.Align.LEFT);
        paint.setTextSize(i2);
        return paint;
    }

    public final void b(FrameLayout frameLayout, RectF rectF, String str, Paint paint, Paint paint2) {
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout.addView(frameLayout2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) rectF.width(), (int) rectF.height());
        layoutParams.leftMargin = (int) rectF.left;
        layoutParams.topMargin = (int) rectF.top;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout2.setAlpha(paint2.getAlpha() / 255.0f);
        frameLayout2.setBackgroundColor(paint2.getColor());
        TextView textView = new TextView(getContext());
        frameLayout2.addView(textView);
        textView.setText(str);
        textView.setTextSize(7.0f);
        textView.setAlpha(paint.getAlpha() / 255.0f);
        textView.setTextColor(paint.getColor());
    }
}
