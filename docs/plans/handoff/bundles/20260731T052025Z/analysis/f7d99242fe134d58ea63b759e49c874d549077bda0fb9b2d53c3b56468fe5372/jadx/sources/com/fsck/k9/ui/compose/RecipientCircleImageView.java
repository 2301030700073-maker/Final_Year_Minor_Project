package com.fsck.k9.ui.compose;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import de.hdodenhof.circleimageview.CircleImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientCircleImageView extends CircleImageView {
    public OnSetImageDrawableListener onSetImageDrawableListener;

    public /* synthetic */ RecipientCircleImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final OnSetImageDrawableListener getOnSetImageDrawableListener() {
        return this.onSetImageDrawableListener;
    }

    @Override // de.hdodenhof.circleimageview.CircleImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        OnSetImageDrawableListener onSetImageDrawableListener = this.onSetImageDrawableListener;
        if (onSetImageDrawableListener != null) {
            ((RecipientSelectView) ((MaterialButton$$ExternalSyntheticLambda0) onSetImageDrawableListener).f$0).redrawTokens();
        }
    }

    public final void setOnSetImageDrawableListener(OnSetImageDrawableListener onSetImageDrawableListener) {
        this.onSetImageDrawableListener = onSetImageDrawableListener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RecipientCircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecipientCircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RecipientCircleImageView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }
}
