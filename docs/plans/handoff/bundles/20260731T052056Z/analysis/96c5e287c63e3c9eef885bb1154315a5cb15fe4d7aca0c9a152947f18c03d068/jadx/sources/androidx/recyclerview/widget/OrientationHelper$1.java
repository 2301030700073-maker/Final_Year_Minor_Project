package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OrientationHelper$1 extends RoomOpenDelegate {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OrientationHelper$1(RecyclerView.LayoutManager layoutManager, int i) {
        super(layoutManager);
        this.$r8$classId = i;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getDecoratedEnd(View view) {
        int decoratedRight;
        int i;
        int i2 = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i2) {
            case 0:
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedRight = RecyclerView.LayoutManager.getDecoratedRight(view);
                i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                break;
            default:
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedRight = RecyclerView.LayoutManager.getDecoratedBottom(view);
                i = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                break;
        }
        return decoratedRight + i;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getDecoratedMeasurement(View view) {
        int decoratedMeasuredWidth;
        int i;
        int i2 = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i2) {
            case 0:
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedMeasuredWidth = RecyclerView.LayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                break;
            default:
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedMeasuredWidth = RecyclerView.LayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                i = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                break;
        }
        return decoratedMeasuredWidth + i;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getDecoratedMeasurementInOther(View view) {
        int decoratedMeasuredHeight;
        int i;
        int i2 = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i2) {
            case 0:
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedMeasuredHeight = RecyclerView.LayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                i = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                break;
            default:
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedMeasuredHeight = RecyclerView.LayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                break;
        }
        return decoratedMeasuredHeight + i;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getDecoratedStart(View view) {
        int decoratedLeft;
        int i;
        int i2 = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i2) {
            case 0:
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedLeft = RecyclerView.LayoutManager.getDecoratedLeft(view);
                i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                break;
            default:
                RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                ((RecyclerView.LayoutManager) obj).getClass();
                decoratedLeft = RecyclerView.LayoutManager.getDecoratedTop(view);
                i = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                break;
        }
        return decoratedLeft - i;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getEnd() {
        switch (this.$r8$classId) {
            case 0:
                return ((RecyclerView.LayoutManager) this.identityHash).mWidth;
            default:
                return ((RecyclerView.LayoutManager) this.identityHash).mHeight;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getEndAfterPadding() {
        int i;
        int paddingRight;
        int i2 = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i2) {
            case 0:
                RecyclerView.LayoutManager layoutManager = (RecyclerView.LayoutManager) obj;
                i = layoutManager.mWidth;
                paddingRight = layoutManager.getPaddingRight();
                break;
            default:
                RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                i = layoutManager2.mHeight;
                paddingRight = layoutManager2.getPaddingBottom();
                break;
        }
        return i - paddingRight;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getEndPadding() {
        switch (this.$r8$classId) {
            case 0:
                return ((RecyclerView.LayoutManager) this.identityHash).getPaddingRight();
            default:
                return ((RecyclerView.LayoutManager) this.identityHash).getPaddingBottom();
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getMode() {
        switch (this.$r8$classId) {
            case 0:
                return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
            default:
                return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getModeInOther() {
        switch (this.$r8$classId) {
            case 0:
                return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
            default:
                return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getStartAfterPadding() {
        switch (this.$r8$classId) {
            case 0:
                return ((RecyclerView.LayoutManager) this.identityHash).getPaddingLeft();
            default:
                return ((RecyclerView.LayoutManager) this.identityHash).getPaddingTop();
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getTotalSpace() {
        int paddingLeft;
        int paddingRight;
        int i = this.$r8$classId;
        Object obj = this.identityHash;
        switch (i) {
            case 0:
                RecyclerView.LayoutManager layoutManager = (RecyclerView.LayoutManager) obj;
                paddingLeft = layoutManager.mWidth - layoutManager.getPaddingLeft();
                paddingRight = layoutManager.getPaddingRight();
                break;
            default:
                RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                paddingLeft = layoutManager2.mHeight - layoutManager2.getPaddingTop();
                paddingRight = layoutManager2.getPaddingBottom();
                break;
        }
        return paddingLeft - paddingRight;
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getTransformedEndWithDecoration(View view) {
        int i = this.$r8$classId;
        Object obj = this.legacyIdentityHash;
        Object obj2 = this.identityHash;
        switch (i) {
            case 0:
                Rect rect = (Rect) obj;
                ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(view, rect);
                return rect.right;
            default:
                Rect rect2 = (Rect) obj;
                ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final int getTransformedStartWithDecoration(View view) {
        int i = this.$r8$classId;
        Object obj = this.legacyIdentityHash;
        Object obj2 = this.identityHash;
        switch (i) {
            case 0:
                Rect rect = (Rect) obj;
                ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(view, rect);
                return rect.left;
            default:
                Rect rect2 = (Rect) obj;
                ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(view, rect2);
                return rect2.top;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void offsetChildren(int i) {
        switch (this.$r8$classId) {
            case 0:
                ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenHorizontal(i);
                break;
            default:
                ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenVertical(i);
                break;
        }
    }
}
