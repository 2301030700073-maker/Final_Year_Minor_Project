package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.work.Data;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HideLeftViewOnScrollDelegate extends Data.Companion {
    public final /* synthetic */ int $r8$classId;

    @Override // androidx.work.Data.Companion
    public final int getSize(View view, ViewGroup.MarginLayoutParams marginLayoutParams) {
        int measuredWidth;
        int i;
        switch (this.$r8$classId) {
            case 0:
                measuredWidth = view.getMeasuredWidth();
                i = marginLayoutParams.leftMargin;
                break;
            case 1:
                measuredWidth = view.getMeasuredHeight();
                i = marginLayoutParams.bottomMargin;
                break;
            default:
                measuredWidth = view.getMeasuredWidth();
                i = marginLayoutParams.rightMargin;
                break;
        }
        return measuredWidth + i;
    }

    @Override // androidx.work.Data.Companion
    public final int getViewEdge() {
        switch (this.$r8$classId) {
            case 0:
                return 2;
            case 1:
                return 1;
            default:
                return 0;
        }
    }

    @Override // androidx.work.Data.Companion
    public final ViewPropertyAnimator getViewTranslationAnimator(View view, int i) {
        switch (this.$r8$classId) {
            case 0:
                return view.animate().translationX(-i);
            case 1:
                return view.animate().translationY(i);
            default:
                return view.animate().translationX(i);
        }
    }
}
