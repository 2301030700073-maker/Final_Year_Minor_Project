package defpackage;

import android.view.MenuItem;
import android.widget.PopupMenu;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: Qu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0464Qu implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f3083do;

    public C0464Qu(AppCompatActivity appCompatActivity) {
        this.f3083do = appCompatActivity;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        C3210kN.m7253new("WhatIsRoot", menuItem.getItemId() == R.id.menu_item_useful);
        AppCompatActivity appCompatActivity = this.f3083do;
        VJ.m2574instanceof(appCompatActivity, appCompatActivity.getString(R.string.feedbackSubmitted));
        return true;
    }
}
