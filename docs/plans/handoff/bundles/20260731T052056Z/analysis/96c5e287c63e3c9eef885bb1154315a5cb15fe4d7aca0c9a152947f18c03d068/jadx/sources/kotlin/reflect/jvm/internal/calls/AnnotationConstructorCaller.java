package kotlin.reflect.jvm.internal.calls;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationConstructorCaller implements Caller {
    public final CallMode callMode;
    public final ArrayList defaultValues;
    public final ArrayList erasedParameterTypes;
    public final Class jClass;
    public final List methods;
    public final ArrayList parameterNames;
    public final ArrayList parameterTypes;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CallMode {
        private static final /* synthetic */ CallMode[] $VALUES;
        public static final CallMode CALL_BY_NAME;
        public static final CallMode POSITIONAL_CALL;

        static {
            CallMode callMode = new CallMode("CALL_BY_NAME", 0);
            CALL_BY_NAME = callMode;
            CallMode callMode2 = new CallMode("POSITIONAL_CALL", 1);
            POSITIONAL_CALL = callMode2;
            $VALUES = new CallMode[]{callMode, callMode2};
        }

        public static CallMode valueOf(String str) {
            return (CallMode) Enum.valueOf(CallMode.class, str);
        }

        public static CallMode[] values() {
            return (CallMode[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Origin {
        private static final /* synthetic */ Origin[] $VALUES;
        public static final Origin JAVA;
        public static final Origin KOTLIN;

        static {
            Origin origin = new Origin("JAVA", 0);
            JAVA = origin;
            Origin origin2 = new Origin("KOTLIN", 1);
            KOTLIN = origin2;
            $VALUES = new Origin[]{origin, origin2};
        }

        public static Origin valueOf(String str) {
            return (Origin) Enum.valueOf(Origin.class, str);
        }

        public static Origin[] values() {
            return (Origin[]) $VALUES.clone();
        }
    }

    public AnnotationConstructorCaller(Class cls, ArrayList arrayList, CallMode callMode, Origin origin, List list) {
        cls.getClass();
        callMode.getClass();
        origin.getClass();
        this.jClass = cls;
        this.parameterNames = arrayList;
        this.callMode = callMode;
        this.methods = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Method) it.next()).getGenericReturnType());
        }
        this.parameterTypes = arrayList2;
        List list2 = this.methods;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            Class<?> returnType = ((Method) it2.next()).getReturnType();
            returnType.getClass();
            Class<?> cls2 = (Class) ReflectClassUtilKt.PRIMITIVE_TO_WRAPPER.get(returnType);
            if (cls2 != null) {
                returnType = cls2;
            }
            arrayList3.add(returnType);
        }
        this.erasedParameterTypes = arrayList3;
        List list3 = this.methods;
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((Method) it3.next()).getDefaultValue());
        }
        this.defaultValues = arrayList4;
        if (this.callMode == CallMode.POSITIONAL_CALL && origin == Origin.JAVA && !CollectionsKt.minus(this.parameterNames, "value").isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0075, code lost:
    
        if (r11.isInstance(r8) != false) goto L30;
     */
    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call(java.lang.Object[] r19) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller.call(java.lang.Object[]):java.lang.Object");
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Member getMember() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List getParameterTypes() {
        return this.parameterTypes;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.jClass;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ AnnotationConstructorCaller(java.lang.Class r8, java.util.ArrayList r9, kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller.CallMode r10, kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller.Origin r11) {
        /*
            r7 = this;
            java.util.ArrayList r5 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r9, r0)
            r5.<init>(r0)
            java.util.Iterator r6 = r9.iterator()
        Lf:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L24
            java.lang.Object r0 = r6.next()
            java.lang.String r0 = (java.lang.String) r0
            r1 = 0
            java.lang.reflect.Method r0 = r8.getDeclaredMethod(r0, r1)
            r5.add(r0)
            goto Lf
        L24:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller.<init>(java.lang.Class, java.util.ArrayList, kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller$CallMode, kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller$Origin):void");
    }
}
