package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.Ccase;
import defpackage.C3645ro;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements Ccase.Cif, Ccatch, AdapterView.OnItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f5380do = {R.attr.background, R.attr.divider};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f5381do;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cif
    /* renamed from: do, reason: not valid java name */
    public final boolean mo3313do(Cgoto cgoto) {
        return this.f5381do.m3348while(cgoto, null, 0);
    }

    @Override // androidx.appcompat.view.menu.Ccatch
    /* renamed from: for, reason: not valid java name */
    public final void mo3314for(Ccase ccase) {
        this.f5381do = ccase;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo3313do((Cgoto) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        int resourceId;
        int resourceId2;
        setOnItemClickListener(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5380do, i, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable((!obtainStyledAttributes.hasValue(0) || (resourceId2 = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C3645ro.m7997extends(context, resourceId2));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            setDivider((!obtainStyledAttributes.hasValue(1) || (resourceId = obtainStyledAttributes.getResourceId(1, 0)) == 0) ? obtainStyledAttributes.getDrawable(1) : C3645ro.m7997extends(context, resourceId));
        }
        obtainStyledAttributes.recycle();
    }
}
