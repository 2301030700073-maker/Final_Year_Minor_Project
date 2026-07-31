package kotlinx.datetime.internal.format.parser;

import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.datetime.internal.MathKt;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NumberSpanParserOperation implements ParserOperation {
    public final List consumers;
    public final boolean isFlexible;
    public final int minLength;

    public NumberSpanParserOperation(List list) {
        boolean z;
        list.getClass();
        this.consumers = list;
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (!it.hasNext()) {
                break;
            }
            Integer num = ((NumberConsumer) it.next()).length;
            if (num != null) {
                i3 = num.intValue();
            }
            i2 += i3;
        }
        this.minLength = i2;
        List list2 = this.consumers;
        if (list2 == null || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((NumberConsumer) it2.next()).length == null) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        this.isFlexible = z;
        List list3 = this.consumers;
        if (list3 == null || !list3.isEmpty()) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                Integer num2 = ((NumberConsumer) it3.next()).length;
                if ((num2 != null ? num2.intValue() : Integer.MAX_VALUE) <= 0) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                    throw null;
                }
            }
        }
        List list4 = this.consumers;
        if (list4 == null || !list4.isEmpty()) {
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                if (((NumberConsumer) it4.next()).length == null && (i = i + 1) < 0) {
                    IntOffsetKt.throwCountOverflow();
                    throw null;
                }
            }
        }
        if (i <= 1) {
            return;
        }
        List list5 = this.consumers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list5) {
            if (((NumberConsumer) obj).length == null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            arrayList2.add(((NumberConsumer) it5.next()).whatThisExpects);
        }
        DBUtil$$ExternalSyntheticBUOutline0.m(arrayList2, ". Parsing is undefined: for example, with variable-length month number and variable-length day of month, '111' can be parsed as Jan 11th or Nov 1st.", "At most one variable-length numeric field in a row is allowed, but got several: ");
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    /* renamed from: consume-FANa98k, reason: not valid java name */
    public final Object mo1023consumeFANa98k(Copyable copyable, String str, int i) {
        int i2;
        int i3 = this.minLength;
        if (i + i3 > str.length()) {
            return new ParseError(i, new K9$$ExternalSyntheticLambda0(26, this));
        }
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        while (true) {
            i2 = 1;
            if (ref$IntRef.element + i >= str.length() || !MathKt.isAsciiDigit(str.charAt(ref$IntRef.element + i))) {
                break;
            }
            ref$IntRef.element++;
        }
        if (ref$IntRef.element < i3) {
            return new ParseError(i, new SealedClassSerializer$$ExternalSyntheticLambda0(i2, ref$IntRef, this));
        }
        List list = this.consumers;
        int size = list.size();
        int i4 = 0;
        while (i4 < size) {
            Integer num = ((NumberConsumer) list.get(i4)).length;
            int intValue = (num != null ? num.intValue() : (ref$IntRef.element - i3) + 1) + i;
            NumberConsumptionError consume = ((NumberConsumer) list.get(i4)).consume(i, intValue, copyable, str);
            if (consume != null) {
                return new ParseError(i, new ExposedDropdownMenuKt$$ExternalSyntheticLambda1(str.subSequence(i, intValue).toString(), this, i4, consume));
            }
            i4++;
            i = intValue;
        }
        return Integer.valueOf(i);
    }

    public final String getWhatThisExpects() {
        List<NumberConsumer> list = this.consumers;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (NumberConsumer numberConsumer : list) {
            StringBuilder sb = new StringBuilder();
            Integer num = numberConsumer.length;
            sb.append(num == null ? "at least one digit" : num + " digits");
            sb.append(" for ");
            sb.append(numberConsumer.whatThisExpects);
            arrayList.add(sb.toString());
        }
        boolean z = this.isFlexible;
        int i = this.minLength;
        if (z) {
            return "a number with at least " + i + " digits: " + arrayList;
        }
        return "a number with exactly " + i + " digits: " + arrayList;
    }

    public final String toString() {
        return getWhatThisExpects();
    }
}
