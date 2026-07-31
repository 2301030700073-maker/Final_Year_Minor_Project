package androidx.navigation3.runtime;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DecoratedNavEntriesKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ DecoratedNavEntriesKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                final Set set = (Set) obj5;
                final Set set2 = (Set) obj4;
                final MutableState mutableState = (MutableState) obj3;
                final MutableState mutableState2 = (MutableState) obj2;
                final Object obj6 = this.f$0;
                return new DisposableEffectResult() { // from class: androidx.navigation3.runtime.DecoratedNavEntriesKt$PrepareBackStack$lambda$2$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        ArrayList arrayList;
                        List mutableList;
                        List list = (List) mutableState.getValue();
                        if (list instanceof RandomAccess) {
                            arrayList = new ArrayList(list.size());
                            int size = list.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                arrayList.add(((NavEntry) list.get(i2)).contentKey);
                            }
                        } else {
                            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((NavEntry) it.next()).contentKey);
                            }
                        }
                        Object obj7 = obj6;
                        if (!(arrayList.contains(obj7) ? false : set.remove(obj7)) || set2.contains(obj7)) {
                            return;
                        }
                        List list2 = (List) mutableState2.getValue();
                        if (!(list2 instanceof RandomAccess)) {
                            list2.getClass();
                            if (list2.size() <= 1) {
                                mutableList = CollectionsKt.toList(list2);
                            } else {
                                mutableList = CollectionsKt.toMutableList((Iterable) list2);
                                Collections.reverse(mutableList);
                            }
                            Iterator it2 = mutableList.iterator();
                            while (it2.hasNext()) {
                                ((NavEntryDecorator) it2.next()).onPop.invoke(obj7);
                            }
                            return;
                        }
                        int size2 = list2.size() - 1;
                        if (size2 < 0) {
                            return;
                        }
                        while (true) {
                            int i3 = size2 - 1;
                            ((NavEntryDecorator) list2.get(size2)).onPop.invoke(obj7);
                            if (i3 < 0) {
                                return;
                            } else {
                                size2 = i3;
                            }
                        }
                    }
                };
            default:
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) this.f$0;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj5;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj3;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                float floatValue = ((Float) obj).floatValue();
                MouseWheelScrollingLogic.MouseWheelScrollDelta sumOrNull = MouseWheelScrollingLogic.sumOrNull(mouseWheelScrollingLogic.channel);
                if (sumOrNull != null) {
                    CardView.AnonymousClass1 anonymousClass1 = mouseWheelScrollingLogic.velocityTracker;
                    long j = sumOrNull.timeMillis;
                    long j2 = sumOrNull.value;
                    ((VelocityTracker1D) anonymousClass1.mCardBackground).addDataPoint(j, Float.intBitsToFloat((int) (j2 >> 32)));
                    ((VelocityTracker1D) anonymousClass1.this$0).addDataPoint(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
                    MouseWheelScrollingLogic.MouseWheelScrollDelta plus = ((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef.element).plus(sumOrNull);
                    ref$ObjectRef.element = plus;
                    ref$FloatRef.element = scrollingLogic.m76toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(plus.value));
                    ref$BooleanRef.element = !ScrollableKt.access$isLowScrollingDelta(r14 - floatValue);
                }
                return Boolean.valueOf(sumOrNull != null);
        }
    }
}
