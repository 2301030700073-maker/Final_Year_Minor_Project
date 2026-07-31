package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.appcompat.view.ActionMode;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.util.ModuleVisibilityHelper$EMPTY;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DescriptorVisibilities {
    public static final SourceFile$1 ALWAYS_SUITABLE_RECEIVER;
    public static final AnonymousClass1 DEFAULT_VISIBILITY;
    public static final SourceFile$1 FALSE_IF_PROTECTED;
    public static final AnonymousClass1 INHERITED;
    public static final AnonymousClass1 INTERNAL;
    public static final AnonymousClass1 INVISIBLE_FAKE;
    public static final SourceFile$1 IRRELEVANT_RECEIVER;
    public static final AnonymousClass1 LOCAL;
    public static final ModuleVisibilityHelper$EMPTY MODULE_VISIBILITY_HELPER;
    public static final AnonymousClass1 PRIVATE;
    public static final AnonymousClass1 PRIVATE_TO_THIS;
    public static final AnonymousClass1 PROTECTED;
    public static final AnonymousClass1 PUBLIC;
    public static final AnonymousClass1 UNKNOWN;
    public static final HashMap visibilitiesMapping;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;
        public final ActionMode delegate;

        public AnonymousClass1(ActionMode actionMode, int i) {
            this.$r8$classId = i;
            actionMode.getClass();
            this.delegate = actionMode;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:128:0x0226 A[ADDED_TO_REGION, LOOP:1: B:128:0x0226->B:132:0x0257, LOOP_START, PHI: r12
          0x0226: PHI (r12v1 kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor) = 
          (r12v0 kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor)
          (r12v2 kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor)
         binds: [B:127:0x0223, B:132:0x0257] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:148:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility] */
        /* JADX WARN: Type inference failed for: r11v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        /* JADX WARN: Type inference failed for: r11v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        /* JADX WARN: Type inference failed for: r11v3, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean isVisible(kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue r10, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility r11, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r12) {
            /*
                Method dump skipped, instructions count: 652
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.AnonymousClass1.isVisible(kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor):boolean");
        }

        public final String toString() {
            return this.delegate.getInternalDisplayName();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r8) {
        /*
            r0 = 16
            if (r8 == r0) goto L7
            java.lang.String r1 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto L9
        L7:
            java.lang.String r1 = "@NotNull method %s.%s must not return null"
        L9:
            r2 = 3
            r3 = 2
            if (r8 == r0) goto Lf
            r4 = r2
            goto L10
        Lf:
            r4 = r3
        L10:
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r5 = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"
            r6 = 1
            r7 = 0
            if (r8 == r6) goto L3c
            if (r8 == r2) goto L3c
            r2 = 5
            if (r8 == r2) goto L3c
            r2 = 7
            if (r8 == r2) goto L3c
            switch(r8) {
                case 9: goto L3c;
                case 10: goto L37;
                case 11: goto L32;
                case 12: goto L37;
                case 13: goto L32;
                case 14: goto L2c;
                case 15: goto L2c;
                case 16: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.String r2 = "what"
            r4[r7] = r2
            goto L40
        L29:
            r4[r7] = r5
            goto L40
        L2c:
            java.lang.String r2 = "visibility"
            r4[r7] = r2
            goto L40
        L32:
            java.lang.String r2 = "second"
            r4[r7] = r2
            goto L40
        L37:
            java.lang.String r2 = "first"
            r4[r7] = r2
            goto L40
        L3c:
            java.lang.String r2 = "from"
            r4[r7] = r2
        L40:
            java.lang.String r2 = "toDescriptorVisibility"
            if (r8 == r0) goto L47
            r4[r6] = r5
            goto L49
        L47:
            r4[r6] = r2
        L49:
            switch(r8) {
                case 2: goto L72;
                case 3: goto L72;
                case 4: goto L6d;
                case 5: goto L6d;
                case 6: goto L68;
                case 7: goto L68;
                case 8: goto L63;
                case 9: goto L63;
                case 10: goto L5e;
                case 11: goto L5e;
                case 12: goto L59;
                case 13: goto L59;
                case 14: goto L54;
                case 15: goto L51;
                case 16: goto L76;
                default: goto L4c;
            }
        L4c:
            java.lang.String r2 = "isVisible"
            r4[r3] = r2
            goto L76
        L51:
            r4[r3] = r2
            goto L76
        L54:
            java.lang.String r2 = "isPrivate"
            r4[r3] = r2
            goto L76
        L59:
            java.lang.String r2 = "compare"
            r4[r3] = r2
            goto L76
        L5e:
            java.lang.String r2 = "compareLocal"
            r4[r3] = r2
            goto L76
        L63:
            java.lang.String r2 = "findInvisibleMember"
            r4[r3] = r2
            goto L76
        L68:
            java.lang.String r2 = "inSameFile"
            r4[r3] = r2
            goto L76
        L6d:
            java.lang.String r2 = "isVisibleWithAnyReceiver"
            r4[r3] = r2
            goto L76
        L72:
            java.lang.String r2 = "isVisibleIgnoringReceiver"
            r4[r3] = r2
        L76:
            java.lang.String r1 = java.lang.String.format(r1, r4)
            if (r8 == r0) goto L82
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r8.<init>(r1)
            goto L87
        L82:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>(r1)
        L87:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.$$$reportNull$$$0(int):void");
    }

    static {
        Visibilities.Private r1 = Visibilities.Private.INSTANCE;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(r1, 0);
        PRIVATE = anonymousClass1;
        Visibilities.PrivateToThis privateToThis = Visibilities.PrivateToThis.INSTANCE;
        AnonymousClass1 anonymousClass12 = new AnonymousClass1(privateToThis, 1);
        PRIVATE_TO_THIS = anonymousClass12;
        Visibilities.Protected r7 = Visibilities.Protected.INSTANCE;
        AnonymousClass1 anonymousClass13 = new AnonymousClass1(r7, 2);
        PROTECTED = anonymousClass13;
        Visibilities.Internal internal = Visibilities.Internal.INSTANCE;
        AnonymousClass1 anonymousClass14 = new AnonymousClass1(internal, 3);
        INTERNAL = anonymousClass14;
        Visibilities.Public r13 = Visibilities.Public.INSTANCE;
        AnonymousClass1 anonymousClass15 = new AnonymousClass1(r13, 4);
        PUBLIC = anonymousClass15;
        Visibilities.Local local = Visibilities.Local.INSTANCE;
        AnonymousClass1 anonymousClass16 = new AnonymousClass1(local, 5);
        LOCAL = anonymousClass16;
        Visibilities.Inherited inherited = Visibilities.Inherited.INSTANCE;
        AnonymousClass1 anonymousClass17 = new AnonymousClass1(inherited, 6);
        INHERITED = anonymousClass17;
        Visibilities.InvisibleFake invisibleFake = Visibilities.InvisibleFake.INSTANCE;
        AnonymousClass1 anonymousClass18 = new AnonymousClass1(invisibleFake, 7);
        INVISIBLE_FAKE = anonymousClass18;
        Visibilities.Unknown unknown = Visibilities.Unknown.INSTANCE;
        AnonymousClass1 anonymousClass19 = new AnonymousClass1(unknown, 8);
        UNKNOWN = anonymousClass19;
        DesugarCollections.unmodifiableSet(ArraysKt___ArraysKt.toSet(new AnonymousClass1[]{anonymousClass1, anonymousClass12, anonymousClass14, anonymousClass16}));
        HashMap hashMap = new HashMap(6);
        hashMap.put(anonymousClass12, 0);
        hashMap.put(anonymousClass1, 0);
        hashMap.put(anonymousClass14, 1);
        hashMap.put(anonymousClass13, 1);
        hashMap.put(anonymousClass15, 2);
        DesugarCollections.unmodifiableMap(hashMap);
        DEFAULT_VISIBILITY = anonymousClass15;
        IRRELEVANT_RECEIVER = new SourceFile$1(2);
        ALWAYS_SUITABLE_RECEIVER = new SourceFile$1(3);
        FALSE_IF_PROTECTED = new SourceFile$1(4);
        try {
            Iterator it = Arrays.asList(new ModuleVisibilityHelper$EMPTY[0]).iterator();
            MODULE_VISIBILITY_HELPER = it.hasNext() ? (ModuleVisibilityHelper$EMPTY) it.next() : ModuleVisibilityHelper$EMPTY.INSTANCE;
            HashMap hashMap2 = new HashMap();
            visibilitiesMapping = hashMap2;
            hashMap2.put(r1, anonymousClass1);
            hashMap2.put(privateToThis, anonymousClass12);
            hashMap2.put(r7, anonymousClass13);
            hashMap2.put(internal, anonymousClass14);
            hashMap2.put(r13, anonymousClass15);
            hashMap2.put(local, anonymousClass16);
            hashMap2.put(inherited, anonymousClass17);
            hashMap2.put(invisibleFake, anonymousClass18);
            hashMap2.put(unknown, anonymousClass19);
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static Integer compare(AnonymousClass1 anonymousClass1, AnonymousClass1 anonymousClass12) {
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        ActionMode actionMode = anonymousClass1.delegate;
        if (anonymousClass12 == null) {
            $$$reportNull$$$0(13);
            throw null;
        }
        ActionMode actionMode2 = anonymousClass12.delegate;
        Integer compareTo = actionMode.compareTo(actionMode2);
        if (compareTo != null) {
            return compareTo;
        }
        Integer compareTo2 = actionMode2.compareTo(actionMode);
        if (compareTo2 != null) {
            return Integer.valueOf(-compareTo2.intValue());
        }
        return null;
    }

    public static DeclarationDescriptorWithVisibility findInvisibleMember(ReceiverValue receiverValue, CallableMemberDescriptor callableMemberDescriptor, DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptorWithVisibility findInvisibleMember;
        if (callableMemberDescriptor == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        for (DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility = (DeclarationDescriptorWithVisibility) callableMemberDescriptor.getOriginal(); declarationDescriptorWithVisibility != null && declarationDescriptorWithVisibility.getVisibility() != LOCAL; declarationDescriptorWithVisibility = (DeclarationDescriptorWithVisibility) DescriptorUtils.getParentOfType(declarationDescriptorWithVisibility, DeclarationDescriptorWithVisibility.class, true)) {
            if (!declarationDescriptorWithVisibility.getVisibility().isVisible(receiverValue, declarationDescriptorWithVisibility, declarationDescriptor)) {
                return declarationDescriptorWithVisibility;
            }
        }
        if (!(callableMemberDescriptor instanceof TypeAliasConstructorDescriptorImpl) || (findInvisibleMember = findInvisibleMember(receiverValue, ((TypeAliasConstructorDescriptorImpl) callableMemberDescriptor).underlyingConstructorDescriptor, declarationDescriptor)) == null) {
            return null;
        }
        return findInvisibleMember;
    }

    public static boolean inSameFile(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
        if (declarationDescriptor2 != null) {
            SourceFile$1 containingSourceFile = DescriptorUtils.getContainingSourceFile(declarationDescriptor2);
            return containingSourceFile != SourceFile$1.NO_SOURCE_FILE && containingSourceFile == DescriptorUtils.getContainingSourceFile(declarationDescriptor);
        }
        $$$reportNull$$$0(7);
        throw null;
    }

    public static boolean isPrivate(AnonymousClass1 anonymousClass1) {
        if (anonymousClass1 != null) {
            return anonymousClass1 == PRIVATE || anonymousClass1 == PRIVATE_TO_THIS;
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    public static AnonymousClass1 toDescriptorVisibility(ActionMode actionMode) {
        if (actionMode == null) {
            $$$reportNull$$$0(15);
            throw null;
        }
        AnonymousClass1 anonymousClass1 = (AnonymousClass1) visibilitiesMapping.get(actionMode);
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        Gson$$ExternalSyntheticBUOutline0.m("Inapplicable visibility: ", actionMode);
        return null;
    }
}
