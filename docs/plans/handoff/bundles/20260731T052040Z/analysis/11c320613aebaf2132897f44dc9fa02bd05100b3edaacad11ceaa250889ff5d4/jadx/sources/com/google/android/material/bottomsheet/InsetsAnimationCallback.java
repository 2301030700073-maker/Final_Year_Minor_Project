package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.common.collect.ImmutableSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InsetsAnimationCallback extends ImmutableSet.SetBuilderImpl {
    public int startTranslationY;
    public int startY;
    public final int[] tmpLocation;
    public final View view;

    public InsetsAnimationCallback(View view) {
        super(0, 1);
        this.tmpLocation = new int[2];
        this.view = view;
    }

    @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.view.setTranslationY(0.0f);
    }

    @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.view;
        int[] iArr = this.tmpLocation;
        view.getLocationOnScreen(iArr);
        this.startY = iArr[1];
    }

    @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((WindowInsetsAnimationCompat) it.next()).mImpl.getTypeMask() & 8) != 0) {
                this.view.setTranslationY(AnimationUtils.lerp(r0.mImpl.getInterpolatedFraction(), this.startTranslationY, 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
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
