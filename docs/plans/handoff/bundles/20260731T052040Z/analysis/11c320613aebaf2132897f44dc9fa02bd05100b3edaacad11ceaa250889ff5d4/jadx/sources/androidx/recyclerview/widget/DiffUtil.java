package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DiffUtil {
    public static ExecutorService sDiffExecutor;
    public static final Object sExecutorLock = new Object();
    public static final ViewPager.AnonymousClass1 DIAGONAL_COMPARATOR = new ViewPager.AnonymousClass1(3);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DiffResult {
        public final DiffUtil mCallback;
        public final boolean mDetectMoves;
        public final ArrayList mDiagonals;
        public final int[] mNewItemStatuses;
        public final int mNewListSize;
        public final int[] mOldItemStatuses;
        public final int mOldListSize;

        public DiffResult(DiffUtil diffUtil, ArrayList arrayList, int[] iArr, int[] iArr2, boolean z) {
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
            this.mDetectMoves = z;
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

        public final void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            int[] iArr;
            DiffUtil diffUtil;
            int i;
            int i2;
            ArrayList arrayList;
            DiffResult diffResult = this;
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayList arrayList2 = diffResult.mDiagonals;
            boolean z = true;
            int size = arrayList2.size() - 1;
            int i3 = diffResult.mOldListSize;
            int i4 = diffResult.mNewListSize;
            int i5 = i3;
            while (size >= 0) {
                Diagonal diagonal = (Diagonal) arrayList2.get(size);
                int i6 = diagonal.x;
                int i7 = diagonal.size;
                int i8 = i6 + i7;
                int i9 = diagonal.y;
                int i10 = i9 + i7;
                while (true) {
                    iArr = diffResult.mOldItemStatuses;
                    diffUtil = diffResult.mCallback;
                    boolean z2 = z;
                    i = 0;
                    if (i5 <= i8) {
                        break;
                    }
                    i5--;
                    int i11 = iArr[i5];
                    if ((i11 & 12) != 0) {
                        arrayList = arrayList2;
                        int i12 = i11 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i12, false);
                        if (postponedUpdate != null) {
                            int i13 = (i3 - postponedUpdate.currentPos) - 1;
                            batchingListUpdateCallback.onMoved(i5, i13);
                            if ((i11 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i13, z2 ? 1 : 0, diffUtil.getChangePayload(i5, i12));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i5, (i3 - i5) - (z2 ? 1 : 0), z2));
                        }
                    } else {
                        arrayList = arrayList2;
                        batchingListUpdateCallback.onRemoved(i5, z2 ? 1 : 0);
                        i3--;
                    }
                    arrayList2 = arrayList;
                    z = true;
                }
                ArrayList arrayList3 = arrayList2;
                while (i4 > i10) {
                    i4--;
                    int i14 = diffResult.mNewItemStatuses[i4];
                    if ((i14 & 12) != 0) {
                        int i15 = i14 >> 4;
                        PostponedUpdate postponedUpdate2 = getPostponedUpdate(arrayDeque, i15, true);
                        if (postponedUpdate2 == null) {
                            arrayDeque.add(new PostponedUpdate(i4, i3 - i5, false));
                            i2 = 0;
                        } else {
                            i2 = 0;
                            batchingListUpdateCallback.onMoved((i3 - postponedUpdate2.currentPos) - 1, i5);
                            if ((i14 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i5, 1, diffUtil.getChangePayload(i15, i4));
                            }
                        }
                    } else {
                        i2 = i;
                        batchingListUpdateCallback.onInserted(i5, 1);
                        i3++;
                    }
                    diffResult = this;
                    i = i2;
                }
                int i16 = i9;
                int i17 = i6;
                while (i < i7) {
                    if ((iArr[i17] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i17, 1, diffUtil.getChangePayload(i17, i16));
                    }
                    i17++;
                    i16++;
                    i++;
                }
                size--;
                diffResult = this;
                z = true;
                i4 = i9;
                i5 = i6;
                arrayList2 = arrayList3;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public static DiffResult calculateDiff(DiffUtil diffUtil, boolean z) {
        int[] iArr;
        int[] iArr2;
        int i;
        Snake snake;
        int i2;
        Range range;
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
        int oldListSize = diffUtil.getOldListSize();
        int newListSize = diffUtil.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Range range2 = new Range();
        int i12 = 0;
        range2.oldListStart = 0;
        range2.oldListEnd = oldListSize;
        range2.newListStart = 0;
        range2.newListEnd = newListSize;
        arrayList2.add(range2);
        int i13 = oldListSize + newListSize;
        int i14 = 1;
        int i15 = (((i13 + 1) / 2) * 2) + 1;
        int[] iArr3 = new int[i15];
        int i16 = i15 / 2;
        int[] iArr4 = new int[i15];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range3 = (Range) arrayList2.remove(arrayList2.size() - i14);
            if (range3.oldSize() >= i14 && range3.newSize() >= i14) {
                int newSize = ((range3.newSize() + range3.oldSize()) + i14) / 2;
                int i17 = i14 + i16;
                iArr3[i17] = range3.oldListStart;
                iArr4[i17] = range3.oldListEnd;
                int i18 = i12;
                while (i18 < newSize) {
                    int i19 = Math.abs(range3.oldSize() - range3.newSize()) % 2 == i14 ? i14 : i12;
                    int oldSize = range3.oldSize() - range3.newSize();
                    int i20 = -i18;
                    int i21 = i20;
                    while (true) {
                        if (i21 > i18) {
                            iArr = iArr4;
                            iArr2 = iArr3;
                            i3 = i12;
                            i = i16;
                            snake2 = null;
                            break;
                        }
                        if (i21 == i20 || (i21 != i18 && iArr3[i21 + 1 + i16] > iArr3[(i21 - 1) + i16])) {
                            i8 = iArr3[i21 + 1 + i16];
                            i9 = i8;
                        } else {
                            i8 = iArr3[(i21 - 1) + i16];
                            i9 = i8 + 1;
                        }
                        iArr = iArr4;
                        int i22 = ((i9 - range3.oldListStart) + range3.newListStart) - i21;
                        if (i18 == 0 || i9 != i8) {
                            i10 = i22;
                        } else {
                            i10 = i22;
                            i22--;
                        }
                        int i23 = i10;
                        iArr2 = iArr3;
                        int i24 = i9;
                        int i25 = i23;
                        i = i16;
                        while (i24 < range3.oldListEnd && i25 < range3.newListEnd && diffUtil.areItemsTheSame(i24, i25)) {
                            i24++;
                            i25++;
                        }
                        iArr2[i21 + i] = i24;
                        if (i19 != 0) {
                            int i26 = oldSize - i21;
                            i11 = i21;
                            if (i26 >= i20 + 1 && i26 <= i18 - 1 && iArr[i26 + i] <= i24) {
                                snake2 = new Snake();
                                snake2.startX = i8;
                                snake2.startY = i22;
                                snake2.endX = i24;
                                snake2.endY = i25;
                                i3 = 0;
                                snake2.reverse = false;
                                break;
                            }
                        } else {
                            i11 = i21;
                        }
                        i21 = i11 + 2;
                        i12 = 0;
                        iArr4 = iArr;
                        iArr3 = iArr2;
                        i16 = i;
                    }
                    if (snake2 != null) {
                        snake = snake2;
                        break;
                    }
                    int i27 = (range3.oldSize() - range3.newSize()) % 2 == 0 ? 1 : i3;
                    int oldSize2 = range3.oldSize() - range3.newSize();
                    int i28 = i20;
                    while (true) {
                        if (i28 > i18) {
                            snake3 = null;
                            break;
                        }
                        if (i28 == i20 || (i28 != i18 && iArr[i28 + 1 + i] < iArr[(i28 - 1) + i])) {
                            i4 = iArr[i28 + 1 + i];
                            i5 = i4;
                        } else {
                            i4 = iArr[(i28 - 1) + i];
                            i5 = i4 - 1;
                        }
                        int i29 = range3.newListEnd - ((range3.oldListEnd - i5) - i28);
                        int i30 = (i18 == 0 || i5 != i4) ? i29 : i29 + 1;
                        while (i5 > range3.oldListStart && i29 > range3.newListStart) {
                            i6 = i27;
                            if (!diffUtil.areItemsTheSame(i5 - 1, i29 - 1)) {
                                break;
                            }
                            i5--;
                            i29--;
                            i27 = i6;
                        }
                        i6 = i27;
                        iArr[i28 + i] = i5;
                        if (i6 != 0 && (i7 = oldSize2 - i28) >= i20 && i7 <= i18 && iArr2[i7 + i] >= i5) {
                            snake3 = new Snake();
                            snake3.startX = i5;
                            snake3.startY = i29;
                            snake3.endX = i4;
                            snake3.endY = i30;
                            snake3.reverse = true;
                            break;
                        }
                        i28 += 2;
                        i27 = i6;
                    }
                    if (snake3 != null) {
                        snake = snake3;
                        break;
                    }
                    i18++;
                    iArr4 = iArr;
                    iArr3 = iArr2;
                    i16 = i;
                    i14 = 1;
                    i12 = 0;
                }
            }
            iArr = iArr4;
            iArr2 = iArr3;
            i = i16;
            snake = null;
            if (snake != null) {
                if (snake.diagonalSize() > 0) {
                    int i31 = snake.endY;
                    int i32 = snake.startY;
                    int i33 = i31 - i32;
                    int i34 = snake.endX;
                    int i35 = snake.startX;
                    int i36 = i34 - i35;
                    arrayList.add(i33 != i36 ? snake.reverse ? new Diagonal(i35, i32, snake.diagonalSize()) : i33 > i36 ? new Diagonal(i35, i32 + 1, snake.diagonalSize()) : new Diagonal(i35 + 1, i32, snake.diagonalSize()) : new Diagonal(i35, i32, i36));
                }
                if (arrayList3.isEmpty()) {
                    range = new Range();
                    i2 = 1;
                } else {
                    i2 = 1;
                    range = (Range) arrayList3.remove(arrayList3.size() - 1);
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
                i2 = 1;
                arrayList3.add(range3);
            }
            iArr4 = iArr;
            i14 = i2;
            iArr3 = iArr2;
            i16 = i;
            i12 = 0;
        }
        int[] iArr5 = iArr4;
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(diffUtil, arrayList, iArr3, iArr5, z);
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

    public abstract boolean areContentsTheSame(Object obj, Object obj2);

    public abstract boolean areItemsTheSame(int i, int i2);

    public abstract boolean areItemsTheSame(Object obj, Object obj2);

    public Object getChangePayload(int i, int i2) {
        return null;
    }

    public abstract int getNewListSize();

    public abstract int getOldListSize();

    public Object getChangePayload(Object obj, Object obj2) {
        return null;
    }
}
