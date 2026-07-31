package j$.time;

import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.p1;
import j$.util.stream.Collectors;
import j$.util.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class f implements TemporalAdjuster, IntFunction, Supplier, BiConsumer, BinaryOperator, Function, DoubleFunction {
    public final /* synthetic */ int a;

    public /* synthetic */ f(int i) {
        this.a = i;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Collection) obj).add(obj2);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ((List) obj).add(obj2);
                break;
            case SIZE_BOX_VALUE:
                ((p1) obj).a((CharSequence) obj2);
                break;
            case 26:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 27:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            default:
                ((j$.util.u) obj).a((j$.util.u) obj2);
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                break;
            case SIZE_BOX_VALUE:
                break;
            case 26:
                break;
            case 27:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 15:
                Collection collection = (Collection) obj;
                Set set = Collectors.a;
                collection.addAll((Collection) obj2);
                return collection;
            case RADIO_ROW_VALUE:
                List list = (List) obj;
                Set set2 = Collectors.a;
                list.addAll((List) obj2);
                return list;
            default:
                p1 p1Var = (p1) obj;
                p1 p1Var2 = (p1) obj2;
                p1Var.getClass();
                Objects.requireNonNull(p1Var2);
                if (p1Var2.d != null) {
                    p1Var2.b();
                    p1Var.a(p1Var2.d[0]);
                }
                return p1Var;
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    public Object e(TemporalAccessor temporalAccessor) {
        int i = this.a;
        f fVar = j$.time.temporal.o.a;
        switch (i) {
            case 0:
                return Instant.v(temporalAccessor);
            case 1:
                return LocalDate.w(temporalAccessor);
            case 2:
                return LocalDateTime.v(temporalAccessor);
            case 3:
                ZoneId zoneId = (ZoneId) temporalAccessor.i(fVar);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 4:
            default:
                j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_DAY;
                if (temporalAccessor.c(aVar)) {
                    return LocalTime.z(temporalAccessor.q(aVar));
                }
                return null;
            case 5:
                return (ZoneId) temporalAccessor.i(fVar);
            case 6:
                return (j$.time.chrono.a) temporalAccessor.i(j$.time.temporal.o.b);
            case 7:
                return (TemporalUnit) temporalAccessor.i(j$.time.temporal.o.c);
            case 8:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.OFFSET_SECONDS;
                if (temporalAccessor.c(aVar2)) {
                    return ZoneOffset.D(temporalAccessor.f(aVar2));
                }
                return null;
            case 9:
                ZoneId zoneId2 = (ZoneId) temporalAccessor.i(fVar);
                return zoneId2 != null ? zoneId2 : (ZoneId) temporalAccessor.i(j$.time.temporal.o.d);
            case 10:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.EPOCH_DAY;
                if (temporalAccessor.c(aVar3)) {
                    return LocalDate.ofEpochDay(temporalAccessor.q(aVar3));
                }
                return null;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case IMAGE_VALUE:
                return new j$.util.u();
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case VERTICAL_GRID_ITEM_VALUE:
            default:
                return new LinkedHashSet();
            case LAZY_VERTICAL_GRID_VALUE:
                return new ArrayList();
            case RADIO_GROUP_VALUE:
                return new j$.util.v();
            case RADIO_BUTTON_VALUE:
                return new x();
        }
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public Temporal k(Temporal temporal) {
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return temporal.a(temporal.h(aVar).d, aVar);
    }

    public String toString() {
        switch (this.a) {
            case 5:
                return "ZoneId";
            case 6:
                return "Chronology";
            case 7:
                return "Precision";
            case 8:
                return "ZoneOffset";
            case 9:
                return "Zone";
            case 10:
                return "LocalDate";
            case 11:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 15:
                break;
            case RADIO_ROW_VALUE:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function mo800andThen(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case RADIO_COLUMN_VALUE:
                Set set = Collectors.a;
                return obj;
            default:
                return ((p1) obj).toString();
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }
}
