package kotlin.reflect.jvm.internal.calls;

import androidx.room.Room;
import androidx.work.Operation$State;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CallerImpl implements Caller {
    public final Class instanceClass;
    public final Member member;
    public final List parameterTypes;
    public final Type returnType;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BoundConstructor extends CallerImpl implements BoundCaller {
        public final /* synthetic */ int $r8$classId;
        public final Object boundReceiver;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public BoundConstructor(java.lang.reflect.Constructor r5, java.lang.Object r6, int r7) {
            /*
                r4 = this;
                r4.$r8$classId = r7
                r0 = 0
                switch(r7) {
                    case 1: goto L1a;
                    default: goto L6;
                }
            L6:
                java.lang.Class r7 = r5.getDeclaringClass()
                r7.getClass()
                java.lang.reflect.Type[] r1 = r5.getGenericParameterTypes()
                r1.getClass()
                r4.<init>(r5, r7, r0, r1)
                r4.boundReceiver = r6
                return
            L1a:
                java.lang.Class r7 = r5.getDeclaringClass()
                r7.getClass()
                java.lang.reflect.Type[] r1 = r5.getGenericParameterTypes()
                r1.getClass()
                int r2 = r1.length
                r3 = 2
                if (r2 > r3) goto L30
                r1 = 0
                java.lang.reflect.Type[] r1 = new java.lang.reflect.Type[r1]
                goto L37
            L30:
                int r2 = r1.length
                r3 = 1
                int r2 = r2 - r3
                java.lang.Object[] r1 = kotlin.collections.ArraysKt___ArraysKt.copyOfRange(r1, r3, r2)
            L37:
                java.lang.reflect.Type[] r1 = (java.lang.reflect.Type[]) r1
                r4.<init>(r5, r7, r0, r1)
                r4.boundReceiver = r6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.BoundConstructor.<init>(java.lang.reflect.Constructor, java.lang.Object, int):void");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            int i = this.$r8$classId;
            Object obj = this.boundReceiver;
            Member member = this.member;
            switch (i) {
                case 0:
                    Operation$State.checkArguments(this, objArr);
                    Headers.Builder builder = new Headers.Builder(2);
                    builder.add(obj);
                    builder.addSpread(objArr);
                    ArrayList arrayList = builder.namesAndValues;
                    return ((java.lang.reflect.Constructor) member).newInstance(arrayList.toArray(new Object[arrayList.size()]));
                default:
                    Operation$State.checkArguments(this, objArr);
                    Headers.Builder builder2 = new Headers.Builder(3);
                    builder2.add(obj);
                    builder2.addSpread(objArr);
                    builder2.add((Object) null);
                    ArrayList arrayList2 = builder2.namesAndValues;
                    return ((java.lang.reflect.Constructor) member).newInstance(arrayList2.toArray(new Object[arrayList2.size()]));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Constructor extends CallerImpl {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Constructor(Member member, Type type, Class cls, Type[] typeArr, int i) {
            super(member, type, cls, typeArr);
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            int i = this.$r8$classId;
            Member member = this.member;
            switch (i) {
                case 0:
                    Operation$State.checkArguments(this, objArr);
                    return ((java.lang.reflect.Constructor) member).newInstance(Arrays.copyOf(objArr, objArr.length));
                default:
                    Operation$State.checkArguments(this, objArr);
                    Headers.Builder builder = new Headers.Builder(2);
                    builder.addSpread(objArr);
                    builder.add((Object) null);
                    ArrayList arrayList = builder.namesAndValues;
                    return ((java.lang.reflect.Constructor) member).newInstance(arrayList.toArray(new Object[arrayList.size()]));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class FieldGetter extends CallerImpl {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BoundInstance extends FieldGetter implements BoundCaller {
            public final Object boundReceiver;

            public BoundInstance(Field field, Object obj) {
                super(field, false);
                this.boundReceiver = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.FieldGetter, kotlin.reflect.jvm.internal.calls.Caller
            public final Object call(Object[] objArr) {
                Operation$State.checkArguments(this, objArr);
                return ((Field) this.member).get(this.boundReceiver);
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BoundJvmStaticInObject extends FieldGetter implements BoundCaller {
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Static extends FieldGetter {
            public final /* synthetic */ int $r8$classId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ Static(Field field, boolean z, int i) {
                super(field, z);
                this.$r8$classId = i;
            }

            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl
            public void checkArguments(Object[] objArr) {
                switch (this.$r8$classId) {
                    case 2:
                        Operation$State.checkArguments(this, objArr);
                        checkObjectInstance(ArraysKt___ArraysKt.firstOrNull(objArr));
                        break;
                    default:
                        super.checkArguments(objArr);
                        break;
                }
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FieldGetter(java.lang.reflect.Field r3, boolean r4) {
            /*
                r2 = this;
                java.lang.reflect.Type r0 = r3.getGenericType()
                r0.getClass()
                if (r4 == 0) goto Le
                java.lang.Class r4 = r3.getDeclaringClass()
                goto Lf
            Le:
                r4 = 0
            Lf:
                r1 = 0
                java.lang.reflect.Type[] r1 = new java.lang.reflect.Type[r1]
                r2.<init>(r3, r0, r4, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.FieldGetter.<init>(java.lang.reflect.Field, boolean):void");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] objArr) {
            checkArguments(objArr);
            return ((Field) this.member).get(this.instanceClass != null ? ArraysKt___ArraysKt.first(objArr) : null);
        }
    }

    public CallerImpl(Member member, Type type, Class cls, Type[] typeArr) {
        List list;
        this.member = member;
        this.returnType = type;
        this.instanceClass = cls;
        if (cls != null) {
            Headers.Builder builder = new Headers.Builder(2);
            ArrayList arrayList = builder.namesAndValues;
            builder.add(cls);
            builder.addSpread(typeArr);
            list = Room.listOf(arrayList.toArray(new Type[arrayList.size()]));
        } else {
            list = ArraysKt___ArraysKt.toList(typeArr);
        }
        this.parameterTypes = list;
    }

    public void checkArguments(Object[] objArr) {
        Operation$State.checkArguments(this, objArr);
    }

    public final void checkObjectInstance(Object obj) {
        if (obj == null || !this.member.getDeclaringClass().isInstance(obj)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("An object member requires the object instance passed as the first argument.");
        }
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Member getMember() {
        return this.member;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List getParameterTypes() {
        return this.parameterTypes;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.returnType;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Method extends CallerImpl {
        public final /* synthetic */ int $r8$classId = 1;
        public final boolean isVoidMethod;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BoundInstance extends Method implements BoundCaller {
            public final Object boundReceiver;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public BoundInstance(java.lang.reflect.Method method, Object obj) {
                super(method, false, 4);
                method.getClass();
                this.boundReceiver = obj;
            }

            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.Method, kotlin.reflect.jvm.internal.calls.Caller
            public final Object call(Object[] objArr) {
                Operation$State.checkArguments(this, objArr);
                return callMethod(this.boundReceiver, objArr);
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BoundJvmStaticInObject extends Method implements BoundCaller {
            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.Method, kotlin.reflect.jvm.internal.calls.Caller
            public final Object call(Object[] objArr) {
                Operation$State.checkArguments(this, objArr);
                return callMethod(null, objArr);
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class BoundStatic extends Method implements BoundCaller {
            public final Object boundReceiver;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public BoundStatic(java.lang.reflect.Method r5, java.lang.Object r6) {
                /*
                    r4 = this;
                    java.lang.reflect.Type[] r0 = r5.getGenericParameterTypes()
                    r0.getClass()
                    int r1 = r0.length
                    r2 = 0
                    r3 = 1
                    if (r1 > r3) goto Lf
                    java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r2]
                    goto L14
                Lf:
                    int r1 = r0.length
                    java.lang.Object[] r0 = kotlin.collections.ArraysKt___ArraysKt.copyOfRange(r0, r3, r1)
                L14:
                    java.lang.reflect.Type[] r0 = (java.lang.reflect.Type[]) r0
                    r4.<init>(r5, r2, r0)
                    r4.boundReceiver = r6
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.Method.BoundStatic.<init>(java.lang.reflect.Method, java.lang.Object):void");
            }

            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.Method, kotlin.reflect.jvm.internal.calls.Caller
            public final Object call(Object[] objArr) {
                Operation$State.checkArguments(this, objArr);
                Headers.Builder builder = new Headers.Builder(2);
                builder.add(this.boundReceiver);
                builder.addSpread(objArr);
                ArrayList arrayList = builder.namesAndValues;
                return callMethod(null, arrayList.toArray(new Object[arrayList.size()]));
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Static extends Method {
            public final /* synthetic */ int $r8$classId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ Static(int i, int i2, java.lang.reflect.Method method, boolean z) {
                super(method, z, i);
                this.$r8$classId = i2;
            }

            @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.Method, kotlin.reflect.jvm.internal.calls.Caller
            public final Object call(Object[] objArr) {
                switch (this.$r8$classId) {
                    case 0:
                        Operation$State.checkArguments(this, objArr);
                        return callMethod(null, objArr);
                    case 1:
                        Operation$State.checkArguments(this, objArr);
                        return callMethod(objArr[0], objArr.length <= 1 ? new Object[0] : ArraysKt___ArraysKt.copyOfRange(objArr, 1, objArr.length));
                    default:
                        Operation$State.checkArguments(this, objArr);
                        checkObjectInstance(ArraysKt___ArraysKt.firstOrNull(objArr));
                        return callMethod(null, objArr.length <= 1 ? new Object[0] : ArraysKt___ArraysKt.copyOfRange(objArr, 1, objArr.length));
                }
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Method(java.lang.reflect.Field r5, boolean r6, boolean r7) {
            /*
                r4 = this;
                r0 = 1
                r4.$r8$classId = r0
                java.lang.Class r1 = java.lang.Void.TYPE
                r1.getClass()
                if (r7 == 0) goto Lf
                java.lang.Class r7 = r5.getDeclaringClass()
                goto L10
            Lf:
                r7 = 0
            L10:
                java.lang.reflect.Type r2 = r5.getGenericType()
                r2.getClass()
                java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
                r3 = 0
                r0[r3] = r2
                r4.<init>(r5, r1, r7, r0)
                r4.isVoidMethod = r6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.Method.<init>(java.lang.reflect.Field, boolean, boolean):void");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] objArr) {
            checkArguments(objArr);
            ((Field) this.member).set(this.instanceClass != null ? ArraysKt___ArraysKt.first(objArr) : null, ArraysKt___ArraysKt.last(objArr));
            return Unit.INSTANCE;
        }

        public Object callMethod(Object obj, Object[] objArr) {
            objArr.getClass();
            return this.isVoidMethod ? Unit.INSTANCE : ((java.lang.reflect.Method) this.member).invoke(obj, Arrays.copyOf(objArr, objArr.length));
        }

        @Override // kotlin.reflect.jvm.internal.calls.CallerImpl
        public void checkArguments(Object[] objArr) {
            switch (this.$r8$classId) {
                case 1:
                    Operation$State.checkArguments(this, objArr);
                    if (this.isVoidMethod && ArraysKt___ArraysKt.last(objArr) == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("null is not allowed as a value for this property.");
                        break;
                    }
                    break;
                default:
                    super.checkArguments(objArr);
                    break;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Method(java.lang.reflect.Method r2, boolean r3, java.lang.reflect.Type[] r4) {
            /*
                r1 = this;
                r0 = 0
                r1.$r8$classId = r0
                java.lang.reflect.Type r0 = r2.getGenericReturnType()
                r0.getClass()
                if (r3 == 0) goto L11
                java.lang.Class r3 = r2.getDeclaringClass()
                goto L12
            L11:
                r3 = 0
            L12:
                r1.<init>(r2, r0, r3, r4)
                java.lang.Class r2 = java.lang.Void.TYPE
                boolean r2 = r0.equals(r2)
                r1.isVoidMethod = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.Method.<init>(java.lang.reflect.Method, boolean, java.lang.reflect.Type[]):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ Method(java.lang.reflect.Method r2, boolean r3, int r4) {
            /*
                r1 = this;
                r0 = 0
                r1.$r8$classId = r0
                r4 = r4 & 2
                if (r4 == 0) goto L11
                int r3 = r2.getModifiers()
                boolean r3 = java.lang.reflect.Modifier.isStatic(r3)
                r3 = r3 ^ 1
            L11:
                java.lang.reflect.Type[] r4 = r2.getGenericParameterTypes()
                r4.getClass()
                r1.<init>(r2, r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.CallerImpl.Method.<init>(java.lang.reflect.Method, boolean, int):void");
        }
    }
}
