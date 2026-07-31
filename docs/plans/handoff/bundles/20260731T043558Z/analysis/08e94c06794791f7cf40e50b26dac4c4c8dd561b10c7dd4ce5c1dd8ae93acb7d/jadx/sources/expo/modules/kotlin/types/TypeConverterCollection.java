package expo.modules.kotlin.types;

import com.facebook.react.bridge.Dynamic;
import com.google.firebase.messaging.Constants;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.exception.MissingTypeConverter;
import expo.modules.kotlin.jni.ExpectedType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* compiled from: TypeConverterCollection.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ?\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u0006\b\u0001\u0010\u0016\u0018\u00012#\b\u0004\u0010\u0017\u001a\u001d\u0012\u0013\u0012\u0011H\u0016¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00028\u00000\u000eH\u0086\bø\u0001\u0000J\u001f\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0002\u0010\u001fJ\b\u0010 \u001a\u00020!H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR>\u0010\f\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00028\u00000\u000e0\r8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"Lexpo/modules/kotlin/types/TypeConverterCollection;", "Type", "", "Lexpo/modules/kotlin/types/NullAwareTypeConverter;", "type", "Lkotlin/reflect/KType;", "isOptional", "", "<init>", "(Lkotlin/reflect/KType;Z)V", "getType", "()Lkotlin/reflect/KType;", "converters", "", "Lkotlin/Function1;", "getConverters$annotations", "()V", "getConverters", "()Ljava/util/Map;", "setConverters", "(Ljava/util/Map;)V", Constants.MessagePayloadKeys.FROM, "P0", "body", "Lkotlin/ParameterName;", "name", "p0", "convertNonOptional", "value", "context", "Lexpo/modules/kotlin/AppContext;", "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;", "getCppRequiredTypes", "Lexpo/modules/kotlin/jni/ExpectedType;", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class TypeConverterCollection<Type> extends NullAwareTypeConverter<Type> {
    private Map<KType, Function1<Object, Type>> converters;
    private final KType type;

    public static /* synthetic */ void getConverters$annotations() {
    }

    public final KType getType() {
        return this.type;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeConverterCollection(KType type, boolean z) {
        super(z);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.converters = new LinkedHashMap();
    }

    public final Map<KType, Function1<Object, Type>> getConverters() {
        return this.converters;
    }

    public final void setConverters(Map<KType, Function1<Object, Type>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.converters = map;
    }

    public final /* synthetic */ <P0> TypeConverterCollection<Type> from(Function1<? super P0, ? extends Type> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        Map<KType, Function1<Object, Type>> converters = getConverters();
        Intrinsics.reifiedOperationMarker(6, "P0");
        converters.put(null, new TypeConverterCollection$from$1(body));
        return this;
    }

    @Override // expo.modules.kotlin.types.NullAwareTypeConverter
    public Type convertNonOptional(Object value, AppContext context) {
        Intrinsics.checkNotNullParameter(value, "value");
        Map<KType, Function1<Object, Type>> map = this.converters;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<KType, Function1<Object, Type>> entry : map.entrySet()) {
            arrayList.add(TuplesKt.to(entry.getKey(), entry.getValue()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            KClassifier classifier = ((KType) ((Pair) obj).component1()).getClassifier();
            KClass kClass = classifier instanceof KClass ? (KClass) classifier : null;
            if (kClass != null && kClass.isInstance(value)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            if (value instanceof Dynamic) {
                return convertNonOptional(new ExpoDynamic((Dynamic) value), context);
            }
            throw new MissingTypeConverter(this.type);
        }
        if (arrayList3.size() > 1) {
            throw new TypeCastException("Cannot cast '" + value + "' to '" + this.type + "'. Type converters conflict");
        }
        return (Type) ((Function1) ((Pair) CollectionsKt.first((List) arrayList3)).getSecond()).invoke(value);
    }

    @Override // expo.modules.kotlin.types.TypeConverter
    /* renamed from: getCppRequiredTypes */
    public ExpectedType get$cppRequireType() {
        ExpectedType.Companion companion = ExpectedType.INSTANCE;
        Set<KType> keySet = this.converters.keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(keySet, 10));
        Iterator<T> it = keySet.iterator();
        while (it.hasNext()) {
            arrayList.add(ExpectedType.INSTANCE.fromKType((KType) it.next()));
        }
        ExpectedType[] expectedTypeArr = (ExpectedType[]) arrayList.toArray(new ExpectedType[0]);
        return companion.merge((ExpectedType[]) Arrays.copyOf(expectedTypeArr, expectedTypeArr.length));
    }
}
