package com.google.android.apps.nexuslauncher.graphics;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.SpannableString;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import c.b.a.b.b.i.a;
import com.android.launcher3.R$styleable;
import com.android.launcher3.views.DoubleShadowBubbleTextView;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class DoubleShadowTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    public final DoubleShadowBubbleTextView.ShadowInfo f3290a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3291b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3292c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f3293d;
    public final RectF e;
    public Bitmap f;
    public boolean g;
    public CharSequence h;

    public DoubleShadowTextView(Context context) {
        this(context, null);
    }

    public void a(CharSequence charSequence, Bitmap bitmap) {
        if (Objects.equals(charSequence, this.h) && Objects.equals(bitmap, this.f)) {
            return;
        }
        this.f = bitmap;
        this.h = charSequence;
        if (bitmap == null) {
            setText(charSequence);
            return;
        }
        SpannableString spannableString = new SpannableString(this.h);
        spannableString.setSpan(new a(this, this.f), 0, spannableString.length(), 33);
        setText(spannableString);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f3290a.skipDoubleShadow(this)) {
            super.onDraw(canvas);
            return;
        }
        this.g = true;
        TextPaint paint = getPaint();
        DoubleShadowBubbleTextView.ShadowInfo shadowInfo = this.f3290a;
        paint.setShadowLayer(shadowInfo.ambientShadowBlur, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, shadowInfo.ambientShadowColor);
        super.onDraw(canvas);
        this.g = false;
        TextPaint paint2 = getPaint();
        DoubleShadowBubbleTextView.ShadowInfo shadowInfo2 = this.f3290a;
        paint2.setShadowLayer(shadowInfo2.keyShadowBlur, RecentsState.NO_OFFSET, shadowInfo2.keyShadowOffset, shadowInfo2.keyShadowColor);
        super.onDraw(canvas);
    }

    public DoubleShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DoubleShadowTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3293d = new Paint(3);
        this.e = new RectF();
        this.f3290a = new DoubleShadowBubbleTextView.ShadowInfo(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DoubleShadowTextView);
        this.f3291b = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f3292c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        RectF rectF = this.e;
        int i2 = this.f3291b;
        rectF.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, i2, i2);
        DoubleShadowBubbleTextView.ShadowInfo shadowInfo = this.f3290a;
        setShadowLayer(Math.max(shadowInfo.keyShadowBlur + shadowInfo.keyShadowOffset, shadowInfo.ambientShadowBlur), RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.f3290a.keyShadowColor);
    }
}
