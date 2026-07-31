package androidx.recyclerview.widget;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.SolverVariable;
import androidx.core.view.ViewCompat;
import androidx.palette.graphics.ColorCutQuantizer;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomOpenDelegate;
import androidx.room.util.TableInfo;
import androidx.work.Operation$State;
import coil3.network.okhttp.internal.OkHttpNetworkFetcherServiceLoaderTarget;
import coil3.util.DecoderServiceLoaderTarget;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.reflect.jvm.internal.KParameterImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import okio.internal.ZipEntry;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.edit.richtext.SpanExtents;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.settings.homefeed.ForYouModuleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DiffUtil {
    public static final AnonymousClass1 DIAGONAL_COMPARATOR = new AnonymousClass1(0);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.recyclerview.widget.DiffUtil$1, reason: invalid class name */
    public final class AnonymousClass1 implements Comparator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            boolean z = true;
            switch (this.$r8$classId) {
                case 0:
                    return ((Diagonal) obj).x - ((Diagonal) obj2).x;
                case 1:
                    return ((SolverVariable) obj).id - ((SolverVariable) obj2).id;
                case 2:
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    float z2 = ((View) obj).getZ();
                    float z3 = ((View) obj2).getZ();
                    if (z2 > z3) {
                        return -1;
                    }
                    return z2 < z3 ? 1 : 0;
                case 3:
                    return ((ColorCutQuantizer.Vbox) obj2).getVolume() - ((ColorCutQuantizer.Vbox) obj).getVolume();
                case 4:
                    GapWorker.Task task = (GapWorker.Task) obj;
                    GapWorker.Task task2 = (GapWorker.Task) obj2;
                    RecyclerView recyclerView = task.view;
                    if ((recyclerView == null) == (task2.view == null)) {
                        boolean z4 = task.neededNextFrame;
                        if (z4 == task2.neededNextFrame) {
                            int i = task2.viewVelocity - task.viewVelocity;
                            if (i != 0) {
                                return i;
                            }
                            int i2 = task.distanceToItem - task2.distanceToItem;
                            if (i2 != 0) {
                                return i2;
                            }
                            return 0;
                        }
                        if (z4) {
                            return -1;
                        }
                    } else if (recyclerView != null) {
                        return -1;
                    }
                    return 1;
                case 5:
                    return Operation$State.compareValues((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                case 6:
                    return Operation$State.compareValues((Integer) ((Map.Entry) obj).getKey(), (Integer) ((Map.Entry) obj2).getKey());
                case 7:
                    return Operation$State.compareValues(((TableInfo.Column) obj).name, ((TableInfo.Column) obj2).name);
                case 8:
                    return Operation$State.compareValues(((TableInfo.Index) obj).name, ((TableInfo.Index) obj2).name);
                case 9:
                    return ((int[]) obj)[0] - ((int[]) obj2)[0];
                case 10:
                    ((OkHttpNetworkFetcherServiceLoaderTarget) obj2).getClass();
                    ((OkHttpNetworkFetcherServiceLoaderTarget) obj).getClass();
                    return Operation$State.compareValues(2, 2);
                case 11:
                    ((DecoderServiceLoaderTarget) obj2).getClass();
                    ((DecoderServiceLoaderTarget) obj).getClass();
                    return Operation$State.compareValues(0, 0);
                case 12:
                    return ((View) obj).getTop() - ((View) obj2).getTop();
                case IMAGE_VALUE:
                    return ((Comparable) obj).compareTo((Comparable) obj2);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return Operation$State.compareValues(((Method) obj).getName(), ((Method) obj2).getName());
                case 15:
                    return Operation$State.compareValues(((KParameterImpl) obj).getName(), ((KParameterImpl) obj2).getName());
                case LAZY_VERTICAL_GRID_VALUE:
                    Integer compare = DescriptorVisibilities.compare((DescriptorVisibilities.AnonymousClass1) obj, (DescriptorVisibilities.AnonymousClass1) obj2);
                    if (compare == null) {
                        return 0;
                    }
                    return compare.intValue();
                case VERTICAL_GRID_ITEM_VALUE:
                    return Operation$State.compareValues(((ZipEntry) obj).canonicalPath, ((ZipEntry) obj2).canonicalPath);
                case RADIO_GROUP_VALUE:
                    return Operation$State.compareValues(((TimelineItem) obj2).timestamp, ((TimelineItem) obj).timestamp);
                case RADIO_BUTTON_VALUE:
                    return Operation$State.compareValues(((TimelineItem) obj2).timestamp, ((TimelineItem) obj).timestamp);
                case RADIO_ROW_VALUE:
                    return Operation$State.compareValues((String) ((Map.Entry) obj).getKey(), (String) ((Map.Entry) obj2).getKey());
                case RADIO_COLUMN_VALUE:
                    return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
                case SIZE_BOX_VALUE:
                    return Operation$State.compareValues(((SpanExtents) obj).getSyntaxRule().spanStyle, ((SpanExtents) obj2).getSyntaxRule().spanStyle);
                case 23:
                    return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
                case 24:
                    return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
                case 25:
                    String thumbUrl = ((MwQueryPage) obj).thumbUrl();
                    Boolean valueOf = Boolean.valueOf(thumbUrl == null || thumbUrl.length() == 0);
                    String thumbUrl2 = ((MwQueryPage) obj2).thumbUrl();
                    if (thumbUrl2 != null && thumbUrl2.length() != 0) {
                        z = false;
                    }
                    return Operation$State.compareValues(valueOf, Boolean.valueOf(z));
                case 26:
                    return Operation$State.compareValues(Integer.valueOf(ForYouModuleType.valueOf(((ForYouModule) obj).moduleKey()).ordinal()), Integer.valueOf(ForYouModuleType.valueOf(((ForYouModule) obj2).moduleKey()).ordinal()));
                case 27:
                    return Operation$State.compareValues(Integer.valueOf(((OnThisDay.Event) obj2).year), Integer.valueOf(((OnThisDay.Event) obj).year));
                case 28:
                    return Operation$State.compareValues(Integer.valueOf(((MwQueryPage) obj).index), Integer.valueOf(((MwQueryPage) obj2).index));
                default:
                    String thumbUrl3 = ((MwQueryPage) obj).thumbUrl();
                    Boolean valueOf2 = Boolean.valueOf(thumbUrl3 == null || thumbUrl3.length() == 0);
                    String thumbUrl4 = ((MwQueryPage) obj2).thumbUrl();
                    if (thumbUrl4 != null && thumbUrl4.length() != 0) {
                        z = false;
                    }
                    return Operation$State.compareValues(valueOf2, Boolean.valueOf(z));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

        public final int convertOldPositionToNew(int i) {
            int i2 = this.mOldListSize;
            if (i < 0 || i >= i2) {
                Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "Index out of bounds - passed position = ", ", old list size = "));
                return 0;
            }
            int i3 = this.mOldItemStatuses[i];
            if ((i3 & 15) == 0) {
                return -1;
            }
            return i3 >> 4;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public static DiffResult calculateDiff$1(DiffUtil diffUtil) {
        int i;
        Snake snake;
        int i2;
        Range range;
        int i3;
        int i4;
        Snake snake2;
        Snake snake3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int oldListSize = diffUtil.getOldListSize();
        int newListSize = diffUtil.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Range range2 = new Range();
        int i14 = 0;
        range2.oldListStart = 0;
        range2.oldListEnd = oldListSize;
        range2.newListStart = 0;
        range2.newListEnd = newListSize;
        arrayList2.add(range2);
        int i15 = oldListSize + newListSize;
        int i16 = 1;
        int i17 = (((i15 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i17];
        int i18 = i17 / 2;
        int[] iArr2 = new int[i17];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range3 = (Range) arrayList2.remove(arrayList2.size() - i16);
            if (range3.oldSize() >= i16 && range3.newSize() >= i16) {
                int newSize = ((range3.newSize() + range3.oldSize()) + i16) / 2;
                int i19 = i16 + i18;
                iArr[i19] = range3.oldListStart;
                iArr2[i19] = range3.oldListEnd;
                int i20 = i14;
                while (i20 < newSize) {
                    int i21 = Math.abs(range3.oldSize() - range3.newSize()) % 2 == i16 ? i16 : i14;
                    int oldSize = range3.oldSize() - range3.newSize();
                    int i22 = -i20;
                    int i23 = i22;
                    while (true) {
                        if (i23 > i20) {
                            i3 = i14;
                            i = i18;
                            i4 = newSize;
                            snake2 = null;
                            break;
                        }
                        if (i23 == i22 || (i23 != i20 && iArr[i23 + 1 + i18] > iArr[(i23 - 1) + i18])) {
                            i9 = iArr[i23 + 1 + i18];
                            i10 = i9;
                        } else {
                            i9 = iArr[(i23 - 1) + i18];
                            i10 = i9 + 1;
                        }
                        i = i18;
                        int i24 = ((i10 - range3.oldListStart) + range3.newListStart) - i23;
                        if (i20 == 0 || i10 != i9) {
                            i11 = i10;
                            i12 = i24;
                        } else {
                            i11 = i10;
                            i12 = i24 - 1;
                        }
                        int i25 = i23;
                        int i26 = i24;
                        int i27 = i11;
                        i4 = newSize;
                        while (i27 < range3.oldListEnd && i26 < range3.newListEnd && diffUtil.areItemsTheSame(i27, i26)) {
                            i27++;
                            i26++;
                        }
                        iArr[i25 + i] = i27;
                        if (i21 != 0) {
                            int i28 = oldSize - i25;
                            i13 = i21;
                            if (i28 >= i22 + 1 && i28 <= i20 - 1 && iArr2[i28 + i] <= i27) {
                                snake2 = new Snake();
                                snake2.startX = i9;
                                snake2.startY = i12;
                                snake2.endX = i27;
                                snake2.endY = i26;
                                i3 = 0;
                                snake2.reverse = false;
                                break;
                            }
                        } else {
                            i13 = i21;
                        }
                        i23 = i25 + 2;
                        i14 = 0;
                        i18 = i;
                        newSize = i4;
                        i21 = i13;
                    }
                    if (snake2 != null) {
                        snake = snake2;
                        break;
                    }
                    int i29 = (range3.oldSize() - range3.newSize()) % 2 == 0 ? 1 : i3;
                    int oldSize2 = range3.oldSize() - range3.newSize();
                    int i30 = i22;
                    while (true) {
                        if (i30 > i20) {
                            snake3 = null;
                            break;
                        }
                        if (i30 == i22 || (i30 != i20 && iArr2[i30 + 1 + i] < iArr2[(i30 - 1) + i])) {
                            i5 = iArr2[i30 + 1 + i];
                            i6 = i5;
                        } else {
                            i5 = iArr2[(i30 - 1) + i];
                            i6 = i5 - 1;
                        }
                        int i31 = range3.newListEnd - ((range3.oldListEnd - i6) - i30);
                        int i32 = (i20 == 0 || i6 != i5) ? i31 : i31 + 1;
                        int i33 = i29;
                        while (i6 > range3.oldListStart && i31 > range3.newListStart) {
                            i7 = oldSize2;
                            if (!diffUtil.areItemsTheSame(i6 - 1, i31 - 1)) {
                                break;
                            }
                            i6--;
                            i31--;
                            oldSize2 = i7;
                        }
                        i7 = oldSize2;
                        iArr2[i30 + i] = i6;
                        if (i33 != 0 && (i8 = i7 - i30) >= i22 && i8 <= i20 && iArr[i8 + i] >= i6) {
                            snake3 = new Snake();
                            snake3.startX = i6;
                            snake3.startY = i31;
                            snake3.endX = i5;
                            snake3.endY = i32;
                            snake3.reverse = true;
                            break;
                        }
                        i30 += 2;
                        i29 = i33;
                        oldSize2 = i7;
                    }
                    if (snake3 != null) {
                        snake = snake3;
                        break;
                    }
                    i20++;
                    i18 = i;
                    newSize = i4;
                    i16 = 1;
                    i14 = 0;
                }
            }
            i = i18;
            snake = null;
            if (snake != null) {
                if (snake.diagonalSize() > 0) {
                    int i34 = snake.endY;
                    int i35 = snake.startY;
                    int i36 = i34 - i35;
                    int i37 = snake.endX;
                    int i38 = snake.startX;
                    int i39 = i37 - i38;
                    arrayList.add(i36 != i39 ? snake.reverse ? new Diagonal(i38, i35, snake.diagonalSize()) : i36 > i39 ? new Diagonal(i38, i35 + 1, snake.diagonalSize()) : new Diagonal(i38 + 1, i35, snake.diagonalSize()) : new Diagonal(i38, i35, i39));
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
            i18 = i;
            i16 = i2;
            i14 = 0;
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

    public abstract boolean areContentsTheSame(Object obj, Object obj2);

    public abstract boolean areItemsTheSame(int i, int i2);

    public abstract boolean areItemsTheSame(Object obj, Object obj2);

    public Object getChangePayload(int i, int i2) {
        return null;
    }

    public abstract int getNewListSize();

    public abstract int getOldListSize();
}
