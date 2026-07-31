package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import androidx.compose.animation.core.Animation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorKindFilter {
    public static final DescriptorKindFilter ALL;
    public static final int ALL_KINDS_MASK;
    public static final DescriptorKindFilter CALLABLES;
    public static final DescriptorKindFilter CLASSIFIERS;
    public static final int CLASSIFIERS_MASK;
    public static final MemberScope.Companion Companion = new MemberScope.Companion();
    public static final ArrayList DEBUG_MASK_BIT_NAMES;
    public static final ArrayList DEBUG_PREDEFINED_FILTERS_MASK_NAMES;
    public static final DescriptorKindFilter FUNCTIONS;
    public static final int FUNCTIONS_MASK;
    public static final int NON_SINGLETON_CLASSIFIERS_MASK;
    public static final int PACKAGES_MASK;
    public static final int SINGLETON_CLASSIFIERS_MASK;
    public static final int TYPE_ALIASES_MASK;
    public static final DescriptorKindFilter VARIABLES;
    public static final int VARIABLES_MASK;
    public static int nextMaskValue = 1;
    public final List excludes;
    public final int kindMask;

    static {
        DescriptorKindFilter$Companion$MaskToName descriptorKindFilter$Companion$MaskToName;
        int nextMask = MemberScope.Companion.nextMask();
        NON_SINGLETON_CLASSIFIERS_MASK = nextMask;
        int nextMask2 = MemberScope.Companion.nextMask();
        SINGLETON_CLASSIFIERS_MASK = nextMask2;
        int nextMask3 = MemberScope.Companion.nextMask();
        TYPE_ALIASES_MASK = nextMask3;
        int nextMask4 = MemberScope.Companion.nextMask();
        PACKAGES_MASK = nextMask4;
        int nextMask5 = MemberScope.Companion.nextMask();
        FUNCTIONS_MASK = nextMask5;
        int nextMask6 = MemberScope.Companion.nextMask();
        VARIABLES_MASK = nextMask6;
        int nextMask7 = MemberScope.Companion.nextMask() - 1;
        ALL_KINDS_MASK = nextMask7;
        int i = nextMask | nextMask2 | nextMask3;
        CLASSIFIERS_MASK = i;
        ALL = new DescriptorKindFilter(nextMask7);
        CALLABLES = new DescriptorKindFilter(nextMask5 | nextMask6);
        new DescriptorKindFilter(nextMask);
        new DescriptorKindFilter(nextMask2);
        new DescriptorKindFilter(nextMask3);
        CLASSIFIERS = new DescriptorKindFilter(i);
        new DescriptorKindFilter(nextMask4);
        FUNCTIONS = new DescriptorKindFilter(nextMask5);
        VARIABLES = new DescriptorKindFilter(nextMask6);
        new DescriptorKindFilter(nextMask2 | nextMask5 | nextMask6);
        Field[] fields = DescriptorKindFilter.class.getFields();
        fields.getClass();
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            DescriptorKindFilter$Companion$MaskToName descriptorKindFilter$Companion$MaskToName2 = null;
            if (!it.hasNext()) {
                break;
            }
            Field field2 = (Field) it.next();
            Object obj = field2.get(null);
            DescriptorKindFilter descriptorKindFilter = obj instanceof DescriptorKindFilter ? (DescriptorKindFilter) obj : null;
            if (descriptorKindFilter != null) {
                int i2 = descriptorKindFilter.kindMask;
                String name = field2.getName();
                name.getClass();
                descriptorKindFilter$Companion$MaskToName2 = new DescriptorKindFilter$Companion$MaskToName(i2, name);
            }
            if (descriptorKindFilter$Companion$MaskToName2 != null) {
                arrayList2.add(descriptorKindFilter$Companion$MaskToName2);
            }
        }
        DEBUG_PREDEFINED_FILTERS_MASK_NAMES = arrayList2;
        Field[] fields2 = DescriptorKindFilter.class.getFields();
        fields2.getClass();
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (Intrinsics.areEqual(((Field) next).getType(), Integer.TYPE)) {
                arrayList4.add(next);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            Field field4 = (Field) it3.next();
            Object obj2 = field4.get(null);
            obj2.getClass();
            int intValue = ((Integer) obj2).intValue();
            if (intValue == ((-intValue) & intValue)) {
                String name2 = field4.getName();
                name2.getClass();
                descriptorKindFilter$Companion$MaskToName = new DescriptorKindFilter$Companion$MaskToName(intValue, name2);
            } else {
                descriptorKindFilter$Companion$MaskToName = null;
            }
            if (descriptorKindFilter$Companion$MaskToName != null) {
                arrayList5.add(descriptorKindFilter$Companion$MaskToName);
            }
        }
        DEBUG_MASK_BIT_NAMES = arrayList5;
    }

    public DescriptorKindFilter(List list, int i) {
        list.getClass();
        this.excludes = list;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i &= ~((DescriptorKindExclude) it.next()).getFullyExcludedDescriptorKinds();
        }
        this.kindMask = i;
    }

    public final boolean acceptsKinds(int i) {
        return (this.kindMask & i) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!DescriptorKindFilter.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        DescriptorKindFilter descriptorKindFilter = (DescriptorKindFilter) obj;
        return Intrinsics.areEqual(this.excludes, descriptorKindFilter.excludes) && this.kindMask == descriptorKindFilter.kindMask;
    }

    public final int hashCode() {
        return (this.excludes.hashCode() * 31) + this.kindMask;
    }

    public final String toString() {
        Object obj;
        Iterator it = DEBUG_PREDEFINED_FILTERS_MASK_NAMES.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((DescriptorKindFilter$Companion$MaskToName) obj).mask == this.kindMask) {
                break;
            }
        }
        DescriptorKindFilter$Companion$MaskToName descriptorKindFilter$Companion$MaskToName = (DescriptorKindFilter$Companion$MaskToName) obj;
        String str = descriptorKindFilter$Companion$MaskToName != null ? descriptorKindFilter$Companion$MaskToName.name : null;
        if (str == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = DEBUG_MASK_BIT_NAMES.iterator();
            while (it2.hasNext()) {
                DescriptorKindFilter$Companion$MaskToName descriptorKindFilter$Companion$MaskToName2 = (DescriptorKindFilter$Companion$MaskToName) it2.next();
                String str2 = acceptsKinds(descriptorKindFilter$Companion$MaskToName2.mask) ? descriptorKindFilter$Companion$MaskToName2.name : null;
                if (str2 != null) {
                    arrayList.add(str2);
                }
            }
            str = CollectionsKt.joinToString$default(arrayList, " | ", null, null, null, 62);
        }
        StringBuilder m21m = Animation.CC.m21m("DescriptorKindFilter(", str, ", ");
        m21m.append(this.excludes);
        m21m.append(')');
        return m21m.toString();
    }

    public /* synthetic */ DescriptorKindFilter(int i) {
        this(EmptyList.INSTANCE, i);
    }
}
