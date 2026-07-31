package com.google.android.material.behavior;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.room.Room;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HideLeftViewOnScrollDelegate extends Room {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HideLeftViewOnScrollDelegate(int i) {
        super(20);
        this.$r8$classId = i;
    }

    @Override // androidx.room.Room
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

    @Override // androidx.room.Room
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

    @Override // androidx.room.Room
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
