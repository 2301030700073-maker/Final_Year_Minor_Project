package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.glance.appwidget.protobuf.CodedInputStream;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InsetsAnimationCallback extends CodedInputStream {
    public int startTranslationY;
    public int startY;
    public final int[] tmpLocation;
    public final View view;

    public InsetsAnimationCallback(View view) {
        super(0);
        this.tmpLocation = new int[2];
        this.view = view;
    }

    @Override // androidx.glance.appwidget.protobuf.CodedInputStream
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.view.setTranslationY(RecyclerView.DECELERATION_RATE);
    }

    @Override // androidx.glance.appwidget.protobuf.CodedInputStream
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.view;
        int[] iArr = this.tmpLocation;
        view.getLocationOnScreen(iArr);
        this.startY = iArr[1];
    }

    @Override // androidx.glance.appwidget.protobuf.CodedInputStream
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((WindowInsetsAnimationCompat) it.next()).mImpl.getTypeMask() & 8) != 0) {
                this.view.setTranslationY(AnimationUtils.lerp(this.startTranslationY, r0.mImpl.getInterpolatedFraction(), 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.glance.appwidget.protobuf.CodedInputStream
    public final CardView.AnonymousClass1 onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, CardView.AnonymousClass1 anonymousClass1) {
        View view = this.view;
        int[] iArr = this.tmpLocation;
        view.getLocationOnScreen(iArr);
        int i = this.startY - iArr[1];
        this.startTranslationY = i;
        view.setTranslationY(i);
        return anonymousClass1;
    }
}
