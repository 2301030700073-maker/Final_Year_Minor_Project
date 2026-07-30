package defpackage;

import android.view.View;
import android.widget.AbsListView;
import androidx.appcompat.app.AlertController;

/* renamed from: v0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3835v0 implements AbsListView.OnScrollListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f15974do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ View f15975if;

    public C3835v0(View view, View view2) {
        this.f15974do = view;
        this.f15975if = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.m3228if(absListView, this.f15974do, this.f15975if);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
