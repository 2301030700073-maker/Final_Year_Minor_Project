package androidx.room;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RoomOpenDelegate {
    public final Object identityHash;
    public final Object legacyIdentityHash;
    public int version;

    public RoomOpenDelegate(RecyclerView.LayoutManager layoutManager) {
        this.version = Integer.MIN_VALUE;
        this.legacyIdentityHash = new Rect();
        this.identityHash = layoutManager;
    }

    public static RoomOpenDelegate createOrientationHelper(final RecyclerView.LayoutManager layoutManager, int i) {
        if (i == 0) {
            final int i2 = 0;
            return new RoomOpenDelegate(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper$1
                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedEnd(View view) {
                    int decoratedRight;
                    int i3;
                    int i4 = i2;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedRight = RecyclerView.LayoutManager.getDecoratedRight(view);
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedRight = RecyclerView.LayoutManager.getDecoratedBottom(view);
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                            break;
                    }
                    return decoratedRight + i3;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedMeasurement(View view) {
                    int measuredWidth;
                    int i3;
                    int i4 = i2;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredWidth = view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredWidth = view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                            break;
                    }
                    return measuredWidth + i3;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedMeasurementInOther(View view) {
                    int measuredHeight;
                    int i3;
                    int i4 = i2;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredHeight = view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredHeight = view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            break;
                    }
                    return measuredHeight + i3;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedStart(View view) {
                    int decoratedLeft;
                    int i3;
                    int i4 = i2;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedLeft = RecyclerView.LayoutManager.getDecoratedLeft(view);
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedLeft = RecyclerView.LayoutManager.getDecoratedTop(view);
                            i3 = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                            break;
                    }
                    return decoratedLeft - i3;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEnd() {
                    switch (i2) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidth;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeight;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEndAfterPadding() {
                    int i3;
                    int paddingRight;
                    int i4 = i2;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                            i3 = layoutManager2.mWidth;
                            paddingRight = layoutManager2.getPaddingRight();
                            break;
                        default:
                            RecyclerView.LayoutManager layoutManager3 = (RecyclerView.LayoutManager) obj;
                            i3 = layoutManager3.mHeight;
                            paddingRight = layoutManager3.getPaddingBottom();
                            break;
                    }
                    return i3 - paddingRight;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEndPadding() {
                    switch (i2) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).getPaddingRight();
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).getPaddingBottom();
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getMode() {
                    switch (i2) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getModeInOther() {
                    switch (i2) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getStartAfterPadding() {
                    switch (i2) {
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
                    int i3 = i2;
                    Object obj = this.identityHash;
                    switch (i3) {
                        case 0:
                            RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                            paddingLeft = layoutManager2.mWidth - layoutManager2.getPaddingLeft();
                            paddingRight = layoutManager2.getPaddingRight();
                            break;
                        default:
                            RecyclerView.LayoutManager layoutManager3 = (RecyclerView.LayoutManager) obj;
                            paddingLeft = layoutManager3.mHeight - layoutManager3.getPaddingTop();
                            paddingRight = layoutManager3.getPaddingBottom();
                            break;
                    }
                    return paddingLeft - paddingRight;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getTransformedEndWithDecoration(View view) {
                    int i3 = i2;
                    Object obj = this.legacyIdentityHash;
                    Object obj2 = this.identityHash;
                    switch (i3) {
                        case 0:
                            Rect rect = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect, view);
                            return rect.right;
                        default:
                            Rect rect2 = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect2, view);
                            return rect2.bottom;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getTransformedStartWithDecoration(View view) {
                    int i3 = i2;
                    Object obj = this.legacyIdentityHash;
                    Object obj2 = this.identityHash;
                    switch (i3) {
                        case 0:
                            Rect rect = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect, view);
                            return rect.left;
                        default:
                            Rect rect2 = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect2, view);
                            return rect2.top;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final void offsetChildren(int i3) {
                    switch (i2) {
                        case 0:
                            ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenHorizontal(i3);
                            break;
                        default:
                            ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenVertical(i3);
                            break;
                    }
                }
            };
        }
        final int i3 = 1;
        if (i == 1) {
            return new RoomOpenDelegate(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper$1
                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedEnd(View view) {
                    int decoratedRight;
                    int i32;
                    int i4 = i3;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedRight = RecyclerView.LayoutManager.getDecoratedRight(view);
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedRight = RecyclerView.LayoutManager.getDecoratedBottom(view);
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                            break;
                    }
                    return decoratedRight + i32;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedMeasurement(View view) {
                    int measuredWidth;
                    int i32;
                    int i4 = i3;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredWidth = view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredWidth = view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                            break;
                    }
                    return measuredWidth + i32;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedMeasurementInOther(View view) {
                    int measuredHeight;
                    int i32;
                    int i4 = i3;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredHeight = view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            Rect rect2 = ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets;
                            measuredHeight = view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            break;
                    }
                    return measuredHeight + i32;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getDecoratedStart(View view) {
                    int decoratedLeft;
                    int i32;
                    int i4 = i3;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedLeft = RecyclerView.LayoutManager.getDecoratedLeft(view);
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                            break;
                        default:
                            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
                            ((RecyclerView.LayoutManager) obj).getClass();
                            decoratedLeft = RecyclerView.LayoutManager.getDecoratedTop(view);
                            i32 = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
                            break;
                    }
                    return decoratedLeft - i32;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEnd() {
                    switch (i3) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidth;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeight;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEndAfterPadding() {
                    int i32;
                    int paddingRight;
                    int i4 = i3;
                    Object obj = this.identityHash;
                    switch (i4) {
                        case 0:
                            RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                            i32 = layoutManager2.mWidth;
                            paddingRight = layoutManager2.getPaddingRight();
                            break;
                        default:
                            RecyclerView.LayoutManager layoutManager3 = (RecyclerView.LayoutManager) obj;
                            i32 = layoutManager3.mHeight;
                            paddingRight = layoutManager3.getPaddingBottom();
                            break;
                    }
                    return i32 - paddingRight;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getEndPadding() {
                    switch (i3) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).getPaddingRight();
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).getPaddingBottom();
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getMode() {
                    switch (i3) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getModeInOther() {
                    switch (i3) {
                        case 0:
                            return ((RecyclerView.LayoutManager) this.identityHash).mHeightMode;
                        default:
                            return ((RecyclerView.LayoutManager) this.identityHash).mWidthMode;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getStartAfterPadding() {
                    switch (i3) {
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
                    int i32 = i3;
                    Object obj = this.identityHash;
                    switch (i32) {
                        case 0:
                            RecyclerView.LayoutManager layoutManager2 = (RecyclerView.LayoutManager) obj;
                            paddingLeft = layoutManager2.mWidth - layoutManager2.getPaddingLeft();
                            paddingRight = layoutManager2.getPaddingRight();
                            break;
                        default:
                            RecyclerView.LayoutManager layoutManager3 = (RecyclerView.LayoutManager) obj;
                            paddingLeft = layoutManager3.mHeight - layoutManager3.getPaddingTop();
                            paddingRight = layoutManager3.getPaddingBottom();
                            break;
                    }
                    return paddingLeft - paddingRight;
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getTransformedEndWithDecoration(View view) {
                    int i32 = i3;
                    Object obj = this.legacyIdentityHash;
                    Object obj2 = this.identityHash;
                    switch (i32) {
                        case 0:
                            Rect rect = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect, view);
                            return rect.right;
                        default:
                            Rect rect2 = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect2, view);
                            return rect2.bottom;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final int getTransformedStartWithDecoration(View view) {
                    int i32 = i3;
                    Object obj = this.legacyIdentityHash;
                    Object obj2 = this.identityHash;
                    switch (i32) {
                        case 0:
                            Rect rect = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect, view);
                            return rect.left;
                        default:
                            Rect rect2 = (Rect) obj;
                            ((RecyclerView.LayoutManager) obj2).getTransformedBoundingBox(rect2, view);
                            return rect2.top;
                    }
                }

                @Override // androidx.room.RoomOpenDelegate
                public final void offsetChildren(int i32) {
                    switch (i3) {
                        case 0:
                            ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenHorizontal(i32);
                            break;
                        default:
                            ((RecyclerView.LayoutManager) this.identityHash).offsetChildrenVertical(i32);
                            break;
                    }
                }
            };
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("invalid orientation");
        return null;
    }

    public abstract void createAllTables(SQLiteConnection sQLiteConnection);

    public abstract void dropAllTables(SQLiteConnection sQLiteConnection);

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChildren(int i);

    public abstract void onCreate(SQLiteConnection sQLiteConnection);

    public abstract void onOpen(SQLiteConnection sQLiteConnection);

    public abstract void onPostMigrate(SQLiteConnection sQLiteConnection);

    public abstract void onPreMigrate(SQLiteConnection sQLiteConnection);

    public abstract Composer onValidateSchema(SQLiteConnection sQLiteConnection);

    public RoomOpenDelegate(String str, int i, String str2) {
        this.version = i;
        this.identityHash = str;
        this.legacyIdentityHash = str2;
    }

    public RoomOpenDelegate(EmojiCompat.MetadataRepoLoader metadataRepoLoader) {
        this.version = 0;
        this.legacyIdentityHash = new DefaultGlyphChecker();
        this.identityHash = metadataRepoLoader;
    }
}
