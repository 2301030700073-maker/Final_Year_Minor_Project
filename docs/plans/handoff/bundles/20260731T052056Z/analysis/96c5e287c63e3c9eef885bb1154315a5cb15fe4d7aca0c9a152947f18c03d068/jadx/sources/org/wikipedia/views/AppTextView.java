package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.material.textview.MaterialTextView;
import kotlin.Metadata;
import org.wikipedia.R$styleable;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/views/AppTextView;", "Lcom/google/android/material/textview/MaterialTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class AppTextView extends MaterialTextView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppTextView);
        obtainStyledAttributes.getClass();
        StringUtil stringUtil = StringUtil.INSTANCE;
        Spanned fromHtml = StringUtil.fromHtml(obtainStyledAttributes.getString(0));
        obtainStyledAttributes.recycle();
        setText(fromHtml);
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (Build.VERSION.SDK_INT == 23 && motionEvent.getActionMasked() == 0 && getSelectionStart() != getSelectionEnd()) {
            CharSequence text = getText();
            setText((CharSequence) null);
            setText(text);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return true;
        }
    }
}
