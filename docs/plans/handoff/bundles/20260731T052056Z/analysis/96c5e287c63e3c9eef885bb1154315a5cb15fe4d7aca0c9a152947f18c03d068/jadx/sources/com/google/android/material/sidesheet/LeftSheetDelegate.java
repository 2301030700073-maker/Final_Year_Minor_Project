package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LeftSheetDelegate extends TuplesKt {
    public final /* synthetic */ int $r8$classId;
    public final SideSheetBehavior sheetBehavior;

    public /* synthetic */ LeftSheetDelegate(SideSheetBehavior sideSheetBehavior, int i) {
        this.$r8$classId = i;
        this.sheetBehavior = sideSheetBehavior;
    }

    @Override // kotlin.TuplesKt
    public final int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.$r8$classId) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // kotlin.TuplesKt
    public final float calculateSlideOffset(int i) {
        switch (this.$r8$classId) {
            case 0:
                float hiddenOffset = getHiddenOffset();
                return (i - hiddenOffset) / (getExpandedOffset() - hiddenOffset);
            default:
                float f = this.sheetBehavior.parentWidth;
                return (f - i) / (f - getExpandedOffset());
        }
    }

    @Override // kotlin.TuplesKt
    public final int getCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.$r8$classId) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // kotlin.TuplesKt
    public final int getExpandedOffset() {
        int i = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i) {
            case 0:
                return Math.max(0, sideSheetBehavior.parentInnerEdge + sideSheetBehavior.innerMargin);
            default:
                return Math.max(0, (sideSheetBehavior.parentWidth - sideSheetBehavior.childWidth) - sideSheetBehavior.innerMargin);
        }
    }

    @Override // kotlin.TuplesKt
    public final int getHiddenOffset() {
        int i = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i) {
            case 0:
                return (-sideSheetBehavior.childWidth) - sideSheetBehavior.innerMargin;
            default:
                return sideSheetBehavior.parentWidth;
        }
    }

    @Override // kotlin.TuplesKt
    public final int getMaxViewPositionHorizontal() {
        int i = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i) {
            case 0:
                return sideSheetBehavior.innerMargin;
            default:
                return sideSheetBehavior.parentWidth;
        }
    }

    @Override // kotlin.TuplesKt
    public final int getMinViewPositionHorizontal() {
        switch (this.$r8$classId) {
            case 0:
                return -this.sheetBehavior.childWidth;
            default:
                return getExpandedOffset();
        }
    }

    @Override // kotlin.TuplesKt
    public final int getOuterEdge(View view) {
        int i = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i) {
            case 0:
                return view.getRight() + sideSheetBehavior.innerMargin;
            default:
                return view.getLeft() - sideSheetBehavior.innerMargin;
        }
    }

    @Override // kotlin.TuplesKt
    public final int getParentInnerEdge(CoordinatorLayout coordinatorLayout) {
        switch (this.$r8$classId) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // kotlin.TuplesKt
    public final int getSheetEdge() {
        switch (this.$r8$classId) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // kotlin.TuplesKt
    public final boolean isExpandingOutwards(float f) {
        switch (this.$r8$classId) {
            case 0:
                if (f > RecyclerView.DECELERATION_RATE) {
                }
                break;
            default:
                if (f < RecyclerView.DECELERATION_RATE) {
                }
                break;
        }
        return false;
    }

    @Override // kotlin.TuplesKt
    public final boolean isReleasedCloseToInnerEdge(View view) {
        switch (this.$r8$classId) {
            case 0:
                if (view.getRight() < (getExpandedOffset() - getHiddenOffset()) / 2) {
                    break;
                }
                break;
            default:
                if (view.getLeft() > (getExpandedOffset() + this.sheetBehavior.parentWidth) / 2) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // kotlin.TuplesKt
    public final boolean isSwipeSignificant(float f, float f2) {
        switch (this.$r8$classId) {
            case 0:
                if (Math.abs(f) <= Math.abs(f2) || Math.abs(f) <= 500.0f) {
                }
                break;
            default:
                if (Math.abs(f) <= Math.abs(f2) || Math.abs(f) <= 500.0f) {
                }
                break;
        }
        return false;
    }

    @Override // kotlin.TuplesKt
    public final boolean shouldHide(View view, float f) {
        int i = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i) {
            case 0:
                if (Math.abs((f * sideSheetBehavior.hideFriction) + view.getLeft()) > 0.5f) {
                    break;
                }
                break;
            default:
                if (Math.abs((f * sideSheetBehavior.hideFriction) + view.getRight()) > 0.5f) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // kotlin.TuplesKt
    public final void updateCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        switch (this.$r8$classId) {
            case 0:
                marginLayoutParams.leftMargin = i;
                break;
            default:
                marginLayoutParams.rightMargin = i;
                break;
        }
    }

    @Override // kotlin.TuplesKt
    public final void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int i3 = this.$r8$classId;
        SideSheetBehavior sideSheetBehavior = this.sheetBehavior;
        switch (i3) {
            case 0:
                if (i <= sideSheetBehavior.parentWidth) {
                    marginLayoutParams.leftMargin = i2;
                    break;
                }
                break;
            default:
                int i4 = sideSheetBehavior.parentWidth;
                if (i <= i4) {
                    marginLayoutParams.rightMargin = i4 - i;
                    break;
                }
                break;
        }
    }
}
