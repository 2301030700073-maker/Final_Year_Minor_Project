package org.mozilla.javascript;

import j$.util.function.Function$CC;
import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.function.UnaryOperator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class JavaToJSONConverters {
    public static final UnaryOperator<Object> BEAN;
    public static final UnaryOperator<Object> EMPTY_OBJECT;
    public static final UnaryOperator<Object> STRING;
    public static final UnaryOperator<Object> THROW_TYPE_ERROR;
    public static final UnaryOperator<Object> UNDEFINED;

    static {
        final int i = 0;
        STRING = new UnaryOperator() { // from class: org.mozilla.javascript.JavaToJSONConverters$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                int i2 = i;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                Object lambda$static$1;
                Object lambda$static$2;
                Object lambda$static$3;
                Object lambda$static$4;
                switch (i) {
                    case 0:
                        obj2 = obj.toString();
                        return obj2;
                    case 1:
                        lambda$static$1 = JavaToJSONConverters.lambda$static$1(obj);
                        return lambda$static$1;
                    case 2:
                        lambda$static$2 = JavaToJSONConverters.lambda$static$2(obj);
                        return lambda$static$2;
                    case 3:
                        lambda$static$3 = JavaToJSONConverters.lambda$static$3(obj);
                        return lambda$static$3;
                    default:
                        lambda$static$4 = JavaToJSONConverters.lambda$static$4(obj);
                        return lambda$static$4;
                }
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                int i2 = i;
                return Function$CC.$default$compose(this, function);
            }
        };
        final int i2 = 1;
        UNDEFINED = new UnaryOperator() { // from class: org.mozilla.javascript.JavaToJSONConverters$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                int i22 = i2;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                Object lambda$static$1;
                Object lambda$static$2;
                Object lambda$static$3;
                Object lambda$static$4;
                switch (i2) {
                    case 0:
                        obj2 = obj.toString();
                        return obj2;
                    case 1:
                        lambda$static$1 = JavaToJSONConverters.lambda$static$1(obj);
                        return lambda$static$1;
                    case 2:
                        lambda$static$2 = JavaToJSONConverters.lambda$static$2(obj);
                        return lambda$static$2;
                    case 3:
                        lambda$static$3 = JavaToJSONConverters.lambda$static$3(obj);
                        return lambda$static$3;
                    default:
                        lambda$static$4 = JavaToJSONConverters.lambda$static$4(obj);
                        return lambda$static$4;
                }
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                int i22 = i2;
                return Function$CC.$default$compose(this, function);
            }
        };
        final int i3 = 2;
        EMPTY_OBJECT = new UnaryOperator() { // from class: org.mozilla.javascript.JavaToJSONConverters$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                int i22 = i3;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                Object lambda$static$1;
                Object lambda$static$2;
                Object lambda$static$3;
                Object lambda$static$4;
                switch (i3) {
                    case 0:
                        obj2 = obj.toString();
                        return obj2;
                    case 1:
                        lambda$static$1 = JavaToJSONConverters.lambda$static$1(obj);
                        return lambda$static$1;
                    case 2:
                        lambda$static$2 = JavaToJSONConverters.lambda$static$2(obj);
                        return lambda$static$2;
                    case 3:
                        lambda$static$3 = JavaToJSONConverters.lambda$static$3(obj);
                        return lambda$static$3;
                    default:
                        lambda$static$4 = JavaToJSONConverters.lambda$static$4(obj);
                        return lambda$static$4;
                }
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                int i22 = i3;
                return Function$CC.$default$compose(this, function);
            }
        };
        final int i4 = 3;
        THROW_TYPE_ERROR = new UnaryOperator() { // from class: org.mozilla.javascript.JavaToJSONConverters$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                int i22 = i4;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                Object lambda$static$1;
                Object lambda$static$2;
                Object lambda$static$3;
                Object lambda$static$4;
                switch (i4) {
                    case 0:
                        obj2 = obj.toString();
                        return obj2;
                    case 1:
                        lambda$static$1 = JavaToJSONConverters.lambda$static$1(obj);
                        return lambda$static$1;
                    case 2:
                        lambda$static$2 = JavaToJSONConverters.lambda$static$2(obj);
                        return lambda$static$2;
                    case 3:
                        lambda$static$3 = JavaToJSONConverters.lambda$static$3(obj);
                        return lambda$static$3;
                    default:
                        lambda$static$4 = JavaToJSONConverters.lambda$static$4(obj);
                        return lambda$static$4;
                }
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                int i22 = i4;
                return Function$CC.$default$compose(this, function);
            }
        };
        final int i5 = 4;
        BEAN = new UnaryOperator() { // from class: org.mozilla.javascript.JavaToJSONConverters$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                int i22 = i5;
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object obj2;
                Object lambda$static$1;
                Object lambda$static$2;
                Object lambda$static$3;
                Object lambda$static$4;
                switch (i5) {
                    case 0:
                        obj2 = obj.toString();
                        return obj2;
                    case 1:
                        lambda$static$1 = JavaToJSONConverters.lambda$static$1(obj);
                        return lambda$static$1;
                    case 2:
                        lambda$static$2 = JavaToJSONConverters.lambda$static$2(obj);
                        return lambda$static$2;
                    case 3:
                        lambda$static$3 = JavaToJSONConverters.lambda$static$3(obj);
                        return lambda$static$3;
                    default:
                        lambda$static$4 = JavaToJSONConverters.lambda$static$4(obj);
                        return lambda$static$4;
                }
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                int i22 = i5;
                return Function$CC.$default$compose(this, function);
            }
        };
    }

    private JavaToJSONConverters() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$1(Object obj) {
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$2(Object obj) {
        return Collections.EMPTY_MAP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$3(Object obj) {
        throw ScriptRuntime.typeErrorById("msg.json.cant.serialize", obj.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$4(Object obj) {
        try {
            BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass(), Object.class);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (PropertyDescriptor propertyDescriptor : beanInfo.getPropertyDescriptors()) {
                if (propertyDescriptor.getReadMethod() != null) {
                    try {
                        linkedHashMap.put(propertyDescriptor.getName(), propertyDescriptor.getReadMethod().invoke(obj, null));
                    } catch (Exception unused) {
                    }
                }
            }
            if (linkedHashMap.size() == 0) {
                return null;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("beanClass", beanInfo.getBeanDescriptor().getBeanClass().getName());
            linkedHashMap2.put("properties", linkedHashMap);
            return linkedHashMap2;
        } catch (IntrospectionException unused2) {
            return null;
        }
    }
}
