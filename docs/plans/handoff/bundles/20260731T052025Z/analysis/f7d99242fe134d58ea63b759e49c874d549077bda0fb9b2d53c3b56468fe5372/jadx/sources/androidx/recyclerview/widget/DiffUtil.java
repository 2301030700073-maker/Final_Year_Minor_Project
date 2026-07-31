package androidx.recyclerview.widget;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DiffUtil {
    public static final ViewPager.AnonymousClass1 DIAGONAL_COMPARATOR = new ViewPager.AnonymousClass1(4);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Diagonal {
        public final int size;
        public final int x;
        public final int y;

        public Diagonal(int i, int i2, int i3) {
            this.x = i;
            this.y = i2;
            this.size = i3;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DiffResult {
        public final DiffUtil mCallback;
        public final boolean mDetectMoves;
        public final ArrayList mDiagonals;
        public final int[] mNewItemStatuses;
        public final int mNewListSize;
        public final int[] mOldItemStatuses;
        public final int mOldListSize;

        public DiffResult(DiffUtil diffUtil, ArrayList arrayList, int[] iArr, int[] iArr2) {
            int i;
            Diagonal diagonal;
            int i2;
            this.mDiagonals = arrayList;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = diffUtil;
            int oldListSize = diffUtil.getOldListSize();
            this.mOldListSize = oldListSize;
            int newListSize = diffUtil.getNewListSize();
            this.mNewListSize = newListSize;
            this.mDetectMoves = true;
            Diagonal diagonal2 = arrayList.isEmpty() ? null : (Diagonal) arrayList.get(0);
            if (diagonal2 == null || diagonal2.x != 0 || diagonal2.y != 0) {
                arrayList.add(0, new Diagonal(0, 0, 0));
            }
            arrayList.add(new Diagonal(oldListSize, newListSize, 0));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Diagonal diagonal3 = (Diagonal) it.next();
                for (int i3 = 0; i3 < diagonal3.size; i3++) {
                    int i4 = diagonal3.x + i3;
                    int i5 = diagonal3.y + i3;
                    int i6 = diffUtil.areContentsTheSame(i4, i5) ? 1 : 2;
                    iArr[i4] = (i5 << 4) | i6;
                    iArr2[i5] = (i4 << 4) | i6;
                }
            }
            if (this.mDetectMoves) {
                Iterator it2 = arrayList.iterator();
                int i7 = 0;
                while (it2.hasNext()) {
                    Diagonal diagonal4 = (Diagonal) it2.next();
                    while (true) {
                        i = diagonal4.x;
                        if (i7 < i) {
                            if (iArr[i7] == 0) {
                                int size = arrayList.size();
                                int i8 = 0;
                                int i9 = 0;
                                while (true) {
                                    if (i8 < size) {
                                        diagonal = (Diagonal) arrayList.get(i8);
                                        while (true) {
                                            i2 = diagonal.y;
                                            if (i9 < i2) {
                                                if (iArr2[i9] == 0 && diffUtil.areItemsTheSame(i7, i9)) {
                                                    int i10 = diffUtil.areContentsTheSame(i7, i9) ? 8 : 4;
                                                    iArr[i7] = (i9 << 4) | i10;
                                                    iArr2[i9] = i10 | (i7 << 4);
                                                } else {
                                                    i9++;
                                                }
                                            }
                                        }
                                    }
                                    i9 = diagonal.size + i2;
                                    i8++;
                                }
                            }
                            i7++;
                        }
                    }
                    i7 = diagonal4.size + i;
                }
            }
        }

        public static PostponedUpdate getPostponedUpdate(ArrayDeque arrayDeque, int i, boolean z) {
            PostponedUpdate postponedUpdate;
            Iterator it = arrayDeque.iterator();
            while (true) {
                if (!it.hasNext()) {
                    postponedUpdate = null;
                    break;
                }
                postponedUpdate = (PostponedUpdate) it.next();
                if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate postponedUpdate2 = (PostponedUpdate) it.next();
                if (z) {
                    postponedUpdate2.currentPos--;
                } else {
                    postponedUpdate2.currentPos++;
                }
            }
            return postponedUpdate;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            int[] iArr;
            DiffUtil diffUtil;
            int i;
            Object[] objArr;
            ArrayList arrayList;
            int i2;
            BatchingListUpdateCallback batchingListUpdateCallback = new BatchingListUpdateCallback(new Fragment.AnonymousClass7(adapter));
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayList arrayList2 = this.mDiagonals;
            boolean z = true;
            int size = arrayList2.size() - 1;
            int i3 = this.mOldListSize;
            int i4 = this.mNewListSize;
            int i5 = i3;
            while (size >= 0) {
                Diagonal diagonal = (Diagonal) arrayList2.get(size);
                int i6 = diagonal.x;
                int i7 = diagonal.y;
                int i8 = diagonal.size;
                int i9 = i6 + i8;
                int i10 = i7 + i8;
                while (true) {
                    iArr = this.mOldItemStatuses;
                    diffUtil = this.mCallback;
                    boolean z2 = z;
                    if (i5 <= i9) {
                        break;
                    }
                    i5--;
                    int i11 = iArr[i5];
                    if ((i11 & 12) != 0) {
                        arrayList = arrayList2;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i11 >> 4, false);
                        if (postponedUpdate != null) {
                            int i12 = (i3 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(i5, i12);
                            if ((i11 & 4) != 0) {
                                diffUtil.getClass();
                                batchingListUpdateCallback.onChanged(i12, z2 ? 1 : 0);
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i5, (i3 - i5) - (z2 ? 1 : 0), z2));
                        }
                    } else {
                        arrayList = arrayList2;
                        if (batchingListUpdateCallback.mLastEventType != 2 || (i2 = batchingListUpdateCallback.mLastEventPosition) < i5 || i2 > i5 + 1) {
                            batchingListUpdateCallback.dispatchLastEvent();
                            batchingListUpdateCallback.mLastEventPosition = i5;
                            batchingListUpdateCallback.mLastEventCount = 1;
                            batchingListUpdateCallback.mLastEventType = 2;
                        } else {
                            batchingListUpdateCallback.mLastEventCount++;
                            batchingListUpdateCallback.mLastEventPosition = i5;
                        }
                        i3--;
                    }
                    arrayList2 = arrayList;
                    z = true;
                }
                ArrayList arrayList3 = arrayList2;
                while (i4 > i10) {
                    i4--;
                    int i13 = this.mNewItemStatuses[i4];
                    if ((i13 & 12) != 0) {
                        if (getPostponedUpdate(arrayDeque, i13 >> 4, true) == null) {
                            objArr = true;
                            arrayDeque.add(new PostponedUpdate(i4, i3 - i5, false));
                        } else {
                            objArr = true;
                            batchingListUpdateCallback.onMoved((i3 - r12.currentPos) - 1, i5);
                            if ((i13 & 4) != 0) {
                                diffUtil.getClass();
                                batchingListUpdateCallback.onChanged(i5, 1);
                            }
                        }
                    } else {
                        if (batchingListUpdateCallback.mLastEventType == 1 && i5 >= (i = batchingListUpdateCallback.mLastEventPosition)) {
                            int i14 = batchingListUpdateCallback.mLastEventCount;
                            if (i5 <= i + i14) {
                                batchingListUpdateCallback.mLastEventCount = i14 + 1;
                                batchingListUpdateCallback.mLastEventPosition = Math.min(i5, i);
                                i3++;
                            }
                        }
                        batchingListUpdateCallback.dispatchLastEvent();
                        batchingListUpdateCallback.mLastEventPosition = i5;
                        batchingListUpdateCallback.mLastEventCount = 1;
                        batchingListUpdateCallback.mLastEventType = 1;
                        i3++;
                    }
                }
                int i15 = i6;
                for (int i16 = 0; i16 < i8; i16++) {
                    if ((iArr[i15] & 15) == 2) {
                        diffUtil.getClass();
                        batchingListUpdateCallback.onChanged(i15, 1);
                    }
                    i15++;
                }
                size--;
                z = true;
                i5 = i6;
                i4 = i7;
                arrayList2 = arrayList3;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PostponedUpdate {
        public int currentPos;
        public final int posInOwnerList;
        public final boolean removal;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Range {
        public int newListEnd;
        public int newListStart;
        public int oldListEnd;
        public int oldListStart;

        public final int newSize() {
            return this.newListEnd - this.newListStart;
        }

        public final int oldSize() {
            return this.oldListEnd - this.oldListStart;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        public final int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }
    }

    public static DiffResult calculateDiff(DiffUtil diffUtil) {
        int i;
        Snake snake;
        Range range;
        int i2;
        int i3;
        Snake snake2;
        Snake snake3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int oldListSize = diffUtil.getOldListSize();
        int newListSize = diffUtil.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Range range2 = new Range();
        int i13 = 0;
        range2.oldListStart = 0;
        range2.oldListEnd = oldListSize;
        range2.newListStart = 0;
        range2.newListEnd = newListSize;
        arrayList2.add(range2);
        int i14 = oldListSize + newListSize;
        int i15 = 1;
        int i16 = (((i14 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i16];
        int i17 = i16 / 2;
        int[] iArr2 = new int[i16];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range3 = (Range) Modifier.CC.m(i15, arrayList2);
            if (range3.oldSize() >= i15 && range3.newSize() >= i15) {
                int newSize = ((range3.newSize() + range3.oldSize()) + i15) / 2;
                int i18 = i15 + i17;
                iArr[i18] = range3.oldListStart;
                iArr2[i18] = range3.oldListEnd;
                int i19 = i13;
                while (i19 < newSize) {
                    int i20 = Math.abs(range3.oldSize() - range3.newSize()) % 2 == i15 ? i15 : i13;
                    int oldSize = range3.oldSize() - range3.newSize();
                    int i21 = -i19;
                    int i22 = i21;
                    while (true) {
                        if (i22 > i19) {
                            i2 = i13;
                            i = i17;
                            i3 = newSize;
                            snake2 = null;
                            break;
                        }
                        if (i22 == i21 || (i22 != i19 && iArr[i22 + 1 + i17] > iArr[(i22 - 1) + i17])) {
                            i8 = iArr[i22 + 1 + i17];
                            i9 = i8;
                        } else {
                            i8 = iArr[(i22 - 1) + i17];
                            i9 = i8 + 1;
                        }
                        i = i17;
                        int i23 = ((i9 - range3.oldListStart) + range3.newListStart) - i22;
                        if (i19 == 0 || i9 != i8) {
                            i10 = i9;
                            i11 = i23;
                        } else {
                            i10 = i9;
                            i11 = i23 - 1;
                        }
                        int i24 = i22;
                        int i25 = i23;
                        int i26 = i10;
                        i3 = newSize;
                        while (i26 < range3.oldListEnd && i25 < range3.newListEnd && diffUtil.areItemsTheSame(i26, i25)) {
                            i26++;
                            i25++;
                        }
                        iArr[i24 + i] = i26;
                        if (i20 != 0) {
                            int i27 = oldSize - i24;
                            i12 = i20;
                            if (i27 >= i21 + 1 && i27 <= i19 - 1 && iArr2[i27 + i] <= i26) {
                                snake2 = new Snake();
                                snake2.startX = i8;
                                snake2.startY = i11;
                                snake2.endX = i26;
                                snake2.endY = i25;
                                i2 = 0;
                                snake2.reverse = false;
                                break;
                            }
                        } else {
                            i12 = i20;
                        }
                        i22 = i24 + 2;
                        i13 = 0;
                        i17 = i;
                        newSize = i3;
                        i20 = i12;
                    }
                    if (snake2 != null) {
                        snake = snake2;
                        break;
                    }
                    int i28 = (range3.oldSize() - range3.newSize()) % 2 == 0 ? 1 : i2;
                    int oldSize2 = range3.oldSize() - range3.newSize();
                    int i29 = i21;
                    while (true) {
                        if (i29 > i19) {
                            snake3 = null;
                            break;
                        }
                        if (i29 == i21 || (i29 != i19 && iArr2[i29 + 1 + i] < iArr2[(i29 - 1) + i])) {
                            i4 = iArr2[i29 + 1 + i];
                            i5 = i4;
                        } else {
                            i4 = iArr2[(i29 - 1) + i];
                            i5 = i4 - 1;
                        }
                        int i30 = range3.newListEnd - ((range3.oldListEnd - i5) - i29);
                        int i31 = (i19 == 0 || i5 != i4) ? i30 : i30 + 1;
                        int i32 = i28;
                        while (i5 > range3.oldListStart && i30 > range3.newListStart) {
                            i6 = oldSize2;
                            if (!diffUtil.areItemsTheSame(i5 - 1, i30 - 1)) {
                                break;
                            }
                            i5--;
                            i30--;
                            oldSize2 = i6;
                        }
                        i6 = oldSize2;
                        iArr2[i29 + i] = i5;
                        if (i32 != 0 && (i7 = i6 - i29) >= i21 && i7 <= i19 && iArr[i7 + i] >= i5) {
                            snake3 = new Snake();
                            snake3.startX = i5;
                            snake3.startY = i30;
                            snake3.endX = i4;
                            snake3.endY = i31;
                            snake3.reverse = true;
                            break;
                        }
                        i29 += 2;
                        i28 = i32;
                        oldSize2 = i6;
                    }
                    if (snake3 != null) {
                        snake = snake3;
                        break;
                    }
                    i19++;
                    i17 = i;
                    newSize = i3;
                    i15 = 1;
                    i13 = 0;
                }
            }
            i = i17;
            snake = null;
            if (snake != null) {
                if (snake.diagonalSize() > 0) {
                    int i33 = snake.endY;
                    int i34 = snake.startY;
                    int i35 = i33 - i34;
                    int i36 = snake.endX;
                    int i37 = snake.startX;
                    int i38 = i36 - i37;
                    arrayList.add(i35 != i38 ? snake.reverse ? new Diagonal(i37, i34, snake.diagonalSize()) : i35 > i38 ? new Diagonal(i37, i34 + 1, snake.diagonalSize()) : new Diagonal(i37 + 1, i34, snake.diagonalSize()) : new Diagonal(i37, i34, i38));
                }
                if (arrayList3.isEmpty()) {
                    range = new Range();
                    i15 = 1;
                } else {
                    i15 = 1;
                    range = (Range) Modifier.CC.m(1, arrayList3);
                }
                range.oldListStart = range3.oldListStart;
                range.newListStart = range3.newListStart;
                range.oldListEnd = snake.startX;
                range.newListEnd = snake.startY;
                arrayList2.add(range);
                range3.oldListEnd = range3.oldListEnd;
                range3.newListEnd = range3.newListEnd;
                range3.oldListStart = snake.endX;
                range3.newListStart = snake.endY;
                arrayList2.add(range3);
            } else {
                i15 = 1;
                arrayList3.add(range3);
            }
            i17 = i;
            i13 = 0;
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(diffUtil, arrayList, iArr, iArr2);
    }

    public static int computeScrollExtent(RecyclerView.State state, RoomOpenDelegate roomOpenDelegate, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.LayoutManager.getPosition(view) - RecyclerView.LayoutManager.getPosition(view2)) + 1;
        }
        return Math.min(roomOpenDelegate.getTotalSpace(), roomOpenDelegate.getDecoratedEnd(view2) - roomOpenDelegate.getDecoratedStart(view));
    }

    public static int computeScrollOffset(RecyclerView.State state, RoomOpenDelegate roomOpenDelegate, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z, boolean z2) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (state.getItemCount() - Math.max(RecyclerView.LayoutManager.getPosition(view), RecyclerView.LayoutManager.getPosition(view2))) - 1) : Math.max(0, Math.min(RecyclerView.LayoutManager.getPosition(view), RecyclerView.LayoutManager.getPosition(view2)));
        if (z) {
            return Math.round((max * (Math.abs(roomOpenDelegate.getDecoratedEnd(view2) - roomOpenDelegate.getDecoratedStart(view)) / (Math.abs(RecyclerView.LayoutManager.getPosition(view) - RecyclerView.LayoutManager.getPosition(view2)) + 1))) + (roomOpenDelegate.getStartAfterPadding() - roomOpenDelegate.getDecoratedStart(view)));
        }
        return max;
    }

    public static int computeScrollRange(RecyclerView.State state, RoomOpenDelegate roomOpenDelegate, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || state.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return state.getItemCount();
        }
        return (int) (((roomOpenDelegate.getDecoratedEnd(view2) - roomOpenDelegate.getDecoratedStart(view)) / (Math.abs(RecyclerView.LayoutManager.getPosition(view) - RecyclerView.LayoutManager.getPosition(view2)) + 1)) * state.getItemCount());
    }

    public abstract boolean areContentsTheSame(int i, int i2);

    public abstract boolean areItemsTheSame(int i, int i2);

    public abstract int getNewListSize();

    public abstract int getOldListSize();
}
