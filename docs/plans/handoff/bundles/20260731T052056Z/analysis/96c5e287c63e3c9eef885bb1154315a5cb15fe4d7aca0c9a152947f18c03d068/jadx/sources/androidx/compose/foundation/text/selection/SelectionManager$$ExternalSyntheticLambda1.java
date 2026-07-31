package androidx.compose.foundation.text.selection;

import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SelectionManager$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SelectionManager f$0;

    public /* synthetic */ SelectionManager$$ExternalSyntheticLambda1(SelectionManager selectionManager, int i) {
        this.$r8$classId = i;
        this.f$0 = selectionManager;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v30, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v19, types: [int] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i;
        CoroutineScope coroutineScope;
        LayoutCoordinates layoutCoordinates;
        Rect rect;
        int i2;
        ArrayList arrayList;
        LayoutCoordinates layoutCoordinates2;
        int[] iArr;
        int[] iArr2;
        ArrayList arrayList2;
        Selection selection;
        ArrayList arrayList3;
        int i3;
        int i4;
        int i5 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i6 = 1;
        SelectionManager selectionManager = this.f$0;
        switch (i5) {
            case 0:
                selectionManager.onRelease();
                return unit;
            case 1:
                Offset offset = (Offset) selectionManager.startHandlePosition$delegate.getValue();
                return new Offset(offset != null ? offset.packedValue : 9205357640488583168L);
            case 2:
                Offset offset2 = (Offset) selectionManager.endHandlePosition$delegate.getValue();
                return new Offset(offset2 != null ? offset2.packedValue : 9205357640488583168L);
            case 3:
                SelectionManager selectionManager2 = this.f$0;
                selectionManager2.showToolbar = true;
                selectionManager2.updateSelectionToolbar();
                selectionManager2.draggingHandle$delegate.setValue(null);
                selectionManager2.currentDragPosition$delegate.setValue(null);
                if (selectionManager2.isLongPressOrClickSelection && selectionManager2.isNonEmptySelection$foundation()) {
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    Ref$LongRef ref$LongRef = new Ref$LongRef();
                    SelectionRegistrarImpl selectionRegistrarImpl = selectionManager2.selectionRegistrar;
                    ArrayList sort = selectionRegistrarImpl.sort(selectionManager2.requireContainerCoordinates$foundation());
                    ListIterator listIterator = sort.listIterator(sort.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            Selection selection2 = (Selection) selectionRegistrarImpl.getSubselections().get(((MultiWidgetSelectionDelegate) listIterator.previous()).selectableId);
                            if (selection2 != null && selection2.start.offset != selection2.end.offset) {
                                i = listIterator.nextIndex();
                            }
                        } else {
                            i = -1;
                        }
                    }
                    if (i != -1) {
                        int size = sort.size();
                        int i7 = 0;
                        while (true) {
                            if (i7 < size) {
                                MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = (MultiWidgetSelectionDelegate) sort.get(i7);
                                Selection selection3 = (Selection) selectionRegistrarImpl.getSubselections().get(multiWidgetSelectionDelegate.selectableId);
                                if (selection3 != null) {
                                    AnnotatedString text = multiWidgetSelectionDelegate.getText();
                                    long TextRange = ParagraphKt.TextRange(selection3.start.offset, selection3.end.offset);
                                    boolean z = i7 >= i;
                                    long j = multiWidgetSelectionDelegate.selectableId;
                                    if (z) {
                                        ref$ObjectRef.element = text;
                                        ref$ObjectRef2.element = new TextRange(TextRange);
                                        ref$LongRef.element = j;
                                    }
                                } else {
                                    i7++;
                                }
                            }
                        }
                    }
                    Object obj = ref$ObjectRef.element;
                    if (obj != null && ref$ObjectRef2.element != null && ref$LongRef.element != 0 && ((CharSequence) obj).length() > 0 && (coroutineScope = selectionManager2.coroutineScope) != null) {
                        AwaitKt.launch$default(coroutineScope, null, null, new FlowExtKt$simpleScan$1(selectionManager2, ref$ObjectRef, ref$ObjectRef2, ref$LongRef, null, 5), 3);
                    }
                }
                selectionManager2.isLongPressOrClickSelection = false;
                return unit;
            case 4:
                SelectionRegistrarImpl selectionRegistrarImpl2 = selectionManager.selectionRegistrar;
                selectionManager.positionChangeState$delegate.getValue();
                if (selectionManager.getSelection() != null && (layoutCoordinates = selectionManager.containerLayoutCoordinates) != null && layoutCoordinates.isAttached()) {
                    ArrayList sort2 = selectionRegistrarImpl2.sort(selectionManager.requireContainerCoordinates$foundation());
                    ArrayList arrayList4 = new ArrayList(sort2.size());
                    int size2 = sort2.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        MultiWidgetSelectionDelegate multiWidgetSelectionDelegate2 = (MultiWidgetSelectionDelegate) sort2.get(i8);
                        Selection selection4 = (Selection) selectionRegistrarImpl2.getSubselections().get(multiWidgetSelectionDelegate2.selectableId);
                        Pair pair = selection4 != null ? new Pair(multiWidgetSelectionDelegate2, selection4) : null;
                        if (pair != null) {
                            arrayList4.add(pair);
                        }
                    }
                    int size3 = arrayList4.size();
                    int i9 = 2;
                    ArrayList arrayList5 = arrayList4;
                    arrayList5 = arrayList4;
                    if (size3 != 0 && size3 != 1) {
                        arrayList5 = Room.listOf(CollectionsKt.first((List) arrayList4), CollectionsKt.last((List) arrayList4));
                    }
                    if (!arrayList5.isEmpty()) {
                        boolean isEmpty = arrayList5.isEmpty();
                        Rect rect2 = SimpleLayoutKt.invertedInfiniteRect;
                        if (isEmpty) {
                            rect = rect2;
                        } else {
                            int size4 = arrayList5.size();
                            int i10 = 0;
                            float f = Float.POSITIVE_INFINITY;
                            float f2 = Float.POSITIVE_INFINITY;
                            float f3 = Float.NEGATIVE_INFINITY;
                            float f4 = Float.NEGATIVE_INFINITY;
                            ArrayList arrayList6 = arrayList5;
                            while (i10 < size4) {
                                Pair pair2 = (Pair) arrayList6.get(i10);
                                MultiWidgetSelectionDelegate multiWidgetSelectionDelegate3 = (MultiWidgetSelectionDelegate) pair2.first;
                                Selection selection5 = (Selection) pair2.second;
                                int i11 = selection5.start.offset;
                                int i12 = selection5.end.offset;
                                if (i11 == i12 || (layoutCoordinates2 = multiWidgetSelectionDelegate3.getLayoutCoordinates()) == null) {
                                    i2 = size4;
                                    arrayList = arrayList6;
                                } else {
                                    boolean z2 = r8;
                                    int min = Math.min(i11, i12);
                                    int max = Math.max(i11, i12) - i6;
                                    if (min == max) {
                                        iArr = new int[i6];
                                        iArr[z2 ? 1 : 0] = min;
                                    } else {
                                        int[] iArr3 = new int[i9];
                                        iArr3[z2 ? 1 : 0] = min;
                                        iArr3[i6] = max;
                                        iArr = iArr3;
                                    }
                                    int length = iArr.length;
                                    int i13 = z2 ? 1 : 0;
                                    float f5 = Float.POSITIVE_INFINITY;
                                    float f6 = Float.POSITIVE_INFINITY;
                                    float f7 = Float.NEGATIVE_INFINITY;
                                    float f8 = Float.NEGATIVE_INFINITY;
                                    ArrayList arrayList7 = arrayList6;
                                    while (i13 < length) {
                                        int i14 = iArr[i13];
                                        int i15 = size4;
                                        TextLayoutResult textLayoutResult = (TextLayoutResult) multiWidgetSelectionDelegate3.layoutResultCallback.invoke();
                                        Rect rect3 = Rect.Zero;
                                        if (textLayoutResult == null) {
                                            arrayList2 = arrayList7;
                                            iArr2 = iArr;
                                        } else {
                                            ArrayList arrayList8 = arrayList7;
                                            int length2 = textLayoutResult.layoutInput.text.text.length();
                                            iArr2 = iArr;
                                            arrayList2 = arrayList8;
                                            if (length2 >= 1) {
                                                rect3 = textLayoutResult.getBoundingBox(RegexKt.coerceIn(i14, (int) z2, length2 - 1));
                                                arrayList2 = arrayList8;
                                            }
                                        }
                                        Rect rect4 = rect3;
                                        f5 = Math.min(f5, rect4.left);
                                        f6 = Math.min(f6, rect4.top);
                                        f7 = Math.max(f7, rect4.right);
                                        f8 = Math.max(f8, rect4.bottom);
                                        i13++;
                                        size4 = i15;
                                        arrayList7 = arrayList2;
                                        iArr = iArr2;
                                        z2 = false;
                                    }
                                    i2 = size4;
                                    arrayList = arrayList7;
                                    long floatToRawIntBits = Float.floatToRawIntBits(f5);
                                    long floatToRawIntBits2 = Float.floatToRawIntBits(f6);
                                    long floatToRawIntBits3 = Float.floatToRawIntBits(f7);
                                    long mo518localPositionOfR5De75A = layoutCoordinates.mo518localPositionOfR5De75A(layoutCoordinates2, (floatToRawIntBits << 32) | (floatToRawIntBits2 & 4294967295L));
                                    long mo518localPositionOfR5De75A2 = layoutCoordinates.mo518localPositionOfR5De75A(layoutCoordinates2, (Float.floatToRawIntBits(f8) & 4294967295L) | (floatToRawIntBits3 << 32));
                                    f = Math.min(f, Float.intBitsToFloat((int) (mo518localPositionOfR5De75A >> 32)));
                                    f2 = Math.min(f2, Float.intBitsToFloat((int) (mo518localPositionOfR5De75A & 4294967295L)));
                                    f3 = Math.max(f3, Float.intBitsToFloat((int) (mo518localPositionOfR5De75A2 >> 32)));
                                    f4 = Math.max(f4, Float.intBitsToFloat((int) (mo518localPositionOfR5De75A2 & 4294967295L)));
                                }
                                i10++;
                                size4 = i2;
                                arrayList6 = arrayList;
                                i9 = 2;
                                r8 = false;
                                i6 = 1;
                            }
                            rect = new Rect(f, f2, f3, f4);
                        }
                        if (!rect.equals(rect2)) {
                            Rect intersect = SimpleLayoutKt.visibleBounds(layoutCoordinates).intersect(rect);
                            if (intersect.right - intersect.left >= RecyclerView.DECELERATION_RATE && intersect.bottom - intersect.top >= RecyclerView.DECELERATION_RATE) {
                                Rect m393translatek4lQ0M = intersect.m393translatek4lQ0M(layoutCoordinates.mo520localToRootMKHz9U(0L));
                                float f9 = m393translatek4lQ0M.bottom;
                                SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.SelectionHandleInfoKey;
                                return Rect.copy$default(m393translatek4lQ0M, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f9 + 100.0f, 7);
                            }
                        }
                    }
                }
                return null;
            case 5:
                selectionManager.copy$foundation();
                if (selectionManager.isInTouchMode()) {
                    selectionManager.onRelease();
                }
                return unit;
            case 6:
                return Boolean.valueOf((selectionManager.showToolbar && selectionManager.isInTouchMode()) ? false : true);
            default:
                SelectionRegistrarImpl selectionRegistrarImpl3 = selectionManager.selectionRegistrar;
                ArrayList sort3 = selectionRegistrarImpl3.sort(selectionManager.requireContainerCoordinates$foundation());
                if (!sort3.isEmpty()) {
                    MutableLongObjectMap mutableLongObjectMap = LongObjectMapKt.EmptyLongObjectMap;
                    MutableLongObjectMap mutableLongObjectMap2 = new MutableLongObjectMap();
                    int size5 = sort3.size();
                    int i16 = 0;
                    Selection selection6 = null;
                    Selection selection7 = null;
                    while (i16 < size5) {
                        MultiWidgetSelectionDelegate multiWidgetSelectionDelegate4 = (MultiWidgetSelectionDelegate) sort3.get(i16);
                        long j2 = multiWidgetSelectionDelegate4.selectableId;
                        TextLayoutResult textLayoutResult2 = (TextLayoutResult) multiWidgetSelectionDelegate4.layoutResultCallback.invoke();
                        if (textLayoutResult2 == null) {
                            arrayList3 = sort3;
                            i3 = size5;
                            i4 = i16;
                            selection = null;
                        } else {
                            int length3 = textLayoutResult2.layoutInput.text.text.length();
                            arrayList3 = sort3;
                            i3 = size5;
                            i4 = i16;
                            selection = new Selection(new Selection.AnchorInfo(textLayoutResult2.getBidiRunDirection(0), 0, j2), new Selection.AnchorInfo(textLayoutResult2.getBidiRunDirection(Math.max(length3 - 1, 0)), length3, j2), false);
                        }
                        if (selection != null) {
                            if (selection6 == null) {
                                selection6 = selection;
                            }
                            long j3 = multiWidgetSelectionDelegate4.selectableId;
                            int findAbsoluteInsertIndex = mutableLongObjectMap2.findAbsoluteInsertIndex(j3);
                            Object[] objArr = mutableLongObjectMap2.values;
                            Object obj2 = objArr[findAbsoluteInsertIndex];
                            mutableLongObjectMap2.keys[findAbsoluteInsertIndex] = j3;
                            objArr[findAbsoluteInsertIndex] = selection;
                            selection7 = selection;
                        }
                        i16 = i4 + 1;
                        sort3 = arrayList3;
                        size5 = i3;
                    }
                    if (mutableLongObjectMap2._size != 0) {
                        if (selection6 != selection7) {
                            selection6.getClass();
                            Selection.AnchorInfo anchorInfo = selection6.start;
                            selection7.getClass();
                            selection6 = new Selection(anchorInfo, selection7.end, false);
                        }
                        selectionRegistrarImpl3.subselections$delegate.setValue(mutableLongObjectMap2);
                        selectionManager.onSelectionChange.invoke(selection6);
                        selectionManager.previousSelectionLayout = null;
                    }
                }
                return unit;
        }
    }
}
