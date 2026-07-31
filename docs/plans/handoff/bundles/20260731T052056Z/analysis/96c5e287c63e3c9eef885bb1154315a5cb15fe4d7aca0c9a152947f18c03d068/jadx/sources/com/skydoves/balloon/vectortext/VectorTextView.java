package com.skydoves.balloon.vectortext;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.ui.unit.DpKt;
import com.skydoves.balloon.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R.\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/skydoves/balloon/vectortext/VectorTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lcom/skydoves/balloon/vectortext/VectorTextViewParams;", "value", "drawableTextViewParams", "Lcom/skydoves/balloon/vectortext/VectorTextViewParams;", "getDrawableTextViewParams", "()Lcom/skydoves/balloon/vectortext/VectorTextViewParams;", "setDrawableTextViewParams", "(Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V", "balloon_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorTextView extends AppCompatTextView {
    public VectorTextViewParams drawableTextViewParams;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.VectorTextView);
            obtainStyledAttributes.getClass();
            setDrawableTextViewParams(new VectorTextViewParams(DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(5, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(1, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(0, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(7, Integer.MIN_VALUE)), null, null, null, null, DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(3, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getColor(6, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(8, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(2, Integer.MIN_VALUE)), DpKt.takeIfNotNoIntValue(obtainStyledAttributes.getResourceId(4, Integer.MIN_VALUE)), 8176));
            obtainStyledAttributes.recycle();
        }
    }

    public final VectorTextViewParams getDrawableTextViewParams() {
        return this.drawableTextViewParams;
    }

    public final void setDrawableTextViewParams(VectorTextViewParams vectorTextViewParams) {
        if (vectorTextViewParams != null) {
            UStringsKt.applyDrawable(this, vectorTextViewParams);
        } else {
            vectorTextViewParams = null;
        }
        this.drawableTextViewParams = vectorTextViewParams;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VectorTextView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        context.getClass();
    }

    public /* synthetic */ VectorTextView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }
}
