package androidx.compose.foundation.text.selection;

import androidx.cardview.widget.CardView;
import androidx.collection.LongIntMapKt;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongIntMap;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.feed.HomeViewModel$getPlacesCards$$inlined$sortedBy$1;
import org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda15;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionManager {
    public LayoutCoordinates containerLayoutCoordinates;
    public CoroutineScope coroutineScope;
    public HapticFeedback hapticFeedBack;
    public boolean isLongPressOrClickSelection;
    public Function1 onCopyHandler;
    public PlatformSelectionBehaviors platformSelectionBehaviors;
    public Offset previousPosition;
    public SelectionLayout previousSelectionLayout;
    public final SelectionRegistrarImpl selectionRegistrar;
    public boolean showToolbar;
    public final ParcelableSnapshotMutableState _selection = Updater.mutableStateOf$default(null);
    public final ParcelableSnapshotMutableState _isInTouchMode = Updater.mutableStateOf$default(Boolean.TRUE);
    public Function1 onSelectionChange = new SelectionManager$$ExternalSyntheticLambda0(this, 7);
    public final CardView.AnonymousClass1 toolbarRequester = new CardView.AnonymousClass1(7);
    public final FocusRequester focusRequester = new FocusRequester();
    public final ParcelableSnapshotMutableState hasFocus$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    public final DerivedSnapshotState derivedContentRect$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new SelectionManager$$ExternalSyntheticLambda1(this, 4));
    public final ParcelableSnapshotMutableState positionChangeState$delegate = new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
    public final ParcelableSnapshotMutableState dragBeginPosition$delegate = Updater.mutableStateOf$default(new Offset(0));
    public final ParcelableSnapshotMutableState dragTotalDistance$delegate = Updater.mutableStateOf$default(new Offset(0));
    public final ParcelableSnapshotMutableState startHandlePosition$delegate = Updater.mutableStateOf$default(null);
    public final ParcelableSnapshotMutableState endHandlePosition$delegate = Updater.mutableStateOf$default(null);
    public final ParcelableSnapshotMutableState draggingHandle$delegate = Updater.mutableStateOf$default(null);
    public final ParcelableSnapshotMutableState currentDragPosition$delegate = Updater.mutableStateOf$default(null);

    public SelectionManager(SelectionRegistrarImpl selectionRegistrarImpl) {
        this.selectionRegistrar = selectionRegistrarImpl;
        selectionRegistrarImpl.onPositionChangeCallback = new SelectionManager$$ExternalSyntheticLambda0(this, 8);
        int i = 1;
        selectionRegistrarImpl.onSelectionUpdateStartCallback = new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(i, this);
        selectionRegistrarImpl.onSelectionUpdateCallback = new SearchResultsFragment$$ExternalSyntheticLambda15(i, this);
        int i2 = 3;
        selectionRegistrarImpl.onSelectionUpdateEndCallback = new SelectionManager$$ExternalSyntheticLambda1(this, i2);
        selectionRegistrarImpl.onSelectableChangeCallback = new SelectionManager$$ExternalSyntheticLambda0(this, 2);
        selectionRegistrarImpl.afterSelectableUnsubscribe = new SelectionManager$$ExternalSyntheticLambda0(this, i2);
    }

    /* renamed from: convertToContainerCoordinates-R5De75A, reason: not valid java name */
    public final long m231convertToContainerCoordinatesR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        LayoutCoordinates layoutCoordinates2 = this.containerLayoutCoordinates;
        if (layoutCoordinates2 == null || !layoutCoordinates2.isAttached()) {
            return 9205357640488583168L;
        }
        return requireContainerCoordinates$foundation().mo518localPositionOfR5De75A(layoutCoordinates, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void copy$foundation() {
        /*
            r13 = this;
            androidx.compose.foundation.text.selection.Selection r0 = r13.getSelection()
            r1 = 0
            if (r0 == 0) goto L11
            androidx.compose.foundation.text.selection.SelectionRegistrarImpl r0 = r13.selectionRegistrar
            androidx.collection.MutableLongObjectMap r2 = r0.getSubselections()
            int r2 = r2._size
            if (r2 != 0) goto L14
        L11:
            r0 = r1
            goto La2
        L14:
            androidx.compose.ui.text.AnnotatedString$Builder r2 = new androidx.compose.ui.text.AnnotatedString$Builder
            r2.<init>()
            androidx.compose.ui.layout.LayoutCoordinates r3 = r13.requireContainerCoordinates$foundation()
            java.util.ArrayList r3 = r0.sort(r3)
            int r4 = r3.size()
            java.util.ListIterator r4 = r3.listIterator(r4)
        L29:
            boolean r5 = r4.hasPrevious()
            r6 = -1
            if (r5 == 0) goto L53
            java.lang.Object r5 = r4.previous()
            androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate r5 = (androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate) r5
            androidx.collection.MutableLongObjectMap r7 = r0.getSubselections()
            long r8 = r5.selectableId
            java.lang.Object r5 = r7.get(r8)
            androidx.compose.foundation.text.selection.Selection r5 = (androidx.compose.foundation.text.selection.Selection) r5
            if (r5 == 0) goto L29
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r7 = r5.start
            int r7 = r7.offset
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r5 = r5.end
            int r5 = r5.offset
            if (r7 == r5) goto L29
            int r4 = r4.nextIndex()
            goto L54
        L53:
            r4 = r6
        L54:
            if (r4 == r6) goto L9e
            int r5 = r3.size()
            r6 = 0
            r7 = r6
        L5c:
            if (r7 >= r5) goto L9e
            java.lang.Object r8 = r3.get(r7)
            androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate r8 = (androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate) r8
            androidx.collection.MutableLongObjectMap r9 = r0.getSubselections()
            long r10 = r8.selectableId
            java.lang.Object r9 = r9.get(r10)
            androidx.compose.foundation.text.selection.Selection r9 = (androidx.compose.foundation.text.selection.Selection) r9
            if (r9 == 0) goto L9b
            androidx.compose.ui.text.AnnotatedString r8 = r8.getText()
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r10 = r9.start
            int r10 = r10.offset
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r9 = r9.end
            int r9 = r9.offset
            long r9 = androidx.compose.ui.text.ParagraphKt.TextRange(r10, r9)
            if (r7 < r4) goto L86
            r11 = 1
            goto L87
        L86:
            r11 = r6
        L87:
            int r12 = androidx.compose.ui.text.TextRange.m644getMinimpl(r9)
            int r9 = androidx.compose.ui.text.TextRange.m643getMaximpl(r9)
            r2.append(r8, r12, r9)
            if (r11 != 0) goto L9b
            r8 = 10
            java.lang.StringBuilder r9 = r2.text
            r9.append(r8)
        L9b:
            int r7 = r7 + 1
            goto L5c
        L9e:
            androidx.compose.ui.text.AnnotatedString r0 = r2.toAnnotatedString()
        La2:
            if (r0 == 0) goto Lb6
            java.lang.String r2 = r0.text
            int r2 = r2.length()
            if (r2 <= 0) goto Lad
            r1 = r0
        Lad:
            if (r1 == 0) goto Lb6
            kotlin.jvm.functions.Function1 r13 = r13.onCopyHandler
            if (r13 == 0) goto Lb6
            r13.invoke(r1)
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionManager.copy$foundation():void");
    }

    public final MultiWidgetSelectionDelegate getAnchorSelectable$foundation(Selection.AnchorInfo anchorInfo) {
        return (MultiWidgetSelectionDelegate) this.selectionRegistrar._selectableMap.get(anchorInfo.selectableId);
    }

    public final Pair getContextTextAndSelection$foundation() {
        int i;
        int i2;
        int i3;
        if (getSelection() == null) {
            return null;
        }
        SelectionRegistrarImpl selectionRegistrarImpl = this.selectionRegistrar;
        if (selectionRegistrarImpl._selectables.isEmpty()) {
            return null;
        }
        AnnotatedString.Builder builder = new AnnotatedString.Builder();
        ArrayList sort = selectionRegistrarImpl.sort(requireContainerCoordinates$foundation());
        ListIterator listIterator = sort.listIterator(sort.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i = -1;
                break;
            }
            Selection selection = (Selection) selectionRegistrarImpl.getSubselections().get(((MultiWidgetSelectionDelegate) listIterator.previous()).selectableId);
            if (selection != null && selection.start.offset != selection.end.offset) {
                i = listIterator.nextIndex();
                break;
            }
        }
        if (i != -1) {
            int size = sort.size();
            i2 = -1;
            i3 = -1;
            int i4 = 0;
            while (i4 < size) {
                MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = (MultiWidgetSelectionDelegate) sort.get(i4);
                Selection selection2 = (Selection) selectionRegistrarImpl.getSubselections().get(multiWidgetSelectionDelegate.selectableId);
                if (selection2 != null) {
                    AnnotatedString text = multiWidgetSelectionDelegate.getText();
                    long TextRange = ParagraphKt.TextRange(selection2.start.offset, selection2.end.offset);
                    boolean z = i4 >= i;
                    if (i2 == -1) {
                        i2 = TextRange.m644getMinimpl(TextRange);
                        builder.append(text, 0, TextRange.m644getMinimpl(TextRange));
                    }
                    builder.append(text, TextRange.m644getMinimpl(TextRange), TextRange.m643getMaximpl(TextRange));
                    StringBuilder sb = builder.text;
                    if (z) {
                        i3 = sb.length();
                        builder.append(text, TextRange.m643getMaximpl(TextRange), text.text.length());
                    } else {
                        sb.append('\n');
                    }
                }
                i4++;
            }
        } else {
            i2 = -1;
            i3 = -1;
        }
        AnnotatedString annotatedString = builder.toAnnotatedString();
        if (i2 == -1 || i3 == -1) {
            return null;
        }
        return new Pair(annotatedString, new TextRange(ParagraphKt.TextRange(i2, i3)));
    }

    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    public final Selection getSelection() {
        return (Selection) this._selection.getValue();
    }

    public final boolean isInTouchMode() {
        return ((Boolean) this._isInTouchMode.getValue()).booleanValue();
    }

    public final boolean isNonEmptySelection$foundation() {
        Selection selection = getSelection();
        if (selection != null) {
            Selection.AnchorInfo anchorInfo = selection.end;
            Selection.AnchorInfo anchorInfo2 = selection.start;
            if (!Intrinsics.areEqual(anchorInfo2, anchorInfo)) {
                if (anchorInfo2.selectableId == anchorInfo.selectableId) {
                    return true;
                }
                LayoutCoordinates requireContainerCoordinates$foundation = requireContainerCoordinates$foundation();
                SelectionRegistrarImpl selectionRegistrarImpl = this.selectionRegistrar;
                ArrayList sort = selectionRegistrarImpl.sort(requireContainerCoordinates$foundation);
                int size = sort.size();
                for (int i = 0; i < size; i++) {
                    Selection selection2 = (Selection) selectionRegistrarImpl.getSubselections().get(((MultiWidgetSelectionDelegate) sort.get(i)).selectableId);
                    if (selection2 != null && selection2.start.offset != selection2.end.offset) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void onRelease() {
        HapticFeedback hapticFeedback;
        MutableLongObjectMap mutableLongObjectMap = LongObjectMapKt.EmptyLongObjectMap;
        mutableLongObjectMap.getClass();
        this.selectionRegistrar.subselections$delegate.setValue(mutableLongObjectMap);
        this.showToolbar = false;
        updateSelectionToolbar();
        if (getSelection() != null) {
            this.onSelectionChange.invoke(null);
            if (!isInTouchMode() || (hapticFeedback = this.hapticFeedBack) == null) {
                return;
            }
            ((PlatformHapticFeedback) hapticFeedback).m497performHapticFeedbackCdsT49E(9);
        }
    }

    public final LayoutCoordinates requireContainerCoordinates$foundation() {
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        if (layoutCoordinates == null) {
            throw LazyItemScope$CC.m("null coordinates");
        }
        if (!layoutCoordinates.isAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("unattached coordinates");
        }
        return layoutCoordinates;
    }

    public final void setInTouchMode(boolean z) {
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this._isInTouchMode;
        if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() != z) {
            parcelableSnapshotMutableState.setValue(Boolean.valueOf(z));
            updateSelectionToolbar();
        }
    }

    public final void setSelection(Selection selection) {
        this._selection.setValue(selection);
        if (selection != null) {
            updateHandleOffsets();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        if (androidx.compose.foundation.text.selection.SimpleLayoutKt.m236containsInclusiveUv8p0NA(r10, r11) == false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateHandleOffsets() {
        /*
            r20 = this;
            r0 = r20
            androidx.compose.foundation.text.selection.Selection r1 = r0.getSelection()
            androidx.compose.ui.layout.LayoutCoordinates r2 = r0.containerLayoutCoordinates
            r3 = 0
            if (r1 == 0) goto L14
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r4 = r1.start
            if (r4 == 0) goto L14
            androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate r4 = r0.getAnchorSelectable$foundation(r4)
            goto L15
        L14:
            r4 = r3
        L15:
            if (r1 == 0) goto L20
            androidx.compose.foundation.text.selection.Selection$AnchorInfo r5 = r1.end
            if (r5 == 0) goto L20
            androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate r5 = r0.getAnchorSelectable$foundation(r5)
            goto L21
        L20:
            r5 = r3
        L21:
            if (r4 == 0) goto L28
            androidx.compose.ui.layout.LayoutCoordinates r6 = r4.getLayoutCoordinates()
            goto L29
        L28:
            r6 = r3
        L29:
            if (r5 == 0) goto L30
            androidx.compose.ui.layout.LayoutCoordinates r7 = r5.getLayoutCoordinates()
            goto L31
        L30:
            r7 = r3
        L31:
            androidx.compose.runtime.ParcelableSnapshotMutableState r8 = r0.endHandlePosition$delegate
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r0.startHandlePosition$delegate
            if (r1 == 0) goto Lab
            if (r2 == 0) goto Lab
            boolean r10 = r2.isAttached()
            if (r10 == 0) goto Lab
            if (r6 != 0) goto L44
            if (r7 != 0) goto L44
            goto Lab
        L44:
            androidx.compose.ui.geometry.Rect r10 = androidx.compose.foundation.text.selection.SimpleLayoutKt.visibleBounds(r2)
            r13 = 9223372034707292159(0x7fffffff7fffffff, double:NaN)
            if (r6 == 0) goto L78
            r15 = 1
            r16 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
            long r11 = r4.m225getHandlePositiondBAh8RU(r1, r15)
            long r18 = r11 & r13
            int r4 = (r18 > r16 ? 1 : (r18 == r16 ? 0 : -1))
            if (r4 != 0) goto L60
            goto L7d
        L60:
            long r11 = r2.mo518localPositionOfR5De75A(r6, r11)
            androidx.compose.ui.geometry.Offset r4 = new androidx.compose.ui.geometry.Offset
            r4.<init>(r11)
            androidx.compose.foundation.text.Handle r6 = r0.getDraggingHandle()
            androidx.compose.foundation.text.Handle r15 = androidx.compose.foundation.text.Handle.SelectionStart
            if (r6 == r15) goto L7e
            boolean r6 = androidx.compose.foundation.text.selection.SimpleLayoutKt.m236containsInclusiveUv8p0NA(r10, r11)
            if (r6 == 0) goto L7d
            goto L7e
        L78:
            r16 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
        L7d:
            r4 = r3
        L7e:
            r9.setValue(r4)
            if (r7 == 0) goto La7
            r4 = 0
            long r4 = r5.m225getHandlePositiondBAh8RU(r1, r4)
            long r11 = r4 & r13
            int r1 = (r11 > r16 ? 1 : (r11 == r16 ? 0 : -1))
            if (r1 != 0) goto L8f
            goto La7
        L8f:
            long r1 = r2.mo518localPositionOfR5De75A(r7, r4)
            androidx.compose.ui.geometry.Offset r4 = new androidx.compose.ui.geometry.Offset
            r4.<init>(r1)
            androidx.compose.foundation.text.Handle r0 = r0.getDraggingHandle()
            androidx.compose.foundation.text.Handle r5 = androidx.compose.foundation.text.Handle.SelectionEnd
            if (r0 == r5) goto La6
            boolean r0 = androidx.compose.foundation.text.selection.SimpleLayoutKt.m236containsInclusiveUv8p0NA(r10, r1)
            if (r0 == 0) goto La7
        La6:
            r3 = r4
        La7:
            r8.setValue(r3)
            return
        Lab:
            r9.setValue(r3)
            r8.setValue(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionManager.updateHandleOffsets():void");
    }

    /* renamed from: updateSelection-jyLRC_s$foundation, reason: not valid java name */
    public final boolean m232updateSelectionjyLRC_s$foundation(long j, long j2, boolean z, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
        MutableLongIntMap mutableLongIntMap;
        ArrayList arrayList;
        SelectionLayout selectionLayout;
        SelectionRegistrarImpl selectionRegistrarImpl;
        TextLayoutResult textLayoutResult;
        long j3;
        int i;
        int i2;
        long m385minusMKHz9U;
        int i3;
        SelectionLayoutBuilder selectionLayoutBuilder;
        Direction appendSelectableInfo_Parwq6A$otherDirection;
        Direction direction;
        Direction direction2;
        SelectionRegistrarImpl selectionRegistrarImpl2;
        boolean z2;
        ArrayList arrayList2;
        Direction direction3;
        int i4;
        Direction direction4;
        Direction direction5;
        Direction direction6;
        SelectionLayoutBuilder selectionLayoutBuilder2;
        int i5;
        int i6;
        Selection.AnchorInfo anchorInfo;
        Selection.AnchorInfo anchorInfo2;
        this.draggingHandle$delegate.setValue(z ? Handle.SelectionStart : Handle.SelectionEnd);
        this.currentDragPosition$delegate.setValue(new Offset(j));
        LayoutCoordinates requireContainerCoordinates$foundation = requireContainerCoordinates$foundation();
        SelectionRegistrarImpl selectionRegistrarImpl3 = this.selectionRegistrar;
        ArrayList sort = selectionRegistrarImpl3.sort(requireContainerCoordinates$foundation);
        int i7 = LongIntMapKt.$r8$clinit;
        MutableLongIntMap mutableLongIntMap2 = new MutableLongIntMap(6);
        int size = sort.size();
        for (int i8 = 0; i8 < size; i8++) {
            mutableLongIntMap2.set(((MultiWidgetSelectionDelegate) sort.get(i8)).selectableId, i8);
        }
        int i9 = 1;
        long j4 = 9223372034707292159L;
        SelectionLayoutBuilder selectionLayoutBuilder3 = new SelectionLayoutBuilder(j, j2, requireContainerCoordinates$foundation, z, (j2 & 9223372034707292159L) == 9205357640488583168L ? null : getSelection(), new HomeViewModel$getPlacesCards$$inlined$sortedBy$1(i9, mutableLongIntMap2));
        int size2 = sort.size();
        int i10 = 0;
        while (true) {
            mutableLongIntMap = selectionLayoutBuilder3.selectableIdToInfoListIndex;
            arrayList = selectionLayoutBuilder3.infoList;
            if (i10 >= size2) {
                break;
            }
            MultiWidgetSelectionDelegate multiWidgetSelectionDelegate = (MultiWidgetSelectionDelegate) sort.get(i10);
            LayoutCoordinates layoutCoordinates = multiWidgetSelectionDelegate.getLayoutCoordinates();
            if (layoutCoordinates == null || (textLayoutResult = (TextLayoutResult) multiWidgetSelectionDelegate.layoutResultCallback.invoke()) == null) {
                selectionRegistrarImpl2 = selectionRegistrarImpl3;
                i2 = size2;
                i4 = i10;
                arrayList2 = sort;
                i3 = i9;
                j3 = j4;
                selectionLayoutBuilder2 = selectionLayoutBuilder3;
            } else {
                j3 = j4;
                long mo518localPositionOfR5De75A = selectionLayoutBuilder3.containerCoordinates.mo518localPositionOfR5De75A(layoutCoordinates, 0L);
                long m385minusMKHz9U2 = Offset.m385minusMKHz9U(selectionLayoutBuilder3.currentPosition, mo518localPositionOfR5De75A);
                int i11 = i9;
                long j5 = selectionLayoutBuilder3.previousHandlePosition;
                if ((j5 & j3) == 9205357640488583168L) {
                    i2 = size2;
                    i = i10;
                    m385minusMKHz9U = 9205357640488583168L;
                } else {
                    i = i10;
                    i2 = size2;
                    m385minusMKHz9U = Offset.m385minusMKHz9U(j5, mo518localPositionOfR5De75A);
                }
                long j6 = multiWidgetSelectionDelegate.selectableId;
                i3 = i11;
                long j7 = textLayoutResult.size;
                float f = (int) (j7 >> 32);
                float f2 = (int) (j7 & 4294967295L);
                int i12 = (int) (m385minusMKHz9U2 >> 32);
                Direction direction7 = Float.intBitsToFloat(i12) < RecyclerView.DECELERATION_RATE ? Direction.BEFORE : Float.intBitsToFloat(i12) > f ? Direction.AFTER : Direction.ON;
                int i13 = (int) (m385minusMKHz9U2 & 4294967295L);
                Direction direction8 = Float.intBitsToFloat(i13) < RecyclerView.DECELERATION_RATE ? Direction.BEFORE : Float.intBitsToFloat(i13) > f2 ? Direction.AFTER : Direction.ON;
                boolean z3 = selectionLayoutBuilder3.isStartHandle;
                Selection selection = selectionLayoutBuilder3.previousSelection;
                if (z3) {
                    selectionLayoutBuilder = selectionLayoutBuilder3;
                    Direction direction9 = direction7;
                    appendSelectableInfo_Parwq6A$otherDirection = SimpleLayoutKt.appendSelectableInfo_Parwq6A$otherDirection(direction9, direction8, selectionLayoutBuilder, j6, selection != null ? selection.end : null);
                    selectionRegistrarImpl2 = selectionRegistrarImpl3;
                    direction3 = appendSelectableInfo_Parwq6A$otherDirection;
                    arrayList2 = sort;
                    i4 = i;
                    direction = direction9;
                    direction2 = direction8;
                    direction6 = direction2;
                    direction4 = direction3;
                    z2 = z3;
                    direction5 = direction;
                } else {
                    Direction direction10 = direction7;
                    selectionLayoutBuilder = selectionLayoutBuilder3;
                    appendSelectableInfo_Parwq6A$otherDirection = SimpleLayoutKt.appendSelectableInfo_Parwq6A$otherDirection(direction10, direction8, selectionLayoutBuilder, j6, selection != null ? selection.start : null);
                    direction = direction10;
                    direction2 = direction8;
                    selectionRegistrarImpl2 = selectionRegistrarImpl3;
                    z2 = z3;
                    arrayList2 = sort;
                    direction3 = direction2;
                    i4 = i;
                    direction4 = direction;
                    direction5 = appendSelectableInfo_Parwq6A$otherDirection;
                    direction6 = direction5;
                }
                selectionLayoutBuilder2 = selectionLayoutBuilder;
                Direction resolve2dDirection = SimpleLayoutKt.resolve2dDirection(direction, direction2);
                if (resolve2dDirection == Direction.ON || resolve2dDirection != appendSelectableInfo_Parwq6A$otherDirection) {
                    int length = textLayoutResult.layoutInput.text.text.length();
                    HomeViewModel$getPlacesCards$$inlined$sortedBy$1 homeViewModel$getPlacesCards$$inlined$sortedBy$1 = selectionLayoutBuilder2.selectableIdOrderingComparator;
                    if (z2) {
                        i6 = SimpleLayoutKt.m238getOffsetForPosition3MmeM6k(m385minusMKHz9U2, textLayoutResult);
                        if (selection == null || (anchorInfo2 = selection.end) == null) {
                            length = i6;
                        } else {
                            int compare = homeViewModel$getPlacesCards$$inlined$sortedBy$1.compare(Long.valueOf(anchorInfo2.selectableId), Long.valueOf(j6));
                            if (compare < 0) {
                                length = 0;
                            } else if (compare <= 0) {
                                length = anchorInfo2.offset;
                            }
                        }
                        i5 = length;
                    } else {
                        int m238getOffsetForPosition3MmeM6k = SimpleLayoutKt.m238getOffsetForPosition3MmeM6k(m385minusMKHz9U2, textLayoutResult);
                        if (selection == null || (anchorInfo = selection.start) == null) {
                            length = m238getOffsetForPosition3MmeM6k;
                        } else {
                            int compare2 = homeViewModel$getPlacesCards$$inlined$sortedBy$1.compare(Long.valueOf(anchorInfo.selectableId), Long.valueOf(j6));
                            if (compare2 < 0) {
                                length = 0;
                            } else if (compare2 <= 0) {
                                length = anchorInfo.offset;
                            }
                        }
                        i5 = m238getOffsetForPosition3MmeM6k;
                        i6 = length;
                    }
                    int m238getOffsetForPosition3MmeM6k2 = (m385minusMKHz9U & j3) == 9205357640488583168L ? -1 : SimpleLayoutKt.m238getOffsetForPosition3MmeM6k(m385minusMKHz9U, textLayoutResult);
                    int i14 = selectionLayoutBuilder2.currentSlot + 2;
                    selectionLayoutBuilder2.currentSlot = i14;
                    SelectableInfo selectableInfo = new SelectableInfo(j6, i14, i6, i5, m238getOffsetForPosition3MmeM6k2, textLayoutResult);
                    selectionLayoutBuilder2.startSlot = selectionLayoutBuilder2.updateSlot(selectionLayoutBuilder2.startSlot, direction5, direction6);
                    selectionLayoutBuilder2.endSlot = selectionLayoutBuilder2.updateSlot(selectionLayoutBuilder2.endSlot, direction4, direction3);
                    mutableLongIntMap.set(j6, arrayList.size());
                    arrayList.add(selectableInfo);
                }
            }
            i10 = i4 + 1;
            size2 = i2;
            i9 = i3;
            selectionLayoutBuilder3 = selectionLayoutBuilder2;
            j4 = j3;
            sort = arrayList2;
            selectionRegistrarImpl3 = selectionRegistrarImpl2;
        }
        SelectionRegistrarImpl selectionRegistrarImpl4 = selectionRegistrarImpl3;
        SelectionLayoutBuilder selectionLayoutBuilder4 = selectionLayoutBuilder3;
        int i15 = i9;
        int i16 = selectionLayoutBuilder4.currentSlot + 1;
        int size3 = arrayList.size();
        if (size3 == 0) {
            selectionLayout = null;
        } else if (size3 != i15) {
            int i17 = selectionLayoutBuilder4.startSlot;
            int i18 = i17 == -1 ? i16 : i17;
            int i19 = selectionLayoutBuilder4.endSlot;
            selectionLayout = new MultiSelectionLayout(mutableLongIntMap, arrayList, i18, i19 == -1 ? i16 : i19, selectionLayoutBuilder4.isStartHandle, selectionLayoutBuilder4.previousSelection);
        } else {
            SelectableInfo selectableInfo2 = (SelectableInfo) CollectionsKt.single((List) arrayList);
            int i20 = selectionLayoutBuilder4.startSlot;
            int i21 = i20 == -1 ? i16 : i20;
            int i22 = selectionLayoutBuilder4.endSlot;
            selectionLayout = new SingleSelectionLayout(selectionLayoutBuilder4.isStartHandle, i21, i22 == -1 ? i16 : i22, selectionLayoutBuilder4.previousSelection, selectableInfo2);
        }
        if (selectionLayout == null || !selectionLayout.shouldRecomputeSelection(this.previousSelectionLayout)) {
            return false;
        }
        Selection adjust = selectionAdjustment$Companion$$ExternalSyntheticLambda0.adjust(selectionLayout);
        if (!Intrinsics.areEqual(adjust, getSelection())) {
            if (isInTouchMode()) {
                selectionRegistrarImpl = selectionRegistrarImpl4;
                ArrayList arrayList3 = selectionRegistrarImpl._selectables;
                int size4 = arrayList3.size();
                int i23 = 0;
                while (true) {
                    if (i23 >= size4) {
                        break;
                    }
                    if (((MultiWidgetSelectionDelegate) arrayList3.get(i23)).getText().text.length() > 0) {
                        HapticFeedback hapticFeedback = this.hapticFeedBack;
                        if (hapticFeedback != null) {
                            ((PlatformHapticFeedback) hapticFeedback).m497performHapticFeedbackCdsT49E(9);
                        }
                    } else {
                        i23++;
                    }
                }
            } else {
                selectionRegistrarImpl = selectionRegistrarImpl4;
            }
            selectionRegistrarImpl.subselections$delegate.setValue(selectionLayout.createSubSelections(adjust));
            this.onSelectionChange.invoke(adjust);
            this.isLongPressOrClickSelection = false;
        }
        this.previousSelectionLayout = selectionLayout;
        return true;
    }

    public final void updateSelectionToolbar() {
        StandaloneCoroutine standaloneCoroutine;
        if (((Boolean) this.hasFocus$delegate.getValue()).booleanValue()) {
            boolean z = this.showToolbar;
            CardView.AnonymousClass1 anonymousClass1 = this.toolbarRequester;
            if (z && isInTouchMode()) {
                if (((Rect) this.derivedContentRect$delegate.getValue()) == null) {
                    return;
                }
                anonymousClass1.show();
            } else {
                TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) anonymousClass1.mCardBackground;
                if (textContextMenuToolbarHandlerNode == null || (standaloneCoroutine = textContextMenuToolbarHandlerNode.textToolbarJob) == null) {
                    return;
                }
                standaloneCoroutine.cancel(null);
                textContextMenuToolbarHandlerNode.textToolbarJob = null;
            }
        }
    }
}
