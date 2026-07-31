package org.mozilla.javascript.optimizer;

import j$.util.Objects;
import jdk.dynalink.linker.TypeBasedGuardingDynamicLinker;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptRuntime;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class IntegerLinker implements TypeBasedGuardingDynamicLinker {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private static Object add(Object obj, Object obj2, Context context) {
        return ScriptRuntime.add((Integer) obj, (Integer) obj2);
    }

    private static Object addDouble(Object obj, Object obj2, Context context) {
        return Double.valueOf(((Double) obj2).doubleValue() + ((Integer) obj).doubleValue());
    }

    private static boolean compareGE(Object obj, Object obj2) {
        return ((Integer) obj).intValue() >= ((Integer) obj2).intValue();
    }

    private static boolean compareGEDouble(Object obj, Object obj2) {
        return ((Integer) obj).doubleValue() >= ((Double) obj2).doubleValue();
    }

    private static boolean compareGT(Object obj, Object obj2) {
        return ((Integer) obj).intValue() > ((Integer) obj2).intValue();
    }

    private static boolean compareGTDouble(Object obj, Object obj2) {
        return ((Integer) obj).doubleValue() > ((Double) obj2).doubleValue();
    }

    private static boolean compareLE(Object obj, Object obj2) {
        return ((Integer) obj).intValue() <= ((Integer) obj2).intValue();
    }

    private static boolean compareLEDouble(Object obj, Object obj2) {
        return ((Integer) obj).doubleValue() <= ((Double) obj2).doubleValue();
    }

    private static boolean compareLT(Object obj, Object obj2) {
        return ((Integer) obj).intValue() < ((Integer) obj2).intValue();
    }

    private static boolean compareLTDouble(Object obj, Object obj2) {
        return ((Integer) obj).doubleValue() < ((Double) obj2).doubleValue();
    }

    private static boolean eq(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private static boolean eqDouble(Object obj, Object obj2) {
        return ((Integer) obj).doubleValue() == ((Double) obj2).doubleValue();
    }

    private static boolean testAdd(Object obj, Object obj2, Context context) {
        return (obj instanceof Integer) && (obj2 instanceof Integer);
    }

    private static boolean testAddDouble(Object obj, Object obj2, Context context) {
        return (obj instanceof Integer) && (obj2 instanceof Double);
    }

    private static boolean testTwo(Object obj, Object obj2) {
        return (obj instanceof Integer) && (obj2 instanceof Integer);
    }

    private static boolean testTwoDouble(Object obj, Object obj2) {
        return (obj instanceof Integer) && (obj2 instanceof Double);
    }

    private static boolean toBoolean(Object obj) {
        return ((Integer) obj).intValue() != 0;
    }

    private static int toInt32(Object obj) {
        return ((Integer) obj).intValue();
    }

    private static double toNumber(Object obj) {
        return ((Integer) obj).doubleValue();
    }

    private static Number toNumeric(Object obj) {
        return (Number) obj;
    }

    private static long toUint32(Object obj) {
        return ((Integer) obj).intValue() & 4294967295L;
    }

    public boolean canLinkType(Class<?> cls) {
        return Integer.class.equals(cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0222 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public jdk.dynalink.linker.GuardedInvocation getGuardedInvocation(jdk.dynalink.linker.LinkRequest r10, jdk.dynalink.linker.LinkerServices r11) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.IntegerLinker.getGuardedInvocation(jdk.dynalink.linker.LinkRequest, jdk.dynalink.linker.LinkerServices):jdk.dynalink.linker.GuardedInvocation");
    }
}
