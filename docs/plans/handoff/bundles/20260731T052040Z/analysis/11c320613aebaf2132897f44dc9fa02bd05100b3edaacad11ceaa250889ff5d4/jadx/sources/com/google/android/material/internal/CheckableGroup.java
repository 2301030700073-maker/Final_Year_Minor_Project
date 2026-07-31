package com.google.android.material.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.ChipGroup;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CheckableGroup {
    public final Object checkables;
    public final Serializable checkedIds;
    public Object onCheckedStateChangeListener;
    public boolean selectionRequired;
    public boolean singleSelection;

    public CheckableGroup(Context context, String str, PriorityQueue priorityQueue, boolean z, boolean z2) {
        context.getClass();
        priorityQueue.getClass();
        this.checkables = context;
        this.checkedIds = str;
        this.onCheckedStateChangeListener = priorityQueue;
        this.singleSelection = z;
        this.selectionRequired = z2;
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
}
