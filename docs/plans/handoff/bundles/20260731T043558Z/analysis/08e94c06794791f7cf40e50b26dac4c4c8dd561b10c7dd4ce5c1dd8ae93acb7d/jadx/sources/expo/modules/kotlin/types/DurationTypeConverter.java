package expo.modules.kotlin.types;

import com.facebook.react.bridge.Dynamic;
import com.facebook.react.bridge.ReadableType;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.jni.CppType;
import expo.modules.kotlin.jni.ExpectedType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* compiled from: DurationTypeConverter.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016¨\u0006\u0015"}, d2 = {"Lexpo/modules/kotlin/types/DurationTypeConverter;", "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;", "Lkotlin/time/Duration;", "isOptional", "", "<init>", "(Z)V", "convertFromDynamic", "value", "Lcom/facebook/react/bridge/Dynamic;", "context", "Lexpo/modules/kotlin/AppContext;", "convertFromDynamic-3nIYWDw", "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)J", "convertFromAny", "", "convertFromAny-3nIYWDw", "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)J", "getCppRequiredTypes", "Lexpo/modules/kotlin/jni/ExpectedType;", "isTrivial", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class DurationTypeConverter extends DynamicAwareTypeConverters<Duration> {
    @Override // expo.modules.kotlin.types.TypeConverter
    public boolean isTrivial() {
        return false;
    }

    public DurationTypeConverter(boolean z) {
        super(z);
    }

    @Override // expo.modules.kotlin.types.DynamicAwareTypeConverters
    public /* bridge */ /* synthetic */ Duration convertFromAny(Object obj, AppContext appContext) {
        return Duration.m3461boximpl(m1926convertFromAny3nIYWDw(obj, appContext));
    }

    @Override // expo.modules.kotlin.types.DynamicAwareTypeConverters
    public /* bridge */ /* synthetic */ Duration convertFromDynamic(Dynamic dynamic, AppContext appContext) {
        return Duration.m3461boximpl(m1927convertFromDynamic3nIYWDw(dynamic, appContext));
    }

    /* renamed from: convertFromDynamic-3nIYWDw, reason: not valid java name */
    public long m1927convertFromDynamic3nIYWDw(Dynamic value, AppContext context) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.getType() != ReadableType.Number) {
            throw new IllegalArgumentException("Expected a number, but received " + value.getType());
        }
        return DurationKt.toDuration(value.asDouble(), DurationUnit.SECONDS);
    }

    /* renamed from: convertFromAny-3nIYWDw, reason: not valid java name */
    public long m1926convertFromAny3nIYWDw(Object value, AppContext context) {
        Intrinsics.checkNotNullParameter(value, "value");
        return DurationKt.toDuration(((Double) value).doubleValue(), DurationUnit.SECONDS);
    }

    @Override // expo.modules.kotlin.types.TypeConverter
    /* renamed from: getCppRequiredTypes */
    public ExpectedType get$cppRequireType() {
        return new ExpectedType(CppType.DOUBLE);
    }
}
