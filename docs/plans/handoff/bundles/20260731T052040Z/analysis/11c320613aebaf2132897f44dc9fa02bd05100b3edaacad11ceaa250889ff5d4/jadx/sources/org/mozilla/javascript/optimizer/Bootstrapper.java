package org.mozilla.javascript.optimizer;

import java.lang.invoke.CallSite;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.Arrays;
import java.util.regex.Pattern;
import jdk.dynalink.CallSiteDescriptor;
import jdk.dynalink.DynamicLinker;
import jdk.dynalink.DynamicLinkerFactory;
import jdk.dynalink.Operation;
import jdk.dynalink.StandardNamespace;
import jdk.dynalink.StandardOperation;
import jdk.dynalink.linker.GuardingDynamicLinker;
import jdk.dynalink.linker.support.CompositeTypeBasedGuardingDynamicLinker;
import jdk.dynalink.support.ChainedCallSite;
import org.mozilla.classfile.ClassFileWriter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Bootstrapper {
    private static final DynamicLinker linker;
    private static final Pattern SEPARATOR = Pattern.compile(":");
    public static final ClassFileWriter.MHandle BOOTSTRAP_HANDLE = new ClassFileWriter.MHandle();

    static {
        DynamicLinkerFactory dynamicLinkerFactory = new DynamicLinkerFactory();
        dynamicLinkerFactory.setPrioritizedLinkers(new GuardingDynamicLinker[]{new CompositeTypeBasedGuardingDynamicLinker(Arrays.asList(new ConstAwareLinker(), new BooleanLinker(), new IntegerLinker(), new DoubleLinker(), new StringLinker(), new ConsStringLinker(), new NativeArrayLinker(), new BaseFunctionLinker())), new DefaultLinker()});
        linker = dynamicLinkerFactory.createLinker();
    }

    public static CallSite bootstrap(MethodHandles.Lookup lookup, String str, MethodType methodType) {
        return linker.link(new ChainedCallSite(new CallSiteDescriptor(lookup, parseOperation(str), methodType)));
    }

    private static String getNameSegment(String[] strArr, String str, int i) {
        return i >= strArr.length ? "" : strArr[i].intern();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Operation parseOperation(String str) {
        char c;
        String[] split = SEPARATOR.split(str, -1);
        String nameSegment = getNameSegment(split, str, 0);
        String nameSegment2 = getNameSegment(split, str, 1);
        if ("PROP".equals(nameSegment)) {
            nameSegment2.getClass();
            switch (nameSegment2) {
                case "SETINDEX":
                    return RhinoOperation.SETINDEX.withNamespace(StandardNamespace.PROPERTY);
                case "SETSUPER":
                    return RhinoOperation.SETSUPER.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "GETELEMENT":
                    return RhinoOperation.GETELEMENT.withNamespace(StandardNamespace.PROPERTY);
                case "GETINDEX":
                    return RhinoOperation.GETINDEX.withNamespace(StandardNamespace.PROPERTY);
                case "GETSUPER":
                    return RhinoOperation.GETSUPER.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "SETELEMENTSUPER":
                    return RhinoOperation.SETELEMENTSUPER.withNamespace(StandardNamespace.PROPERTY);
                case "GETWITHTHIS":
                    return RhinoOperation.GETWITHTHIS.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "GET":
                    return StandardOperation.GET.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "SET":
                    return StandardOperation.SET.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "GETNOWARN":
                    return RhinoOperation.GETNOWARN.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "SETELEMENT":
                    return RhinoOperation.SETELEMENT.withNamespace(StandardNamespace.PROPERTY);
                case "GETWITHTHISOPTIONAL":
                    return RhinoOperation.GETWITHTHISOPTIONAL.withNamespace(StandardNamespace.PROPERTY).named(getNameSegment(split, str, 2));
                case "GETELEMENTSUPER":
                    return RhinoOperation.GETELEMENTSUPER.withNamespace(StandardNamespace.PROPERTY);
            }
        }
        if ("NAME".equals(nameSegment)) {
            nameSegment2.getClass();
            switch (nameSegment2) {
                case "SETCONST":
                    return RhinoOperation.SETCONST.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "GETWITHTHIS":
                    return RhinoOperation.GETWITHTHIS.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "SETSTRICT":
                    return RhinoOperation.SETSTRICT.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "GET":
                    return StandardOperation.GET.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "SET":
                    return StandardOperation.SET.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "BIND":
                    return RhinoOperation.BIND.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
                case "GETWITHTHISOPTIONAL":
                    return RhinoOperation.GETWITHTHISOPTIONAL.withNamespace(RhinoNamespace.NAME).named(getNameSegment(split, str, 2));
            }
        }
        if ("MATH".equals(nameSegment)) {
            nameSegment2.getClass();
            switch (nameSegment2.hashCode()) {
                case -476562131:
                    if (nameSegment2.equals("TOBOOLEAN")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -427576109:
                    if (nameSegment2.equals("TOINT32")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -220540540:
                    if (nameSegment2.equals("TONUMBER")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -31172236:
                    if (nameSegment2.equals("TOUINT32")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 2220:
                    if (nameSegment2.equals("EQ")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 64641:
                    if (nameSegment2.equals("ADD")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1040066976:
                    if (nameSegment2.equals("SHALLOWEQ")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1373877347:
                    if (nameSegment2.equals("COMPAREGE")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case 1373877362:
                    if (nameSegment2.equals("COMPAREGT")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1373877502:
                    if (nameSegment2.equals("COMPARELE")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1373877517:
                    if (nameSegment2.equals("COMPARELT")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1753279506:
                    if (nameSegment2.equals("TONUMERIC")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    return RhinoOperation.TOBOOLEAN.withNamespace(RhinoNamespace.MATH);
                case 1:
                    return RhinoOperation.TOINT32.withNamespace(RhinoNamespace.MATH);
                case 2:
                    return RhinoOperation.TONUMBER.withNamespace(RhinoNamespace.MATH);
                case 3:
                    return RhinoOperation.TOUINT32.withNamespace(RhinoNamespace.MATH);
                case 4:
                    return RhinoOperation.EQ.withNamespace(RhinoNamespace.MATH);
                case 5:
                    return RhinoOperation.ADD.withNamespace(RhinoNamespace.MATH);
                case 6:
                    return RhinoOperation.SHALLOWEQ.withNamespace(RhinoNamespace.MATH);
                case 7:
                    return RhinoOperation.COMPARE_GE.withNamespace(RhinoNamespace.MATH);
                case '\b':
                    return RhinoOperation.COMPARE_GT.withNamespace(RhinoNamespace.MATH);
                case '\t':
                    return RhinoOperation.COMPARE_LE.withNamespace(RhinoNamespace.MATH);
                case '\n':
                    return RhinoOperation.COMPARE_LT.withNamespace(RhinoNamespace.MATH);
                case 11:
                    return RhinoOperation.TONUMERIC.withNamespace(RhinoNamespace.MATH);
            }
        }
        throw new NoSuchMethodException(str);
    }
}
