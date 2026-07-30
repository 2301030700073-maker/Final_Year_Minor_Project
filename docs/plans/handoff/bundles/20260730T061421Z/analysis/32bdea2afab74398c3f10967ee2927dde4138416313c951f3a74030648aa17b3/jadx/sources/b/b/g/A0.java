package b.b.g;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import b.b.f.m.C0035l;

/* loaded from: classes.dex */
public class A0 extends C0061m0 {
    public final int n;
    public final int o;
    public InterfaceC0086z0 p;
    public MenuItem q;

    public A0(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.n = 21;
            this.o = 22;
        } else {
            this.n = 22;
            this.o = 21;
        }
    }

    @Override // b.b.g.C0061m0, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i;
        C0035l c0035l;
        int pointToPosition;
        int i2;
        if (this.p != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                c0035l = (C0035l) headerViewListAdapter.getWrappedAdapter();
            } else {
                i = 0;
                c0035l = (C0035l) adapter;
            }
            b.b.f.m.r rVar = null;
            if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < c0035l.getCount()) {
                rVar = c0035l.getItem(i2);
            }
            MenuItem menuItem = this.q;
            if (menuItem != rVar) {
                b.b.f.m.o oVar = c0035l.f396a;
                if (menuItem != null) {
                    this.p.h(oVar, menuItem);
                }
                this.q = rVar;
                if (rVar != null) {
                    this.p.e(oVar, rVar);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.n) {
            if (listMenuItemView.isEnabled() && listMenuItemView.f35a.hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.o) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ((C0035l) getAdapter()).f396a.c(false);
        return true;
    }
}
