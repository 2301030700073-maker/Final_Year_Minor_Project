package j$.desugar.sun.nio.fs;

import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.OffsetDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.time.temporal.q;
import j$.util.Map;
import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.Collectors;
import j$.util.w;
import j$.util.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements Predicate, j$.time.temporal.m, Function, IntFunction, BinaryOperator, Supplier, BiConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ m(int i) {
        this.a = i;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 22:
                ((Collection) obj).add(obj2);
                break;
            default:
                ((List) obj).add(obj2);
                break;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 17:
                break;
            case 19:
                break;
            case 23:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 17:
                Map map = (Map) obj;
                Set set = Collectors.a;
                for (Map.Entry entry : ((Map) obj2).entrySet()) {
                    Object key = entry.getKey();
                    Object requireNonNull = Objects.requireNonNull(entry.getValue());
                    Object putIfAbsent = Map.EL.putIfAbsent(map, key, requireNonNull);
                    if (putIfAbsent != null) {
                        j$.nio.file.m.i("Duplicate key %s (attempted merging values %s and %s)", new Object[]{key, putIfAbsent, requireNonNull});
                        return null;
                    }
                }
                return map;
            case 19:
                int[] iArr = (int[]) obj;
                Set set2 = Collectors.a;
                iArr[0] = iArr[0] + ((int[]) obj2)[0];
                return iArr;
            case 23:
                Collection collection = (Collection) obj;
                Set set3 = Collectors.a;
                collection.addAll((Collection) obj2);
                return collection;
            default:
                List list = (List) obj;
                Set set4 = Collectors.a;
                list.addAll((List) obj2);
                return list;
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
            case 15:
                break;
            case 20:
                break;
        }
        return Function$CC.$default$compose(this, function);
    }

    public Object g(TemporalAccessor temporalAccessor) {
        int i = this.a;
        m mVar = q.a;
        OffsetDateTime offsetDateTime = null;
        switch (i) {
            case 1:
                return Instant.a0(temporalAccessor);
            case 2:
                return LocalDate.b0(temporalAccessor);
            case 3:
                return LocalDateTime.a0(temporalAccessor);
            case 4:
                int i2 = OffsetDateTime.c;
                if (temporalAccessor instanceof OffsetDateTime) {
                    return (OffsetDateTime) temporalAccessor;
                }
                try {
                    ZoneOffset f0 = ZoneOffset.f0(temporalAccessor);
                    LocalDate localDate = (LocalDate) temporalAccessor.F(q.f);
                    j$.time.i iVar = (j$.time.i) temporalAccessor.F(q.g);
                    offsetDateTime = (localDate == null || iVar == null) ? OffsetDateTime.ofInstant(Instant.a0(temporalAccessor), f0) : new OffsetDateTime(LocalDateTime.c0(localDate, iVar), f0);
                    return offsetDateTime;
                } catch (DateTimeException e) {
                    j$.nio.file.m.h("Unable to obtain OffsetDateTime from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
                    return offsetDateTime;
                }
            case 5:
                return ZonedDateTime.from(temporalAccessor);
            case 6:
                ZoneId zoneId = (ZoneId) temporalAccessor.F(mVar);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 7:
            default:
                j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_DAY;
                if (temporalAccessor.e(aVar)) {
                    return j$.time.i.e0(temporalAccessor.M(aVar));
                }
                return null;
            case 8:
                return (ZoneId) temporalAccessor.F(mVar);
            case 9:
                return (j$.time.chrono.l) temporalAccessor.F(q.b);
            case 10:
                return (TemporalUnit) temporalAccessor.F(q.c);
            case 11:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.OFFSET_SECONDS;
                if (temporalAccessor.e(aVar2)) {
                    return ZoneOffset.i0(temporalAccessor.k(aVar2));
                }
                return null;
            case 12:
                ZoneId zoneId2 = (ZoneId) temporalAccessor.F(mVar);
                return zoneId2 != null ? zoneId2 : (ZoneId) temporalAccessor.F(q.d);
            case 13:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.EPOCH_DAY;
                if (temporalAccessor.e(aVar3)) {
                    return LocalDate.j0(temporalAccessor.M(aVar3));
                }
                return null;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 18:
                Set set = Collectors.a;
                return new int[1];
            case 21:
                return new w();
            case 24:
                return new ArrayList();
            case 28:
                return new x();
            default:
                Set set2 = Collectors.a;
                return new double[4];
        }
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((String) obj).isEmpty();
    }

    public String toString() {
        switch (this.a) {
            case 8:
                return "ZoneId";
            case 9:
                return "Chronology";
            case 10:
                return "Precision";
            case 11:
                return "ZoneOffset";
            case 12:
                return "Zone";
            case 13:
                return "LocalDate";
            case 14:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    @Override // j$.time.temporal.m
    public j$.time.temporal.l u(j$.time.temporal.l lVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return lVar.c(lVar.o(aVar).d, aVar);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        switch (this.a) {
            case 15:
                break;
            case 20:
                break;
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case 15:
                return obj;
            case 20:
                Set set = Collectors.a;
                return Integer.valueOf(((int[]) obj)[0]);
            default:
                Set set2 = Collectors.a;
                return j$.com.android.tools.r8.a.G(((List) obj).toArray());
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }
}
