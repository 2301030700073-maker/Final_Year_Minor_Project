package com.fsck.k9.ui.compose;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.fsck.k9.R;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientTokenLayout extends ViewGroup {
    public View background;
    public View contactPicture;
    public View cryptoStatus;
    public View recipientName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecipientTokenLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    @Override // android.view.View
    public int getBaseline() {
        View view = this.recipientName;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        int top = view.getTop();
        View view2 = this.recipientName;
        if (view2 != null) {
            return view2.getBaseline() + top;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recipientName");
        throw null;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.background);
        findViewById.getClass();
        this.background = findViewById;
        View findViewById2 = findViewById(R.id.contact_photo);
        findViewById2.getClass();
        this.contactPicture = findViewById2;
        View findViewById3 = findViewById(android.R.id.text1);
        findViewById3.getClass();
        this.recipientName = findViewById3;
        View findViewById4 = findViewById(R.id.crypto_status_container);
        findViewById4.getClass();
        this.cryptoStatus = findViewById4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int height = getHeight();
        View view = this.background;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("background");
            throw null;
        }
        view.layout(height / 2, 0, getWidth(), getHeight());
        View view2 = this.contactPicture;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contactPicture");
            throw null;
        }
        view2.layout(0, 0, height, height);
        View view3 = this.recipientName;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        int measuredHeight = view3.getMeasuredHeight();
        int height2 = (getHeight() - measuredHeight) / 2;
        View view4 = this.recipientName;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        view4.layout(height, height2, view4.getMeasuredWidth() + height, measuredHeight + height2);
        View view5 = this.cryptoStatus;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cryptoStatus");
            throw null;
        }
        int width = getWidth();
        View view6 = this.cryptoStatus;
        if (view6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cryptoStatus");
            throw null;
        }
        int measuredWidth = width - view6.getMeasuredWidth();
        int width2 = getWidth();
        View view7 = this.cryptoStatus;
        if (view7 != null) {
            view5.layout(measuredWidth, 0, width2, view7.getMeasuredHeight());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("cryptoStatus");
            throw null;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View view = this.recipientName;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        view.measure(i, i2);
        View view2 = this.cryptoStatus;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cryptoStatus");
            throw null;
        }
        view2.measure(i, i2);
        View view3 = this.recipientName;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        int measuredHeight = view3.getMeasuredHeight();
        int minimumHeight = getMinimumHeight();
        if (measuredHeight < minimumHeight) {
            measuredHeight = minimumHeight;
        }
        View view4 = this.cryptoStatus;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cryptoStatus");
            throw null;
        }
        int measuredWidth = view4.getMeasuredWidth() + measuredHeight;
        View view5 = this.recipientName;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        int measuredWidth2 = view5.getMeasuredWidth() + measuredWidth;
        if (View.MeasureSpec.getMode(i) == 0) {
            setMeasuredDimension(measuredWidth2, measuredHeight);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        if (measuredWidth2 > size) {
            measuredWidth2 = size;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2 - measuredWidth, Integer.MIN_VALUE);
        View view6 = this.recipientName;
        if (view6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recipientName");
            throw null;
        }
        view6.measure(makeMeasureSpec, i2);
        setMeasuredDimension(measuredWidth2, measuredHeight);
    }
}
