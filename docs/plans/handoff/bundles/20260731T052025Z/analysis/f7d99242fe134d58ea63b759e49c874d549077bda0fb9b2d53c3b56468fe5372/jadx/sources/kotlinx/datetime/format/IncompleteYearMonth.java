package kotlinx.datetime.format;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.parser.Copyable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncompleteYearMonth implements YearMonthFieldContainer, Copyable {
    public Integer monthNumber;
    public Integer year;

    public IncompleteYearMonth(Integer num, Integer num2) {
        this.year = num;
        this.monthNumber = num2;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteYearMonth(this.year, this.monthNumber);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteYearMonth)) {
            return false;
        }
        IncompleteYearMonth incompleteYearMonth = (IncompleteYearMonth) obj;
        return Intrinsics.areEqual(this.year, incompleteYearMonth.year) && Intrinsics.areEqual(this.monthNumber, incompleteYearMonth.monthNumber);
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getMonthNumber() {
        return this.monthNumber;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getYear() {
        return this.year;
    }

    public final int hashCode() {
        Integer num = this.year;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        Integer num2 = this.monthNumber;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setMonthNumber(Integer num) {
        this.monthNumber = num;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setYear(Integer num) {
        this.year = num;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Object obj = this.year;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append('-');
        Integer num = this.monthNumber;
        sb.append(num != null ? num : "??");
        return sb.toString();
    }
}
