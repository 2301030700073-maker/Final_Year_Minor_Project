package j$.desugar.sun.nio.fs;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.YearMonth;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.temporal.ChronoField;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.Collectors;
import j$.util.v;
import j$.util.w;
import j$.util.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements Predicate, TemporalQuery, j$.time.temporal.k, IntFunction, Supplier, BiConsumer, BinaryOperator, Function {
    public final /* synthetic */ int a;

    public /* synthetic */ m(int i) {
        this.a = i;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 16:
                ((Collection) obj).add(obj2);
                break;
            case 19:
                ((List) obj).add(obj2);
                break;
            case 27:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 28:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            default:
                ((v) obj).a((v) obj2);
                break;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 16:
                break;
            case 19:
                break;
            case 27:
                break;
            case 28:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 17:
                Collection collection = (Collection) obj;
                Set set = Collectors.a;
                collection.addAll((Collection) obj2);
                return collection;
            case 20:
                List list = (List) obj;
                Set set2 = Collectors.a;
                list.addAll((List) obj2);
                return list;
            default:
                List list2 = (List) obj;
                Set set3 = Collectors.a;
                list2.addAll((List) obj2);
                return list2;
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case OffsetKt.Horizontal /* 15 */:
                return new v();
            case 18:
                return new ArrayList();
            case 22:
                return new w();
            case 23:
                return new y();
            default:
                return new LinkedHashSet();
        }
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // j$.time.temporal.TemporalQuery
    public Object queryFrom(TemporalAccessor temporalAccessor) {
        int i = this.a;
        m mVar = j$.time.temporal.n.a;
        switch (i) {
            case 1:
                return LocalDate.W(temporalAccessor);
            case 2:
                return LocalDateTime.V(temporalAccessor);
            case 3:
                return LocalTime.V(temporalAccessor);
            case 4:
                return YearMonth.U(temporalAccessor);
            case 5:
                m mVar2 = DateTimeFormatterBuilder.f;
                ZoneId zoneId = (ZoneId) temporalAccessor.L(mVar);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 6:
            default:
                ChronoField chronoField = ChronoField.NANO_OF_DAY;
                if (temporalAccessor.d(chronoField)) {
                    return LocalTime.X(temporalAccessor.J(chronoField));
                }
                return null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return (ZoneId) temporalAccessor.L(mVar);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return (j$.time.chrono.j) temporalAccessor.L(j$.time.temporal.n.b);
            case 9:
                return (TemporalUnit) temporalAccessor.L(j$.time.temporal.n.c);
            case 10:
                ChronoField chronoField2 = ChronoField.OFFSET_SECONDS;
                if (temporalAccessor.d(chronoField2)) {
                    return ZoneOffset.ofTotalSeconds(temporalAccessor.k(chronoField2));
                }
                return null;
            case 11:
                ZoneId zoneId2 = (ZoneId) temporalAccessor.L(mVar);
                return zoneId2 != null ? zoneId2 : (ZoneId) temporalAccessor.L(j$.time.temporal.n.d);
            case BasicTextKt.ShiftMeta /* 12 */:
                ChronoField chronoField3 = ChronoField.EPOCH_DAY;
                if (temporalAccessor.d(chronoField3)) {
                    return LocalDate.ofEpochDay(temporalAccessor.J(chronoField3));
                }
                return null;
        }
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((String) obj).isEmpty();
    }

    public String toString() {
        switch (this.a) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "ZoneId";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "Chronology";
            case 9:
                return "Precision";
            case 10:
                return "ZoneOffset";
            case 11:
                return "Zone";
            case BasicTextKt.ShiftMeta /* 12 */:
                return "LocalDate";
            case 13:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    @Override // j$.time.temporal.k
    public Temporal u(Temporal temporal) {
        ChronoField chronoField = ChronoField.DAY_OF_MONTH;
        return temporal.b(temporal.n(chronoField).d, chronoField);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 17:
                break;
            case 20:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function mo970andThen(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case 21:
                Set set = Collectors.a;
                return j$.com.android.tools.r8.a.E(((List) obj).toArray());
            default:
                Set set2 = Collectors.a;
                return obj;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }
}
