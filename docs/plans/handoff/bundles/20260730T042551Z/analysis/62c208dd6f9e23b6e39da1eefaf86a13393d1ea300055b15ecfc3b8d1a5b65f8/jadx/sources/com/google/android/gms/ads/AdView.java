package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class AdView extends BaseAdView {
    public AdView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final VideoController zza() {
        return this.f9510do.zzf();
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }
}
