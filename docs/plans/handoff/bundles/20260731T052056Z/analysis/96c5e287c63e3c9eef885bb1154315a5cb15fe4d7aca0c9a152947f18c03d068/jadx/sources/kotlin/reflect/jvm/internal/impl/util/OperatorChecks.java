package kotlin.reflect.jvm.internal.impl.util;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.MemberKindCheck;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OperatorChecks {
    public static final List checks;

    static {
        Name name = OperatorNameConventions.GET;
        MemberKindCheck.Member member = MemberKindCheck.Member.INSTANCE$1;
        final int i = 1;
        final int i2 = 2;
        Checks checks2 = new Checks(name, new Check[]{member, new MemberKindCheck(i) { // from class: kotlin.reflect.jvm.internal.impl.util.ValueParameterCountCheck$AtLeast
            public final int n;

            /* JADX WARN: Illegal instructions before constructor call */
            {
                /*
                    r3 = this;
                    java.lang.String r0 = "must have at least "
                    java.lang.String r1 = " value parameter"
                    java.lang.StringBuilder r0 = androidx.compose.animation.core.Animation.CC.m20m(r4, r0, r1)
                    r1 = 1
                    if (r4 <= r1) goto Le
                    java.lang.String r2 = "s"
                    goto L10
                Le:
                    java.lang.String r2 = ""
                L10:
                    r0.append(r2)
                    java.lang.String r0 = r0.toString()
                    r3.<init>(r1, r0)
                    r3.n = r4
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.ValueParameterCountCheck$AtLeast.<init>(int):void");
            }

            @Override // kotlin.reflect.jvm.internal.impl.util.Check
            public final boolean check(JavaMethodDescriptor javaMethodDescriptor) {
                return javaMethodDescriptor.getValueParameters().size() >= this.n;
            }
        }});
        Checks checks3 = new Checks(OperatorNameConventions.SET, new Check[]{member, new MemberKindCheck
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0028: CONSTRUCTOR (r1v1 'checks3' kotlin.reflect.jvm.internal.impl.util.Checks) = 
              (wrap:kotlin.reflect.jvm.internal.impl.name.Name:0x0019: SGET  A[WRAPPED] (LINE:26) kotlin.reflect.jvm.internal.impl.util.OperatorNameConventions.SET kotlin.reflect.jvm.internal.impl.name.Name)
              (wrap:kotlin.reflect.jvm.internal.impl.util.Check[]:0x0020: FILLED_NEW_ARRAY 
              (r2v0 'member' kotlin.reflect.jvm.internal.impl.util.MemberKindCheck$Member)
              (wrap:kotlin.reflect.jvm.internal.impl.util.MemberKindCheck:0x001d: CONSTRUCTOR (r5v0 'i2' int A[DONT_INLINE]) A[MD:(int):void (m), WRAPPED] (LINE:30) call: kotlin.reflect.jvm.internal.impl.util.ValueParameterCountCheck$AtLeast.<init>(int):void type: CONSTRUCTOR)
             A[WRAPPED] (LINE:33) elemType: kotlin.reflect.jvm.internal.impl.util.Check)
              (wrap:kotlin.reflect.jvm.internal.impl.util.Checks$2:0x0026: SGET  A[WRAPPED] (LINE:39) kotlin.reflect.jvm.internal.impl.util.Checks.2.INSTANCE$3 kotlin.reflect.jvm.internal.impl.util.Checks$2)
             A[DECLARE_VAR, MD:(kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.util.Check[], kotlin.jvm.functions.Function1):void (m)] (LINE:41) call: kotlin.reflect.jvm.internal.impl.util.Checks.<init>(kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.util.Check[], kotlin.jvm.functions.Function1):void type: CONSTRUCTOR in method: kotlin.reflect.jvm.internal.impl.util.OperatorChecks.<clinit>():void, file: classes.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.setCodeVar(jadx.core.dex.instructions.args.CodeVar)" because the return value of "jadx.core.dex.instructions.args.RegisterArg.getSVar()" is null
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:836)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.filledNewArray(InsnGen.java:714)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:449)
            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:782)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
            	... 15 more
            */
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.OperatorChecks.<clinit>():void");
    }
}
