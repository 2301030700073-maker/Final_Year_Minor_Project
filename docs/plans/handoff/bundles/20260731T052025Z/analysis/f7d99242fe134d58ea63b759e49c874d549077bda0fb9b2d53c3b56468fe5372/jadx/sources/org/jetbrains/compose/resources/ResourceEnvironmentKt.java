package org.jetbrains.compose.resources;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ResourceEnvironmentKt {
    public static final ResourceEnvironmentKt$DefaultComposeEnvironment$1 DefaultComposeEnvironment = new ResourceEnvironmentKt$DefaultComposeEnvironment$1();
    public static final StaticProvidableCompositionLocal LocalComposeEnvironment = new StaticProvidableCompositionLocal(new KoinJavaComponent$$ExternalSyntheticLambda0(8));
    public static final ResourceEnvironmentKt$getResourceEnvironment$1 getResourceEnvironment = ResourceEnvironmentKt$getResourceEnvironment$1.INSTANCE;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.util.Collection] */
    public static final ResourceItem getResourceItemByEnvironment(Resource resource, ResourceEnvironment resourceEnvironment) {
        resource.getClass();
        resourceEnvironment.getClass();
        List list = CollectionsKt.toList(resource.items);
        LanguageQualifier languageQualifier = resourceEnvironment.language;
        RegionQualifier regionQualifier = resourceEnvironment.region;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Set set = ((ResourceItem) obj).qualifiers;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                Iterator it = set.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual((Qualifier) it.next(), languageQualifier)) {
                        arrayList.add(obj);
                        break;
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            Set set2 = ((ResourceItem) next).qualifiers;
            if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                Iterator it3 = set2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual((Qualifier) it3.next(), regionQualifier)) {
                        arrayList2.add(next);
                        break;
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            arrayList2 = new ArrayList();
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                Object next2 = it4.next();
                Set set3 = ((ResourceItem) next2).qualifiers;
                if (!(set3 instanceof Collection) || !set3.isEmpty()) {
                    Iterator it5 = set3.iterator();
                    while (it5.hasNext()) {
                        if (((Qualifier) it5.next()) instanceof RegionQualifier) {
                            break;
                        }
                    }
                }
                arrayList2.add(next2);
            }
            if (arrayList2.isEmpty()) {
                arrayList2 = new ArrayList();
                for (Object obj2 : list) {
                    Set<Qualifier> set4 = ((ResourceItem) obj2).qualifiers;
                    if (!(set4 instanceof Collection) || !set4.isEmpty()) {
                        for (Qualifier qualifier : set4) {
                            if (!(qualifier instanceof LanguageQualifier) && !(qualifier instanceof RegionQualifier)) {
                            }
                        }
                    }
                    arrayList2.add(obj2);
                }
            }
        }
        if (arrayList2.size() == 1) {
            return (ResourceItem) CollectionsKt.first((List) arrayList2);
        }
        ThemeQualifier themeQualifier = resourceEnvironment.theme;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList2) {
            Set set5 = ((ResourceItem) obj3).qualifiers;
            if (!(set5 instanceof Collection) || !set5.isEmpty()) {
                Iterator it6 = set5.iterator();
                while (true) {
                    if (!it6.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual((Qualifier) it6.next(), themeQualifier)) {
                        arrayList3.add(obj3);
                        break;
                    }
                }
            }
        }
        if (arrayList3.isEmpty()) {
            arrayList3 = new ArrayList();
            for (Object obj4 : arrayList2) {
                Set set6 = ((ResourceItem) obj4).qualifiers;
                if (!(set6 instanceof Collection) || !set6.isEmpty()) {
                    Iterator it7 = set6.iterator();
                    while (it7.hasNext()) {
                        if (((Qualifier) it7.next()).getClass() == ThemeQualifier.class) {
                            break;
                        }
                    }
                }
                arrayList3.add(obj4);
            }
        }
        if (arrayList3.size() == 1) {
            return (ResourceItem) CollectionsKt.first((List) arrayList3);
        }
        int i = resourceEnvironment.density.dpi;
        ArrayList arrayList4 = new ArrayList();
        EnumEntriesList enumEntriesList = DensityQualifier.$ENTRIES;
        Iterator it8 = enumEntriesList.iterator();
        while (it8.hasNext()) {
            Object next3 = it8.next();
            if (((DensityQualifier) next3).dpi >= i) {
                arrayList4.add(next3);
            }
        }
        Iterator it9 = CollectionsKt.sortedWith(arrayList4, new ViewPager.AnonymousClass1(26)).iterator();
        ?? r4 = EmptyList.INSTANCE;
        while (true) {
            if (!it9.hasNext()) {
                break;
            }
            DensityQualifier densityQualifier = (DensityQualifier) it9.next();
            ArrayList arrayList5 = new ArrayList();
            for (Object obj5 : arrayList3) {
                Set set7 = ((ResourceItem) obj5).qualifiers;
                if (!(set7 instanceof Collection) || !set7.isEmpty()) {
                    Iterator it10 = set7.iterator();
                    while (true) {
                        if (!it10.hasNext()) {
                            break;
                        }
                        if (((Qualifier) it10.next()) == densityQualifier) {
                            arrayList5.add(obj5);
                            break;
                        }
                    }
                }
            }
            if (!arrayList5.isEmpty()) {
                r4 = arrayList5;
                break;
            }
            r4 = arrayList5;
        }
        if (r4.isEmpty()) {
            DensityQualifier densityQualifier2 = DensityQualifier.LDPI;
            ArrayList minus = CollectionsKt.minus(enumEntriesList, densityQualifier2);
            ArrayList arrayList6 = new ArrayList();
            Iterator it11 = minus.iterator();
            while (it11.hasNext()) {
                Object next4 = it11.next();
                if (((DensityQualifier) next4).dpi < i) {
                    arrayList6.add(next4);
                }
            }
            for (DensityQualifier densityQualifier3 : CollectionsKt.sortedWith(arrayList6, new ViewPager.AnonymousClass1(27))) {
                r4 = new ArrayList();
                for (Object obj6 : arrayList3) {
                    Set set8 = ((ResourceItem) obj6).qualifiers;
                    if (!(set8 instanceof Collection) || !set8.isEmpty()) {
                        Iterator it12 = set8.iterator();
                        while (true) {
                            if (!it12.hasNext()) {
                                break;
                            }
                            if (((Qualifier) it12.next()) == densityQualifier3) {
                                r4.add(obj6);
                                break;
                            }
                        }
                    }
                }
                if (!r4.isEmpty()) {
                    break;
                }
            }
            if (r4.isEmpty()) {
                r4 = new ArrayList();
                for (Object obj7 : arrayList3) {
                    Set set9 = ((ResourceItem) obj7).qualifiers;
                    if (!(set9 instanceof Collection) || !set9.isEmpty()) {
                        Iterator it13 = set9.iterator();
                        while (it13.hasNext()) {
                            if (((Qualifier) it13.next()) instanceof DensityQualifier) {
                                break;
                            }
                        }
                    }
                    r4.add(obj7);
                }
                if (r4.isEmpty()) {
                    r4 = new ArrayList();
                    for (Object obj8 : arrayList3) {
                        Set set10 = ((ResourceItem) obj8).qualifiers;
                        if (!(set10 instanceof Collection) || !set10.isEmpty()) {
                            Iterator it14 = set10.iterator();
                            while (true) {
                                if (!it14.hasNext()) {
                                    break;
                                }
                                if (((Qualifier) it14.next()) == densityQualifier2) {
                                    r4.add(obj8);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        List list2 = r4;
        if (list2.size() == 1) {
            return (ResourceItem) CollectionsKt.first(list2);
        }
        boolean isEmpty = list2.isEmpty();
        String str = resource.id;
        if (isEmpty) {
            Regex$$ExternalSyntheticBUOutline0.m(str, "' not found", "Resource with ID='");
            return null;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m$1("Resource with ID='", str, "' has more than one file: ", CollectionsKt.joinToString$default(list2, null, null, null, new ZipFilesKt$$ExternalSyntheticLambda0(9), 31));
        return null;
    }
}
