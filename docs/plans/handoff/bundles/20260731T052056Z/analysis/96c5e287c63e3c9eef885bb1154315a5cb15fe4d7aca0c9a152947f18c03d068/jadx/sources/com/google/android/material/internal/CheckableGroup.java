package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.ChipGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$TypeAndDefaultQualifiers;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.Request;
import okio.PriorityQueue;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CheckableGroup {
    public final Object checkables;
    public final Object checkedIds;
    public Object onCheckedStateChangeListener;
    public boolean selectionRequired;
    public boolean singleSelection;

    public CheckableGroup(Annotated annotated, boolean z, Request.Builder builder, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2) {
        builder.getClass();
        annotationQualifierApplicabilityType.getClass();
        this.checkables = annotated;
        this.singleSelection = z;
        this.checkedIds = builder;
        this.onCheckedStateChangeListener = annotationQualifierApplicabilityType;
        this.selectionRequired = z2;
    }

    public static void flattenTree(Object obj, ArrayList arrayList, AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 androidLeakFixes$TEXT_LINE_POOL$apply$1$2) {
        arrayList.add(obj);
        Iterable iterable = (Iterable) androidLeakFixes$TEXT_LINE_POOL$apply$1$2.invoke(obj);
        if (iterable != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                flattenTree(it.next(), arrayList, androidLeakFixes$TEXT_LINE_POOL$apply$1$2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Iterable, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public static NullabilityQualifierWithMigrationStatus getBoundsNullability(TypeParameterDescriptor typeParameterDescriptor) {
        ?? arrayList;
        NullabilityQualifier nullabilityQualifier;
        typeParameterDescriptor.getClass();
        if (!(typeParameterDescriptor instanceof LazyJavaTypeParameterDescriptor)) {
            return null;
        }
        List<KotlinTypeMarker> upperBounds = ((AbstractTypeParameterDescriptor) typeParameterDescriptor).getUpperBounds();
        if (upperBounds.isEmpty()) {
            return null;
        }
        Iterator it = upperBounds.iterator();
        while (it.hasNext()) {
            if (!UtilsKt.isError((KotlinTypeMarker) it.next())) {
                if (!upperBounds.isEmpty()) {
                    Iterator it2 = upperBounds.iterator();
                    while (it2.hasNext()) {
                        if (getNullabilityQualifier((KotlinTypeMarker) it2.next()) != null) {
                            arrayList = upperBounds;
                            break;
                        }
                    }
                }
                if (upperBounds.isEmpty()) {
                    return null;
                }
                for (KotlinTypeMarker kotlinTypeMarker : upperBounds) {
                    kotlinTypeMarker.getClass();
                    if (KotlinTypeKt.getEnhancement((KotlinType) kotlinTypeMarker) != null) {
                        arrayList = new ArrayList();
                        for (KotlinTypeMarker kotlinTypeMarker2 : upperBounds) {
                            kotlinTypeMarker2.getClass();
                            KotlinType enhancement = KotlinTypeKt.getEnhancement((KotlinType) kotlinTypeMarker2);
                            if (enhancement != null) {
                                arrayList.add(enhancement);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                if (!UtilsKt.isNullableType((KotlinTypeMarker) it3.next())) {
                                    nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                    break;
                                }
                            }
                        }
                        nullabilityQualifier = NullabilityQualifier.NULLABLE;
                        return new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, arrayList != upperBounds);
                    }
                }
                return null;
            }
        }
        return null;
    }

    public static NullabilityQualifier getNullabilityQualifier(KotlinTypeMarker kotlinTypeMarker) {
        SimpleType asSimpleType;
        SimpleType asSimpleType2;
        kotlinTypeMarker.getClass();
        FlexibleType asFlexibleType = UtilsKt.asFlexibleType(kotlinTypeMarker);
        if (asFlexibleType == null || (asSimpleType = UtilsKt.lowerBound(asFlexibleType)) == null) {
            asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
            asSimpleType.getClass();
        }
        if (UtilsKt.isMarkedNullable(asSimpleType)) {
            return NullabilityQualifier.NULLABLE;
        }
        FlexibleType asFlexibleType2 = UtilsKt.asFlexibleType(kotlinTypeMarker);
        if (asFlexibleType2 == null || (asSimpleType2 = UtilsKt.upperBound(asFlexibleType2)) == null) {
            asSimpleType2 = UtilsKt.asSimpleType(kotlinTypeMarker);
            asSimpleType2.getClass();
        }
        if (UtilsKt.isMarkedNullable(asSimpleType2)) {
            return null;
        }
        return NullabilityQualifier.NOT_NULL;
    }

    public boolean checkInternal(MaterialCheckable materialCheckable) {
        int id = materialCheckable.getId();
        HashSet hashSet = (HashSet) this.checkedIds;
        if (hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        MaterialCheckable materialCheckable2 = (MaterialCheckable) ((HashMap) this.checkables).get(Integer.valueOf(getSingleCheckedId()));
        if (materialCheckable2 != null) {
            uncheckInternal(materialCheckable2, false);
        }
        boolean add = hashSet.add(Integer.valueOf(id));
        if (!materialCheckable.isChecked()) {
            materialCheckable.setChecked(true);
        }
        return add;
    }

    public ArrayList getCheckedIdsSortedByChildOrder(ViewGroup viewGroup) {
        HashSet hashSet = new HashSet((HashSet) this.checkedIds);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof MaterialCheckable) && hashSet.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public int getSingleCheckedId() {
        HashSet hashSet = (HashSet) this.checkedIds;
        if (!this.singleSelection || hashSet.isEmpty()) {
            return -1;
        }
        return ((Integer) hashSet.iterator().next()).intValue();
    }

    public void onCheckedStateChanged() {
        ChipGroup.AnonymousClass1 anonymousClass1 = (ChipGroup.AnonymousClass1) this.onCheckedStateChangeListener;
        if (anonymousClass1 != null) {
            new HashSet((HashSet) this.checkedIds);
            ChipGroup chipGroup = ChipGroup.this;
            ChipGroup.OnCheckedStateChangeListener onCheckedStateChangeListener = chipGroup.onCheckedStateChangeListener;
            if (onCheckedStateChangeListener != null) {
                chipGroup.checkableGroup.getCheckedIdsSortedByChildOrder(chipGroup);
                ChipGroup chipGroup2 = ChipGroup.this;
                if (chipGroup2.checkableGroup.singleSelection) {
                    chipGroup2.getCheckedChipId();
                    throw null;
                }
            }
        }
    }

    public ArrayList toIndexed(KotlinTypeMarker kotlinTypeMarker) {
        Request.Builder builder = (Request.Builder) this.checkedIds;
        JavaTypeQualifiersByElementType javaTypeQualifiersByElementType = (JavaTypeQualifiersByElementType) ((Lazy) builder.body).getValue();
        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = (AnnotationTypeQualifierResolver) ((ActivityPageBinding) builder.url).pageToolbarButtonShowOverflowMenu;
        kotlinTypeMarker.getClass();
        AbstractSignatureParts$TypeAndDefaultQualifiers abstractSignatureParts$TypeAndDefaultQualifiers = new AbstractSignatureParts$TypeAndDefaultQualifiers(kotlinTypeMarker, annotationTypeQualifierResolver.extractAndMergeDefaultQualifiers(javaTypeQualifiersByElementType, ((KotlinType) kotlinTypeMarker).getAnnotations()), null);
        AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 androidLeakFixes$TEXT_LINE_POOL$apply$1$2 = new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(14, this);
        ArrayList arrayList = new ArrayList(1);
        flattenTree(abstractSignatureParts$TypeAndDefaultQualifiers, arrayList, androidLeakFixes$TEXT_LINE_POOL$apply$1$2);
        return arrayList;
    }

    public boolean uncheckInternal(MaterialCheckable materialCheckable, boolean z) {
        int id = materialCheckable.getId();
        HashSet hashSet = (HashSet) this.checkedIds;
        if (!hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            materialCheckable.setChecked(true);
            return false;
        }
        boolean remove = hashSet.remove(Integer.valueOf(id));
        if (materialCheckable.isChecked()) {
            materialCheckable.setChecked(false);
        }
        return remove;
    }

    public CheckableGroup() {
        this.checkables = new HashMap();
        this.checkedIds = new HashSet();
    }

    public CheckableGroup(Context context, String str, PriorityQueue priorityQueue, boolean z, boolean z2) {
        priorityQueue.getClass();
        this.checkables = context;
        this.checkedIds = str;
        this.onCheckedStateChangeListener = priorityQueue;
        this.singleSelection = z;
        this.selectionRequired = z2;
    }
}
