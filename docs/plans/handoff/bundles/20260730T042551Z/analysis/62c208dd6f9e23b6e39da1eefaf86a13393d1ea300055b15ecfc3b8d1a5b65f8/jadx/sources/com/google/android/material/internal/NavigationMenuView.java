package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class NavigationMenuView extends RecyclerView implements Ccatch {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.view.menu.Ccatch
    /* renamed from: for */
    public final void mo3314for(Ccase ccase) {
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        u(new LinearLayoutManager(1));
    }
}
